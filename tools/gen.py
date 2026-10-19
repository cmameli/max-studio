import json, os
NAMES12=["C","C#","D","D#","E","F","F#","G","G#","A","A#","B"]
OUT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))  # cartella studio

# conteggio inlet/outlet indicativo (Max lo ricalcola al caricamento)
IO = {
 "t":(1,2),"sel":(2,2),"metro":(2,1),"counter":(4,4),"transport":(2,9),"loadbang":(1,1),
 "prepend":(1,1),"s":(1,0),"r":(0,1),"route":(1,5),"/":(2,1),"line~":(2,2),"cycle~":(2,1),
 "*~":(2,1),"throw~":(1,0),"catch~":(1,1),"noise~":(1,1),"svf~":(3,4),"unpack":(1,4),
 "mtof":(1,1),"expr":(1,1),"pack":(2,1),"saw~":(2,1),"lores~":(3,1),"buffer~":(2,2),
 "groove~":(3,2),"sig~":(1,1),"makenote":(3,2),"noteout":(3,0),"clip~":(3,1),"gate":(2,1),
 "js":(1,8),"+~":(2,1),"send~":(1,0),"receive~":(1,1),"adsr~":(5,4),"selector~":(5,1),"tri~":(2,1),"rect~":(2,1),"phasor~":(2,1),"del":(2,1),"-~":(2,1),"*":(2,1),"+":(2,1),"abs~":(1,1),"<~":(2,1),"zl":(2,2),"pak":(2,1),"switch":(3,1),"tapin~":(1,1),"tapout~":(2,2),"comb~":(5,1),"allpass~":(3,1),"onepole~":(2,1),"filtercoeff~":(3,5),"biquad~":(6,1),"poly~":(1,2),"in":(0,1),"out~":(1,0),"thispoly~":(1,2),"play~":(2,2),"in~":(1,1),"notein":(1,3),"sah~":(2,1),"tanh~":(1,1),"clip":(3,1),"f":(2,1),"i":(2,1),
}
class P:
    def __init__(s): s.boxes=[]; s.lines=[]; s.n=0
    def _id(s): s.n+=1; return "obj-%d"%s.n
    def add(s, box):
        box["id"]=s._id(); s.boxes.append({"box":box}); return box["id"]
    def obj(s, text, x, y, w=None):
        head=text.split()[0]; i,o=IO.get(head,(1,1))
        if head in ("route","sel"): o=len(text.split())     # un'uscita per argomento + quella di scarto
        return s.add({"maxclass":"newobj","text":text,"patching_rect":[x,y,w or max(40,len(text)*7+16),22],
                      "numinlets":i,"numoutlets":o,"outlettype":[""]*o})
    def msg(s, text, x, y, w=None):
        return s.add({"maxclass":"message","text":text,"patching_rect":[x,y,w or max(30,len(text)*7+12),22],
                      "numinlets":2,"numoutlets":1,"outlettype":[""]})
    def com(s, text, x, y, w=None, bold=False):
        b={"maxclass":"comment","text":text,"patching_rect":[x,y,w or len(text)*7+12,20],"numinlets":1,"numoutlets":0}
        if bold: b["fontface"]=1
        return s.add(b)
    def ui(s, cls, x, y, w, h, **kw):
        io={"umenu":(1,3),"toggle":(1,1),"button":(1,1),"number":(1,2),"flonum":(1,2),"slider":(1,1),"ezdac~":(2,0),"meter~":(1,1),
            "dial":(1,1),"matrixctrl":(1,2)}[cls]
        b={"maxclass":cls,"patching_rect":[x,y,w,h],"numinlets":io[0],"numoutlets":io[1],
           "outlettype":[""]*io[1],"parameter_enable":0}; b.update(kw); return s.add(b)
    def bp(s, name, x, y, w, h):
        return s.add({"maxclass":"bpatcher","name":name,"patching_rect":[x,y,w,h],"numinlets":0,"numoutlets":0,
                      "offset":[0.0,0.0],"viewvisibility":1,"bgmode":0,"border":1,"clickthrough":0,
                      "enablehscroll":0,"enablevscroll":0,"lockeddragscroll":0})
    def c(s, a, ao, b, bi=0):
        s.lines.append({"patchline":{"source":[a,ao],"destination":[b,bi]}})
    def save(s, fn, rect=(80,80,900,620)):
        d={"patcher":{"fileversion":1,"appversion":{"major":7,"minor":3,"revision":5,"architecture":"x64","modernui":1},
           "rect":list(rect),"boxes":s.boxes,"lines":s.lines}}
        json.dump(d, open(os.path.join(OUT,fn),"w"), indent=1)

def knob(p, label, x, y, lo, hi, w=48):
    p.com(label,x,y,w+10)
    return p.ui("flonum",x,y+18,w,22,minimum=lo,maximum=hi)
def iknob(p, label, x, y, lo, hi, w=48):
    p.com(label,x,y,w+10)
    return p.ui("number",x,y+18,w,22,minimum=lo,maximum=hi)

# ---------------- CLOCK ----------------
p=P()
p.com("CLOCK",5,2,bold=True)
tg=p.ui("toggle",10,28,30,30); p.com("play",42,34)
bpm=p.ui("number",90,32,50,22,minimum=20,maximum=300); p.com("BPM",142,32)
stepd=p.ui("number",190,32,40,22); p.com("step",190,56)
# plumbing (fuori dalla vista del bpatcher)
rplay=p.obj("r clock.play",10,220); p.c(rplay,0,tg)
rbpm=p.obj("r clock.bpm",120,220); p.c(rbpm,0,bpm)
lb=p.obj("loadbang",250,220); m120=p.msg("120",250,250); p.c(lb,0,m120); p.c(m120,0,bpm)
tii=p.obj("t i i",10,280); p.c(tg,0,tii)
sel=p.obj("sel 1",120,310); p.c(tii,1,sel); set0=p.msg("set 0",120,340); p.c(sel,0,set0)
tr=p.obj("transport",250,340); p.c(tii,0,tr)
p.c(bpm,0,p.obj("s clock.tempo",360,280)); tempo=p.msg("tempo $1",250,310); p.c(bpm,0,tempo); p.c(tempo,0,tr)
met=p.obj("metro 16n",10,340); p.c(tii,0,met)
cnt=p.obj("counter",10,380); p.c(met,0,cnt); p.c(set0,0,cnt)
sst=p.obj("s clock.step",10,420); p.c(cnt,0,sst)
md=p.obj("expr $i1%16",120,420); p.c(cnt,0,md); p.c(md,0,stepd)
srun=p.obj("s clock.running",250,280); p.c(tg,0,srun)
p.save("clock.maxpat")

# ---------------- SEQUENCER (sampler + basso; la batteria e' nel DRUM SEQ) ----------------
p=P()
p.com("SEQUENCER EUCLIDEO (sampler)",5,2,200,bold=True)
st=p.ui("number",180,2,40,22); p.com("step",222,2)
rst=p.msg("evoreset",470,2)
cols=[("hits",70),("steps",112),("rot",154),("evo",200),("ogni",226),("rot+",268),("walk",310),("pattern (hits/steps, rotazione)",356)]
for nm,x in cols: p.com(nm,x,26,200 if x==356 else 44)
tracks=[("sampler",3,8,0, 1,4,1,1)]
js=p.obj("js seq.js",10,420,120)
lb=p.obj("loadbang",600,300)
disp=[]
for i,(nm,h,stp,r,ev,every,rs,wk) in enumerate(tracks):
    y=46+i*26
    p.com(nm,5,y)
    bh=p.ui("number",70,y,40,22,minimum=0,maximum=16)
    bs=p.ui("number",112,y,40,22,minimum=1,maximum=16)
    br=p.ui("number",154,y,40,22,minimum=0,maximum=15)
    be=p.ui("toggle",200,y+2,18,18)
    bv=p.ui("number",226,y,40,22,minimum=1,maximum=64)
    bt=p.ui("number",268,y,40,22,minimum=-15,maximum=15)
    bw=p.ui("number",310,y,40,22,minimum=0,maximum=8)
    d=p.msg("",356,y,280); disp.append(d)
    px=20+i*120
    pk1=p.obj("pak i i i",px,300); p.c(bh,0,pk1,0); p.c(bs,0,pk1,1); p.c(br,0,pk1,2)
    pr1=p.obj("prepend euclid %d"%i,px,330,110); p.c(pk1,0,pr1); p.c(pr1,0,js)
    pk2=p.obj("pak i i i i",px,360); 
    for k,o in enumerate((be,bv,bt,bw)): p.c(o,0,pk2,k)
    pr2=p.obj("prepend evo %d"%i,px,390,110); p.c(pk2,0,pr2); p.c(pr2,0,js)
    # valori iniziali: prima steps, poi gli altri
    for k,(o,val) in enumerate(((bs,stp),(bh,h),(br,r),(bv,every),(bt,rs),(bw,wk),(be,ev))):
        m=p.msg(str(val),640+k*36+i*260,330+k*0); p.c(lb,0,m); p.c(m,0,o)
p.c(rst,0,js)
rs_=p.obj("r clock.step",10,250); pre=p.obj("prepend step",10,280); p.c(rs_,0,pre); p.c(pre,0,js)
rseq=p.obj("r seq",150,250); p.c(rseq,0,js)
ss=p.obj("s sampler.note",10,470); p.c(js,0,ss)
p.c(js,1,st)
rt=p.obj("route 0",450,470); p.c(js,2,rt)
for i,d in enumerate(disp): p.c(rt,i,d)
p.save("sequencer.maxpat")

# ---------------- DRUM SEQ (step sequencer stile Metropolis, 16 pattern) ----------------
p=P()
GX,CW,RH,COLS=60,26,24,32     # griglia: x iniziale, cella larga 26 e alta 24, 32 step per pagina
DVOICES=["kick","snare","hat ch","hat op","low tom","hi tom","808"]
NV=len(DVOICES)
p.com("DRUM SEQ",5,2,80,bold=True)
mt=p.ui("toggle",90,4,18,18); p.com("MIDI -> modulare",110,2,110)
p.com("len",230,2,30); ld=p.ui("dial",258,0,26,26,size=65)
ln=p.ui("number",288,2,40,22,minimum=1,maximum=64)
q16=p.msg("16",332,2); q32=p.msg("32",360,2); q64=p.msg("64",388,2)
p.com("direzione",420,2,60); dr=p.ui("umenu",480,2,90,22,items=["avanti",",","indietro",",","pendolo",",","casuale",",","browniano"])
p.com("swing %",578,2,60); sw=p.ui("flonum",634,2,46,22,minimum=50.,maximum=75.)
# numeri degli step ogni 4 (cambiano con la pagina)
labs=[p.com(str(k*4+1),GX+k*4*CW+2,28,40) for k in range(8)]
GY=48
vlab=[p.msg(nm,2,GY+v*RH+1,54) for v,nm in enumerate(DVOICES)]   # clic sul nome: seleziona la voce
gr=p.ui("matrixctrl",GX,GY,COLS*CW,NV*RH,rows=NV,columns=COLS)
SY=GY+NV*RH+4
p.com("skip",5,SY+2,55); sk=p.ui("matrixctrl",GX,SY,COLS*CW,RH,rows=1,columns=COLS)   # celle uguali alla griglia
# riga edit: sceglie lo step da modificare (una cella alla volta)
XY=SY+RH+4
p.com("edit",5,XY+2,55); es=p.ui("matrixctrl",GX,XY,COLS*CW,RH,rows=1,columns=COLS)
# editor della cella selezionata (voce dal nome a sinistra, step dalla riga edit)
EY=XY+RH+6
sel=p.msg("",5,EY+18,120)
ev=iknob(p,"vel",130,EY,1,127,40); er=iknob(p,"ratchet",174,EY,1,8,44)
epb=iknob(p,"prob %",222,EY,0,100,44)
p.com("modo",270,EY,60); em=p.ui("umenu",270,EY+18,70,22,items=["singolo",",","multi"])
erp=iknob(p,"ripeti col.",344,EY,1,8,52)
cp=p.msg("copia",410,EY+18); ps=p.msg("incolla",456,EY+18); cl=p.msg("cancella",510,EY+18)
sv=p.msg("salva",578,EY+18); lo=p.msg("ricarica",622,EY+18)
p.com("pagina",700,EY,60); pg1=p.msg("1-32",700,EY+18,40); pg2=p.msg("33-64",744,EY+18,48)
p.com("step",806,EY,40); ph=p.ui("number",806,EY+18,40,22)
# pad dei pattern
PY=EY+48
p.com("pattern",5,PY+6,55)
pads=p.ui("matrixctrl",GX,PY,16*36,30,rows=1,columns=16)
for k in range(16): p.com(str(k+1),GX+k*36+10,PY+30,24)
p.com("solo edit",GX+16*36+10,PY+6,60); eo=p.ui("toggle",GX+16*36+70,PY+8,18,18)
inf=p.msg("",GX+16*36+94,PY+6,190)
# plumbing (sotto l'interfaccia)
Y0=PY+80
js=p.obj("js dseq.js",10,Y0+270,120)
for o,name,x in ((ld,"len",10),(ln,"len",80),(dr,"dir",150),(sw,"swing",220),(eo,"only",360),
                 (ev,"vel",430),(er,"rat",500),(epb,"prob",570),(em,"mode",640),(erp,"rep",710)):
    pp=p.obj("prepend "+name,x,Y0+220,66); p.c(o,0,pp); p.c(pp,0,js)
for m_ in (q16,q32,q64):
    pp=p.obj("prepend len",780,Y0+220,66); p.c(m_,0,pp); p.c(pp,0,js)
for m_,val,x in ((pg1,0,860),(pg2,1,930)):
    t_=p.msg("setpage %d"%val,x,Y0+220); p.c(m_,0,t_); p.c(t_,0,js)
for o,name,x in ((gr,"grid",10),(sk,"skipclick",110),(pads,"pad",230),(es,"editclick",340)):
    pp=p.obj("prepend "+name,x,Y0+160,100); p.c(o,0,pp); p.c(pp,0,js)
mcp={"copia":"copy","incolla":"paste","cancella":"clear","salva":"save","ricarica":"load"}
for m_,nm in ((cp,"copia"),(ps,"incolla"),(cl,"cancella"),(sv,"salva"),(lo,"ricarica")):
    t_=p.msg(mcp[nm],340+list(mcp).index(nm)*60,Y0+190); p.c(m_,0,t_); p.c(t_,0,js)
rs_=p.obj("r clock.step",10,Y0); pre=p.obj("prepend step",10,Y0+30); p.c(rs_,0,pre); p.c(pre,0,js)
rtm=p.obj("r clock.tempo",130,Y0); pt=p.obj("prepend tempo",130,Y0+30); p.c(rtm,0,pt); p.c(pt,0,js)
rrn=p.obj("r clock.running",250,Y0); pr_=p.obj("prepend run",250,Y0+30); p.c(rrn,0,pr_); p.c(pr_,0,js)
rds=p.obj("r drumseq",400,Y0); p.c(rds,0,js)
for v,m_ in enumerate(vlab):
    t_=p.msg("voice %d"%v,10+v*70,Y0+250); p.c(m_,0,t_); p.c(t_,0,js)
# uscite
p.c(js,0,p.obj("s drums.note",10,Y0+320))
gt=p.obj("gate",120,Y0+320); p.c(mt,0,gt,0); p.c(js,1,gt,1)
mk=p.obj("makenote 100 60",120,Y0+350); p.c(gt,0,mk)
no=p.obj("noteout",120,Y0+380); p.c(mk,0,no,0); p.c(mk,1,no,1)
p.c(js,2,gr); p.c(js,4,pads); p.c(js,5,sk); p.c(js,7,es)
phs=p.obj("prepend set",230,Y0+290,70); p.c(js,3,phs); p.c(phs,0,ph)
# valori verso l'interfaccia (con set, per non rimandarli a dseq.js)
rv=p.obj("route len dir sel vel rat prob mode rep info lab swing",300,Y0+320,400); p.c(js,6,rv)
p.c(rv,10,p.obj("s seq.swing",1500,Y0+350))
for k,dst in enumerate((None,dr,sel,ev,er,epb,em,erp,inf)):
    if dst is None: continue
    sm=p.obj("prepend set",300+k*70,Y0+350,70); p.c(rv,k,sm); p.c(sm,0,dst)
lns=p.obj("prepend set",300,Y0+380,70); p.c(rv,0,lns); p.c(lns,0,ln); p.c(lns,0,ld)
rl=p.obj("route 0 1 2 3 4 5 6 7",960,Y0+350,160); p.c(rv,9,rl)
for k,lb_ in enumerate(labs):
    sm=p.obj("prepend set",960+k*70,Y0+380,70); p.c(rl,k,sm); p.c(sm,0,lb_)
# avvio: prima le dimensioni delle griglie (piu' a destra), poi il caricamento dei pattern
lb=p.obj("loadbang",600,Y0)
for txt,dst,x in (("load",js,600),("50",sw,660)):
    m=p.msg(txt,x,Y0+30); p.c(lb,0,m); p.c(m,0,dst)
for k,(txt,dst) in enumerate((("rows %d, columns %d"%(NV,COLS),gr),("rows 1, columns %d"%COLS,sk),("rows 1, columns %d"%COLS,es),("rows 1, columns 16",pads))):
    m=p.msg(txt,720+k*140,Y0+30,130); p.c(lb,0,m); p.c(m,0,dst)
p.save("drumseq.maxpat")

# ---------------- BASS SEQ (step sequencer di basso stile SH-101, 16 pattern) ----------------
p=P()
GX,CW,RH,COLS=60,26,20,32
BROWS=["B","A#","A","G#","G","F#","F","E","D#","D","C#","C","ott +","ott -","acc"]
NR=len(BROWS)
p.com("BASS SEQ",5,2,80,bold=True)
mt=p.ui("toggle",90,4,18,18); p.com("MIDI -> modulare",110,2,110)
p.com("len",230,2,30); ld=p.ui("dial",258,0,26,26,size=32)
ln=p.ui("number",288,2,40,22,minimum=1,maximum=32)
q8=p.msg("8",332,2); q16=p.msg("16",356,2); q32=p.msg("32",384,2)
p.com("direzione",420,2,60); dr=p.ui("umenu",480,2,90,22,items=["avanti",",","indietro",",","pendolo",",","casuale",",","browniano"])
p.com("ottava",580,2,46); bo=p.ui("number",626,2,36,22,minimum=0,maximum=6)
p.com("trasp",668,2,40); tp=p.ui("number",706,2,40,22,minimum=-24,maximum=24)
p.com("gate %",752,2,46); gp=p.ui("number",798,2,40,22,minimum=5,maximum=100)
p.com("swing: dalla batteria",846,2,140)
for k in range(0,COLS,4): p.com(str(k+1),GX+k*CW+2,28,40)
GY=48
for r,nm in enumerate(BROWS): p.com(nm,5,GY+r*RH+1,55)
gr=p.ui("matrixctrl",GX,GY,COLS*CW,NR*RH,rows=NR,columns=COLS)
SY=GY+NR*RH+4
p.com("skip",5,SY+1,55); sk=p.ui("matrixctrl",GX,SY,COLS*CW,RH,rows=1,columns=COLS)
XY=SY+RH+4
p.com("edit",5,XY+1,55); es=p.ui("matrixctrl",GX,XY,COLS*CW,RH,rows=1,columns=COLS)
# editor dello step selezionato
EY=XY+RH+6
sel=p.msg("",5,EY+18,150)
ev=iknob(p,"vel",160,EY,1,127,40); ed=iknob(p,"durata (step)",204,EY,1,8,44)
p.com("step",260,EY,40); ph=p.ui("number",260,EY+18,40,22)
cp=p.msg("copia",310,EY+18); ps=p.msg("incolla",356,EY+18); cl=p.msg("cancella",410,EY+18)
sv=p.msg("salva",478,EY+18); lo=p.msg("ricarica",522,EY+18)
p.com("genera:",590,EY,50)
grt=p.ui("umenu",590,EY+18,50,22,items=[x for pair in [(n,",") for n in NAMES12] for x in pair][:-1])
gsc=p.ui("umenu",644,EY+18,90,22,items=["minore",",","maggiore",",","dorica",",","frigia",",","penta min",",","blues",",","min armonica"])
gen_=p.msg("genera",738,EY+18)
# pad dei pattern
PY=EY+48
p.com("pattern",5,PY+6,55)
pads=p.ui("matrixctrl",GX,PY,16*36,30,rows=1,columns=16)
for k in range(16): p.com(str(k+1),GX+k*36+10,PY+30,24)
p.com("solo edit",GX+16*36+10,PY+6,60); eo=p.ui("toggle",GX+16*36+70,PY+8,18,18)
inf=p.msg("",GX+16*36+94,PY+6,190)
# plumbing (sotto l'interfaccia)
Y0=PY+80
js=p.obj("js bseq.js",10,Y0+270,120)
for o,name,x in ((ld,"len",10),(ln,"len",80),(dr,"dir",150),(bo,"baseoct",220),(tp,"transp",290),(gp,"gate",360),(eo,"only",430),(ev,"vel",500),(ed,"dur",570)):
    pp=p.obj("prepend "+name,x,Y0+220,66); p.c(o,0,pp); p.c(pp,0,js)
for m_ in (q8,q16,q32):
    pp=p.obj("prepend len",640,Y0+220,66); p.c(m_,0,pp); p.c(pp,0,js)
for o,name,x in ((gr,"grid",10),(sk,"skipclick",110),(pads,"pad",230),(es,"editclick",340)):
    pp=p.obj("prepend "+name,x,Y0+160,100); p.c(o,0,pp); p.c(pp,0,js)
mcp={"copia":"copy","incolla":"paste","cancella":"clear","salva":"save","ricarica":"load"}
for k_,(m_,nm) in enumerate(((cp,"copia"),(ps,"incolla"),(cl,"cancella"),(sv,"salva"),(lo,"ricarica"))):
    t_=p.msg(mcp[nm],460+k_*60,Y0+160); p.c(m_,0,t_); p.c(t_,0,js)
# genera: root e scala dai menu, il pulsante fa partire la lista
gk=p.obj("pak i i",780,Y0+130); p.c(grt,0,gk,0); p.c(gsc,0,gk,1)
greg=p.obj("zl reg",860,Y0+160); p.c(gk,0,greg,1); p.c(gen_,0,greg,0)   # il pulsante fa uscire la coppia memorizzata
gpre=p.obj("prepend genera",860,Y0+190,100); p.c(greg,0,gpre); p.c(gpre,0,js)
rs_=p.obj("r clock.step",10,Y0); pre=p.obj("prepend step",10,Y0+30); p.c(rs_,0,pre); p.c(pre,0,js)
rtm=p.obj("r clock.tempo",130,Y0); pt=p.obj("prepend tempo",130,Y0+30); p.c(rtm,0,pt); p.c(pt,0,js)
rrn=p.obj("r clock.running",250,Y0); pr_=p.obj("prepend run",250,Y0+30); p.c(rrn,0,pr_); p.c(pr_,0,js)
rsw=p.obj("r seq.swing",370,Y0); psw=p.obj("prepend swing",370,Y0+30); p.c(rsw,0,psw); p.c(psw,0,js)
rbs=p.obj("r bassseq",490,Y0); p.c(rbs,0,js)
# uscite
p.c(js,0,p.obj("s bass.note",10,Y0+320))
gt=p.obj("gate",120,Y0+320); p.c(mt,0,gt,0); p.c(js,1,gt,1)
mu=p.obj("unpack i i f",120,Y0+350,90); p.c(gt,0,mu)
mk=p.obj("makenote 100 100",120,Y0+380,110); p.c(mu,0,mk,0); p.c(mu,1,mk,1); p.c(mu,2,mk,2)
no=p.obj("noteout 2",120,Y0+410); p.c(mk,0,no,0); p.c(mk,1,no,1)
p.c(js,2,gr); p.c(js,4,pads); p.c(js,5,sk); p.c(js,7,es)
phs=p.obj("prepend set",230,Y0+290,70); p.c(js,3,phs); p.c(phs,0,ph)
rv=p.obj("route len dir sel vel dur info",300,Y0+320,250); p.c(js,6,rv)
for k,dst in enumerate((None,dr,sel,ev,ed,inf)):
    if dst is None: continue
    sm=p.obj("prepend set",300+k*70,Y0+350,70); p.c(rv,k,sm); p.c(sm,0,dst)
lns=p.obj("prepend set",300,Y0+380,70); p.c(rv,0,lns); p.c(lns,0,ln); p.c(lns,0,ld)
# avvio: prima le dimensioni delle griglie (piu' a destra), poi i valori globali, poi il caricamento dei pattern
lb=p.obj("loadbang",600,Y0)
for txt,dst,x in (("load",js,600),("2",bo,660),("0",tp,700),("60",gp,740),("0",grt,780),("0",gsc,820)):
    m=p.msg(txt,x,Y0+30); p.c(lb,0,m); p.c(m,0,dst)
for k,(txt,dst) in enumerate((("rows %d, columns %d"%(NR,COLS),gr),("rows 1, columns %d"%COLS,sk),("rows 1, columns %d"%COLS,es),("rows 1, columns 16",pads))):
    m=p.msg(txt,880+k*140,Y0+30,130); p.c(lb,0,m); p.c(m,0,dst)
p.save("bassseq.maxpat")

# ---------------- DRUMS ----------------
p=P()
p.com("DRUMS",5,2,bold=True); p.com("generatore dei suoni: clicca per provare le voci",60,2,300)
names=["K","S","CH","OH","LT","HT","808"]; tests=[]
for i,nm in enumerate(names):
    b=p.msg("%d 100"%i,10+i*44,24,40); tests.append(b); p.com(nm,10+i*44,44,40)
t808=knob(p,"808 Hz",5,62,30.,80.,48); d808=knob(p,"808 dec",60,62,200.,4000.,52)
rd=p.obj("r drums.note",10,220); rt=p.obj("route 0 1 2 3 4 5 6",10,250,240); p.c(rd,0,rt)
for b in tests: p.c(b,0,rt)
def env_sq(p, inlet_from, outlet_idx, msgtext, x, y):
    d=p.obj("/ 127.",x,y); p.c(inlet_from,outlet_idx,d)
    m=p.msg(msgtext,x,y+30); p.c(d,0,m)
    l=p.obj("line~",x,y+60); p.c(m,0,l)
    sq=p.obj("*~",x,y+90); p.c(l,0,sq,0); p.c(l,0,sq,1)
    return sq, l
dsum=p.obj("*~ 1",10,600); dsend=p.obj("send~ bus.drums",10,630); p.c(dsum,0,dsend)
# kick
ktb=p.obj("t f b",10,290); p.c(rt,0,ktb)
kp=p.msg("150, 45 60",80,320); p.c(ktb,1,kp); kl=p.obj("line~",80,350); p.c(kp,0,kl)
kc=p.obj("cycle~",80,380); p.c(kl,0,kc)
ksq,_=env_sq(p,ktb,0,"$1, 0 400",10,320)
kv=p.obj("*~",10,450); p.c(kc,0,kv,0); p.c(ksq,0,kv,1)
p.c(kv,0,dsum)
# snare
ssq,_=env_sq(p,rt,1,"$1, 0 180",200,290)
sn=p.obj("noise~",280,290); sf=p.obj("svf~ 1800 0.3",280,320); p.c(sn,0,sf)
st_=p.obj("cycle~ 185",380,320)
stone=p.obj("*~ 0.4",380,350); p.c(st_,0,stone)
sv=p.obj("*~",200,420); p.c(sf,2,sv,0); p.c(stone,0,sv,0); p.c(ssq,0,sv,1)
p.c(sv,0,dsum)
# hats
hn=p.obj("noise~",480,290); hf=p.obj("svf~ 7000 0.2",480,320); p.c(hn,0,hf)
chsq,_=env_sq(p,rt,2,"$1, 0 50",480,360)
ch=p.obj("*~ 0.5",480,490); chv=p.obj("*~",480,460); p.c(hf,1,chv,0); p.c(chsq,0,chv,1); p.c(chv,0,ch)
p.c(ch,0,dsum)
ohsq,ohl=env_sq(p,rt,3,"$1, 0 350",640,360)
choke=p.msg("0 5",620,330); p.c(rt,2,choke); p.c(choke,0,ohl)
ohv=p.obj("*~",640,460); p.c(hf,1,ohv,0); p.c(ohsq,0,ohv,1)
oh=p.obj("*~ 0.5",640,490); p.c(ohv,0,oh)
p.c(oh,0,dsum)
# tom: sinusoide con caduta di pitch, come il kick ma piu' acuta
for k,(f0,f1,pt_,dec) in enumerate(((170,105,120,450),(280,175,100,350))):
    x=800+k*160
    tb=p.obj("t f b",x,290); p.c(rt,4+k,tb)
    tp=p.msg("%d, %d %d"%(f0,f1,pt_),x+70,320); p.c(tb,1,tp); tl=p.obj("line~",x+70,350); p.c(tp,0,tl)
    tc=p.obj("cycle~",x+70,380); p.c(tl,0,tc)
    tsq,_=env_sq(p,tb,0,"$1, 0 %d"%dec,x,320)
    tv=p.obj("*~",x,450); p.c(tc,0,tv,0); p.c(tsq,0,tv,1)
    tg=p.obj("*~ 0.6",x,480); p.c(tv,0,tg); p.c(tg,0,dsum)
# 808: sinusoide lunga, caduta di pitch dal 2.5x della nota, saturazione morbida
x=1130
btb=p.obj("t f b",x,290); p.c(rt,6,btb)
bf=p.obj("f 48.",x+70,320); p.c(btb,1,bf); p.c(t808,0,bf,1)
btf=p.obj("t f f",x+70,350); p.c(bf,0,btf)
bm=p.obj("* 2.5",x+150,380); p.c(btf,1,bm)
bpk=p.obj("pack f f",x+70,410); p.c(btf,0,bpk,0); p.c(bm,0,bpk,1)
bpm_=p.msg("$2, $1 90",x+70,440); p.c(bpk,0,bpm_)
bl=p.obj("line~",x+70,470); p.c(bpm_,0,bl); bc=p.obj("cycle~",x+70,500); p.c(bl,0,bc)
bd=p.obj("/ 127.",x,320); p.c(btb,0,bd)
bdp=p.obj("pack f 1500",x,350); p.c(bd,0,bdp,0); p.c(d808,0,bdp,1)
bem=p.msg("$1, 0 $2",x,380); p.c(bdp,0,bem)
bel=p.obj("line~",x,410); p.c(bem,0,bel)
bsq=p.obj("*~",x,440); p.c(bel,0,bsq,0); p.c(bel,0,bsq,1)
bv=p.obj("*~",x,530); p.c(bc,0,bv,0); p.c(bsq,0,bv,1)
bdr=p.obj("*~ 1.6",x,560); p.c(bv,0,bdr)
bth=p.obj("tanh~",x,590); p.c(bdr,0,bth)
bg=p.obj("*~ 0.7",x,620); p.c(bth,0,bg); p.c(bg,0,dsum)
lb=p.obj("loadbang",1300,220)
for val,o,xx in (("48",t808,1300),("1500",d808,1340)):
    m=p.msg(val,xx,250); p.c(lb,0,m); p.c(m,0,o)
p.save("drums.maxpat",(80,80,900,620))

# ---------------- BASS (mono synth stile SH-101) ----------------
p=P()
def mn(label,x,y,items,w=60):
    p.com(label,x,y,w+6)
    it=[]
    for k,v in enumerate(items):
        if k: it.append(",")
        it.append(v)
    return p.ui("umenu",x,y+18,w,22,items=it)
p.com("BASS - stile SH-101",5,2,150,bold=True)
p.com("(gate ms: solo se il sequencer non manda la durata)",640,106,290)
t1=p.msg("36 100 0 0 0",160,2,86); t2=p.msg("43 100 1 0 0",250,2,86); t3=p.msg("36 127 0 1 0",340,2,86)
p.com("prova: nota / legato / accento",430,2,200)
# riga 1: VCO + VCF
oc=mn("ottava",5,22,["16'","8'","4'"],46)
sawl=knob(p,"saw",56,22,0.,1.,40); pull=knob(p,"pulse",100,22,0.,1.,40); pw=knob(p,"pw",144,22,0.5,0.95,40)
subm=mn("sub",188,22,["-1 ott","-2 ott","-2 pls"],56); subl=knob(p,"sub lvl",248,22,0.,1.,40); nzl=knob(p,"noise",292,22,0.,1.,40)
cut=knob(p,"cutoff",345,22,20.,16000.,52); res=knob(p,"reso",401,22,0.,0.98,40); eam=knob(p,"env amt",445,22,-8000.,8000.,52)
ktr=knob(p,"key trk",501,22,0.,1.,40); drv=knob(p,"drive",545,22,1.,8.,40); lev=knob(p,"level",589,22,0.,1.,40)
# riga 2: ENV + LFO
att=knob(p,"att",5,64,1.,3000.,44); dec=knob(p,"dec",53,64,1.,3000.,44); sus=knob(p,"sus",101,64,0.,1.,40); rel=knob(p,"rel",145,64,1.,4000.,44)
gt=knob(p,"gate ms",193,64,5.,2000.,48); vca=mn("vca",245,64,["env","gate"],50)
shp=mn("lfo",300,64,["tri","square","random","noise"],62); rate=knob(p,"rate Hz",366,64,0.05,30.,46)
p.com("sync",416,64); sy=p.ui("toggle",418,84,20,20)
dvm=mn("div",440,64,["4 bars","2 bars","1 bar","1/2","1/4","1/8","1/16","1/4T","1/8T","1/16T"],62)
vib=knob(p,"vibrato",506,64,0.,1.,40); lvcf=knob(p,"lfo>vcf",550,64,0.,6000.,48); pwmd=knob(p,"pwm",602,64,0.,0.45,40)
# riga 3: portamento, accento, preset
por=knob(p,"porta ms",5,106,0.,1000.,48); pmd=mn("porta",57,106,["legato","sempre"],60); acc=knob(p,"accento",121,106,0.,6000.,48)
p.com("preset",180,106,50)
pre_acid=p.msg("acid",180,124); pre_sub=p.msg("sub",222,124); pre_pluck=p.msg("pluck",256,124); pre_hoover=p.msg("hoover",300,124)
# ---- valori iniziali (fuori dalla vista)
lb=p.obj("loadbang",900,200)
INIT=[(oc,"1"),(sawl,"1"),(pull,"0"),(pw,"0.5"),(subm,"0"),(subl,"0.5"),(nzl,"0"),(cut,"600"),(res,"0.4"),(eam,"2500"),(ktr,"0.3"),(drv,"1.5"),(lev,"0.6"),
      (att,"2"),(dec,"250"),(sus,"0.2"),(rel,"120"),(gt,"110"),(vca,"0"),(shp,"0"),(rate,"4"),(sy,"0"),(dvm,"5"),(vib,"0"),(lvcf,"0"),(pwmd,"0"),(por,"60"),(pmd,"0"),(acc,"2500")]
for k,(o,val) in enumerate(INIT):
    m=p.msg(val,900+k*40,230); p.c(lb,0,m); p.c(m,0,o)
# la tabella delle divisioni va piu' a destra: arriva prima del valore del menu
ql=p.msg("16 8 4 2 1 0.5 0.25 0.666667 0.333333 0.166667",900+len(INIT)*40+20,230,330); p.c(lb,0,ql)
# ---- preset
KN={"oc":oc,"saw":sawl,"pul":pull,"pw":pw,"subm":subm,"sub":subl,"nz":nzl,"cut":cut,"res":res,"eam":eam,"ktr":ktr,"drv":drv,
    "att":att,"dec":dec,"sus":sus,"rel":rel,"gt":gt,"vca":vca,"shp":shp,"rate":rate,"sy":sy,"vib":vib,"lvcf":lvcf,"pwmd":pwmd,"por":por,"pmd":pmd,"acc":acc}
PRESETS=[(pre_acid,{"oc":"1","saw":"1","pul":"0","sub":"0.3","nz":"0","cut":"300","res":"0.85","eam":"3500","ktr":"0.2","drv":"3","att":"2","dec":"180","sus":"0","rel":"80","gt":"100","vca":"0","vib":"0","lvcf":"0","pwmd":"0","por":"70","pmd":"0","acc":"3500"}),
         (pre_sub,{"oc":"0","saw":"0.3","pul":"0","subm":"0","sub":"1","nz":"0","cut":"250","res":"0.1","eam":"800","ktr":"0.5","drv":"1.5","att":"3","dec":"400","sus":"0.6","rel":"200","gt":"300","vca":"0","vib":"0","lvcf":"0","pwmd":"0","por":"0","acc":"1000"}),
         (pre_pluck,{"oc":"1","saw":"0.8","pul":"0.6","pw":"0.5","sub":"0.4","nz":"0","cut":"500","res":"0.5","eam":"4500","ktr":"0.4","drv":"1.5","att":"1","dec":"120","sus":"0","rel":"60","gt":"60","vca":"0","vib":"0","lvcf":"0","pwmd":"0","por":"0","acc":"2500"}),
         (pre_hoover,{"oc":"1","saw":"1","pul":"0.8","pw":"0.5","pwmd":"0.4","sub":"0.6","nz":"0.05","cut":"1500","res":"0.3","eam":"2000","ktr":"0.3","drv":"2","att":"20","dec":"500","sus":"0.7","rel":"300","gt":"400","vca":"0","shp":"0","rate":"5","sy":"0","vib":"0.15","lvcf":"300","por":"120","pmd":"1","acc":"1500"})]
for pi,(b_,vals) in enumerate(PRESETS):
    for k,(key,val) in enumerate(vals.items()):
        m=p.msg(val,900+pi*40,270+k*22); p.c(b_,0,m); p.c(m,0,KN[key])
# ---- ingresso note: "nota vel legato accento"
rb=p.obj("r bass.note",10,200); up=p.obj("unpack i i i i f",10,230,150); p.c(rb,0,up)
for t_ in (t1,t2,t3): p.c(t_,0,up)
# durata del gate: dal sequencer (quinto numero, in ms) oppure dal knob se il sequencer manda 0
duk=p.obj("pak f f",700,260); p.c(up,4,duk,0); p.c(gt,0,duk,1)
due=p.obj("expr ($f1>0)*$f1+($f1<=0)*$f2",700,290,180); p.c(duk,0,due)
# ampiezza = vel/127, +30% con l'accento (vel arriva dopo l'accento: pak esce con i valori giusti)
ampk=p.obj("pak f i",200,260); p.c(up,1,ampk,0); p.c(up,3,ampk,1)
ampe=p.obj("expr ($f1/127.)*(1.+$i2*0.3)",200,290,200); p.c(ampk,0,ampe)
ampc=p.obj("clip 0. 1.",200,320); p.c(ampe,0,ampc)
ampf=p.obj("f",200,350); p.c(ampc,0,ampf,1)
# apertura del filtro = env amt + accento * accent amt
eak=p.obj("pak f i f",420,260,90); p.c(eam,0,eak,0); p.c(up,3,eak,1); p.c(acc,0,eak,2)
eae=p.obj("expr $f1+$i2*$f3",420,290,120); p.c(eak,0,eae)
# tempo di glide: porta se la nota e' legata o se il portamento e' "sempre", altrimenti 1 ms
glk=p.obj("pak i i f",560,260,80); p.c(up,2,glk,0); p.c(pmd,0,glk,1); p.c(por,0,glk,2)
gle=p.obj("expr ($i1+$i2>0)*$f3+1.",560,290,160); p.c(glk,0,gle)
# la nota: prima l'altezza, poi il gate, poi (se staccata) l'inviluppo
tn=p.obj("t b b i",10,260); p.c(up,0,tn)
octe=p.obj("expr ($i1-1)*12",120,230,100); p.c(oc,0,octe)
add=p.obj("+ 0",10,290); p.c(tn,2,add,0); p.c(octe,0,add,1)
mf=p.obj("mtof",10,320); p.c(add,0,mf)
pk=p.obj("pack f f",10,350); p.c(mf,0,pk,0); p.c(gle,0,pk,1)
fl=p.obj("line~",10,380); p.c(pk,0,fl)
dl=p.obj("del 110",120,350); p.c(tn,1,dl,0); p.c(due,0,dl,1)
off=p.msg("0",120,380); p.c(dl,0,off)
sli=p.obj("i",200,380); p.c(up,2,sli,1); p.c(tn,0,sli,0)
sel0=p.obj("sel 0",200,410); p.c(sli,0,sel0)
p.c(sel0,0,ampf,0)
env=p.obj("adsr~ 2 250 0.2 120",200,470,150); p.c(ampf,0,env,0); p.c(off,0,env,0)
p.c(att,0,env,1); p.c(dec,0,env,2); p.c(sus,0,env,3); p.c(rel,0,env,4)
genv=p.obj("adsr~ 1 0 1 8",370,470,100); p.c(ampf,0,genv,0); p.c(off,0,genv,0)
vcas=p.obj("+ 1",370,420); p.c(vca,0,vcas)
vsel=p.obj("selector~ 2 1",200,510,110); p.c(vcas,0,vsel,0); p.c(env,0,vsel,1); p.c(genv,0,vsel,2)
# ---- LFO: fase libera o sincronizzata ai BPM, riallineata allo start
zl=p.obj("zl lookup",700,330); p.c(ql,0,zl,1); p.c(dvm,0,zl,0)
rt=p.obj("r clock.tempo",820,330)
pkz=p.obj("pak 120. 1.",760,370); p.c(rt,0,pkz,0); p.c(zl,0,pkz,1)
hz=p.obj("expr $f1/(60.*$f2)",760,400,140); p.c(pkz,0,hz)
tbi=p.obj("t b i",640,330); p.c(sy,0,tbi)
ad1=p.obj("+ 1",640,360); p.c(tbi,1,ad1)
sw=p.obj("switch 2 1",640,440); p.c(ad1,0,sw,0); p.c(rate,0,sw,1); p.c(hz,0,sw,2)
p.c(tbi,0,rate); p.c(tbi,0,pkz)
ph=p.obj("phasor~",640,480); p.c(sw,0,ph,0)
rr=p.obj("r clock.running",860,440); s1=p.obj("sel 1",860,470); p.c(rr,0,s1); z0=p.msg("0",860,500); p.c(s1,0,z0); p.c(z0,0,ph,1)
tx2=p.obj("*~ 2",640,520); p.c(ph,0,tx2); tm1=p.obj("-~ 1",640,550); p.c(tx2,0,tm1)
tab=p.obj("abs~",640,580); p.c(tm1,0,tab); ta2=p.obj("*~ 2",640,610); p.c(tab,0,ta2); tri=p.obj("-~ 1",640,640); p.c(ta2,0,tri)
lt=p.obj("<~ 0.5",720,520); p.c(ph,0,lt); q2=p.obj("*~ 2",720,550); p.c(lt,0,q2); sq=p.obj("-~ 1",720,580); p.c(q2,0,sq)
nz=p.obj("noise~",800,520)
sh=p.obj("sah~ 0.5",800,560); p.c(nz,0,sh,0); p.c(ph,0,sh,1)
shp1=p.obj("+ 1",560,620); p.c(shp,0,shp1)
lsel=p.obj("selector~ 4 1",560,680,120); p.c(shp1,0,lsel,0); p.c(tri,0,lsel,1); p.c(sq,0,lsel,2); p.c(sh,0,lsel,3); p.c(nz,0,lsel,4)
# ---- VCO: frequenza con vibrato, saw + pulse (PWM) + sub + noise
vm=p.obj("*~ 0",10,420); p.c(lsel,0,vm,0); p.c(vib,0,vm,1)
vm2=p.obj("*~ 0.06",10,450); p.c(vm,0,vm2); vp=p.obj("+~ 1",10,480); p.c(vm2,0,vp)
f=p.obj("*~",10,510); p.c(fl,0,f,0); p.c(vp,0,f,1)
saw=p.obj("saw~",10,560); p.c(f,0,saw)
pm=p.obj("*~ 0",120,480); p.c(lsel,0,pm,0); p.c(pwmd,0,pm,1)
pwa=p.obj("+~ 0.5",120,510); p.c(pm,0,pwa,0); p.c(pw,0,pwa,1)
pwc=p.obj("clip~ 0.05 0.95",120,540,110); p.c(pwa,0,pwc)
pul=p.obj("rect~",120,570); p.c(f,0,pul,0); p.c(pwc,0,pul,1)
f2=p.obj("*~ 0.5",240,540); p.c(f,0,f2); sb1=p.obj("rect~",240,570); p.c(f2,0,sb1)
f4=p.obj("*~ 0.25",310,540); p.c(f,0,f4); sb2=p.obj("rect~",310,570); p.c(f4,0,sb2)
pw25=p.obj("sig~ 0.25",450,540); sb3=p.obj("rect~",380,570); p.c(f4,0,sb3,0); p.c(pw25,0,sb3,1)
subs=p.obj("+ 1",240,600); p.c(subm,0,subs)
ssel=p.obj("selector~ 3 1",240,630,110); p.c(subs,0,ssel,0); p.c(sb1,0,ssel,1); p.c(sb2,0,ssel,2); p.c(sb3,0,ssel,3)
onz=p.obj("noise~",480,600)
mix=p.obj("*~ 1",10,700)
for src,lvl,x in ((saw,sawl,10),(pul,pull,120),(ssel,subl,240),(onz,nzl,480)):
    g=p.obj("*~ 0",x,670); p.c(src,0,g,0); p.c(lvl,0,g,1); p.c(g,0,mix)
# ---- VCF 24 dB: due lores~ in cascata; cutoff = base + env*amt + lfo + key tracking
cs=p.obj("sig~",560,740); p.c(cut,0,cs)
fe=p.obj("*~ 2500",200,560); p.c(env,0,fe,0); p.c(eae,0,fe,1)
lf=p.obj("*~ 0",560,770); p.c(lsel,0,lf,0); p.c(lvcf,0,lf,1)
kt1=p.obj("-~ 130.81",660,740); p.c(f,0,kt1); kt2=p.obj("*~ 0",660,770); p.c(kt1,0,kt2,0); p.c(ktr,0,kt2,1)
csum=p.obj("*~ 1",560,800); p.c(cs,0,csum); p.c(fe,0,csum); p.c(lf,0,csum); p.c(kt2,0,csum)
cc=p.obj("clip~ 20 16000",560,830); p.c(csum,0,cc)
r1=p.obj("* 0.6",760,800); p.c(res,0,r1)
lp1=p.obj("lores~ 600 0.3",10,740); p.c(mix,0,lp1,0); p.c(cc,0,lp1,1); p.c(r1,0,lp1,2)
lp2=p.obj("lores~ 600 0.4",10,770); p.c(lp1,0,lp2,0); p.c(cc,0,lp2,1); p.c(res,0,lp2,2)
dg=p.obj("*~ 1.5",10,800); p.c(lp2,0,dg,0); p.c(drv,0,dg,1)
th=p.obj("tanh~",10,830); p.c(dg,0,th)
# ---- VCA
va=p.obj("*~",10,860); p.c(th,0,va,0); p.c(vsel,0,va,1)
out=p.obj("*~ 0.6",10,890); p.c(va,0,out,0); p.c(lev,0,out,1)
p.c(out,0,p.obj("send~ bus.bass",10,920))
p.save("bass.maxpat")

# ---------------- VOCE DEL GRANO (usata da poly~) ----------------
p=P()
i1=p.obj("in 1",10,10)
up=p.obj("unpack f f f f f",10,40,150); p.c(i1,0,up)
# posizione: da inizio a fine nel tempo del grano
pk=p.obj("pack f f f",10,80); p.c(up,0,pk,0); p.c(up,1,pk,1); p.c(up,2,pk,2)
pm=p.msg("$1, $2 $3",10,110); p.c(pk,0,pm)
pl=p.obj("line~",10,140); p.c(pm,0,pl)
pl_=p.obj("play~ samp1",10,170,90); p.c(pl,0,pl_)
# finestra di Hann sulla durata del grano
tfb=p.obj("t f b f",200,80); p.c(up,2,tfb)
dl=p.obj("del",300,120); p.c(tfb,2,dl,1); p.c(tfb,1,dl,0)
one=p.msg("1",260,150); p.c(tfb,1,one)
zero=p.msg("0",300,150); p.c(dl,0,zero)
tp=p.obj("thispoly~",280,180); p.c(one,0,tp); p.c(zero,0,tp)
wm=p.msg("0, 1 $1",200,120); p.c(tfb,0,wm)
wl=p.obj("line~",200,150); p.c(wm,0,wl)
wc=p.obj("cycle~ 0",200,180); p.c(wl,0,wc,1)
wn=p.obj("*~ -0.5",200,210); p.c(wc,0,wn); wp=p.obj("+~ 0.5",200,240); p.c(wn,0,wp)
g=p.obj("*~",10,270); p.c(pl_,0,g,0); p.c(wp,0,g,1)
ga=p.obj("*~ 0.5",10,300); p.c(g,0,ga,0); p.c(up,4,ga,1)
# pan a potenza costante
eL=p.obj("expr cos($f1*1.570796)",150,300,150); eR=p.obj("expr sin($f1*1.570796)",320,300,150)
p.c(up,3,eL); p.c(up,3,eR)
gL=p.obj("*~",10,340); gR=p.obj("*~",100,340); p.c(ga,0,gL,0); p.c(ga,0,gR,0); p.c(eL,0,gL,1); p.c(eR,0,gR,1)
p.c(gL,0,p.obj("out~ 1",10,380)); p.c(gR,0,p.obj("out~ 2",100,380))
p.save("grainvoice.maxpat")

# ---------------- SAMPLER GRANULARE ----------------
p=P()
p.com("SAMPLER GRANULARE",5,2,140,bold=True)
ld=p.msg("carica",150,2)
drop=p.add({"maxclass":"dropfile","patching_rect":[205,2,130,20],"numinlets":1,"numoutlets":2,"outlettype":["",""]})
p.com("<- o trascina qui",205,2,130)
rn=p.ui("toggle",345,4,18,18); p.com("run",365,2)
sq=p.ui("toggle",400,4,18,18); p.com("seq",420,2)
wf=p.add({"maxclass":"waveform~","patching_rect":[5,26,455,48],"numinlets":5,"numoutlets":6,"outlettype":["float","float","float","float","list",""]})
info=p.msg("",5,124,250)
KN={}
ks=[("pos",0.,1.,"pos","0.3"),("spread",0.,1.,"spr","0.2"),("size ms",2.,2000.,"size","80"),("densita",0.5,400.,"dens","25"),
    ("pitch",-36.,36.,"pitch","0"),("p.rand",0.,24.,"prnd","0"),("pan",0.,1.,"pan","0.6"),("jitter",0.,0.95,"jit","0.3"),
    ("burst",20.,5000.,"burst","400"),("level",0.,1.,"lvl","0.5")]
js=p.obj("js grain.js",10,520,100)
lb=p.obj("loadbang",700,300)
for k,(lab,lo,hi,msgname,val) in enumerate(ks):
    o=knob(p,lab,5+k*46,80,lo,hi,42); KN[msgname]=o
    pp=p.obj("prepend "+msgname,10+k*80,480,75); p.c(o,0,pp); p.c(pp,0,js)
    m=p.msg(val,700+k*36,330); p.c(lb,0,m); p.c(m,0,o)
for o,name,val,x in ((rn,"run","1",1100),(sq,"seq","0",1140)):
    pp=p.obj("prepend "+name,x-300,480,75); p.c(o,0,pp); p.c(pp,0,js)
    m=p.msg(val,x,330); p.c(lb,0,m); p.c(m,0,o)
# preset rapidi
PRESETS=[("freeze",260,{"spr":"0.02","size":"120","dens":"60","pitch":"0","prnd":"0","pan":"0.6","jit":"0.5","seq":"0"}),
         ("sciame",318,{"spr":"0.8","size":"30","dens":"150","pitch":"0","prnd":"12","pan":"1","jit":"0.3","seq":"0"}),
         ("ritmico",376,{"spr":"0.3","size":"40","dens":"80","pitch":"0","prnd":"0","pan":"0.7","jit":"0.2","burst":"150","seq":"1"})]
for pi,(nm,x,vals) in enumerate(PRESETS):
    b_=p.msg(nm,x,124)
    for k,(key,val) in enumerate(vals.items()):
        m=p.msg(val,1200+pi*420+k*45,400); p.c(b_,0,m)
        p.c(m,0,sq if key=="seq" else KN[key])
buf=p.obj("buffer~ samp1",10,300,110)
rp=p.msg("replace",10,270); p.c(ld,0,rp); p.c(rp,0,buf)
pr=p.obj("prepend replace",150,270,100); p.c(drop,0,pr); p.c(pr,0,buf)
# a caricamento finito: aggiorna lunghezza e forma d'onda
tb=p.obj("t b b",10,340); p.c(buf,0,tb); p.c(buf,1,tb)
lm=p.msg("loaded",10,370); p.c(tb,0,lm); p.c(lm,0,js)
ws=p.msg("set samp1",100,370); p.c(tb,1,ws); p.c(lb,0,ws); p.c(ws,0,wf)
rsn=p.obj("r sampler.note",150,420,100); pn=p.obj("prepend note",150,450,90); p.c(rsn,0,pn); p.c(pn,0,js)
poly=p.obj("poly~ grainvoice 32",10,560,140); p.c(js,0,poly); p.c(js,1,info)
p.c(poly,0,p.obj("send~ bus.sampler.L",10,600,130)); p.c(poly,1,p.obj("send~ bus.sampler.R",160,600,130))
p.save("sampler.maxpat")

# ---------------- ARP ----------------
p=P()
p.com("ARPEGGIATORE",5,2,120,bold=True)
on=p.ui("toggle",130,4,18,18); p.com("on",150,2)
def menu(label,x,y,items,w=70):
    p.com(label,x,y,w)
    it=[]
    for k,v in enumerate(items):
        if k: it.append(",")
        it.append(v)
    return p.ui("umenu",x,y+18,w,22,items=it)
rt_=menu("root",5,24,NAMES12,52)
oc=knob(p,"ottava",62,24,1.,7.,44)
sc=menu("scala",112,24,["minore","maggiore","dorica","frigia","lidia","min armonica","penta min","penta magg"],88)
chd=menu("accordo",205,24,["triade","settima","sus2","sus4","quinta","scala"],70)
md=menu("modo",280,24,["su","giu","su-giu","casuale","passeggiata"],80)
ra=menu("rate",365,24,["1/16","1/8","1/8.","1/4"],52)
rg=knob(p,"ottave",5,66,1.,4.,44); gt_=knob(p,"gate",55,66,0.05,1.5,44)
dn=knob(p,"densita",105,66,0.,1.,44); br=knob(p,"battute",155,66,1.,8.,44)
p.com("progressione (gradi)",205,66,150)
pr1=p.msg("prog 1 6 3 7",205,84); pr2=p.msg("prog 1 4 5 1",290,84); pr3=p.msg("prog 1 6 2 5",375,84)
disp=p.msg("",5,112,410)
js=p.obj("js arp.js",10,420,100)
for o,name,x in ((on,"on",10),(rt_,"root",80),(oc,"oct",150),(sc,"scale",220),(chd,"chord",290),(md,"arpmode",360),
                 (ra,"rate",430),(rg,"range",500),(gt_,"gate",570),(dn,"dens",640),(br,"bars",710)):
    pp=p.obj("prepend "+name,x,380,70); p.c(o,0,pp); p.c(pp,0,js)
for m_ in (pr1,pr2,pr3): p.c(m_,0,js)
rs_=p.obj("r clock.step",10,320); ps=p.obj("prepend step",10,350); p.c(rs_,0,ps); p.c(ps,0,js)
rtm=p.obj("r clock.tempo",130,320); pt=p.obj("prepend tempo",130,350); p.c(rtm,0,pt); p.c(pt,0,js)
p.c(js,0,p.obj("s lead.note",10,460)); p.c(js,1,disp)
lb=p.obj("loadbang",800,250)
for k,(o,val) in enumerate(((on,"1"),(rt_,"9"),(oc,"4"),(sc,"0"),(chd,"1"),(md,"2"),(ra,"0"),(rg,"2"),(gt_,"0.5"),(dn,"0.85"),(br,"1"))):
    m=p.msg(val,800+k*40,280); p.c(lb,0,m); p.c(m,0,o)
p.save("arp.maxpat")

# ---------------- VOCE DEL LEAD (usata da poly~ leadvoice 8) ----------------
p=P()
i1=p.obj("in 1",10,10); lfo=p.obj("in~ 2",700,10)
rt=p.obj("route on off",10,40,100); p.c(i1,0,rt)
up=p.obj("unpack f f f f f i",10,70,160); p.c(rt,0,up)      # nota vel detune_cent pan glide_ms legato
off=p.msg("0",200,70); p.c(rt,1,off)
# parametri globali: li ricevono tutte le voci
PAR=["osc1","pw","osc2","semi","fine","bal","fmode","cutoff","res","famt","ktrk","velf","fa","fd","fs","fr","aa","ad","as","ar","lp","lf","lw"]
rp=p.obj("r lead.par",10,400,90)
pr=p.obj("route "+" ".join(PAR),10,430,900); p.c(rp,0,pr)
def PI(name): return PAR.index(name)
# altezza: nota + detune, glide; il trigger parte solo se la nota non e' legata
dc=p.obj("/ 100.",120,100); p.c(up,2,dc)
tb=p.obj("t b f",10,100); p.c(up,0,tb)
ad_=p.obj("+ 0.",10,130); p.c(tb,1,ad_,0); p.c(dc,0,ad_,1)
mf=p.obj("mtof",10,160); p.c(ad_,0,mf)
pk=p.obj("pack f f",10,190); p.c(mf,0,pk,0); p.c(up,4,pk,1)
fl=p.obj("line~",10,220); p.c(pk,0,fl)
av=p.obj("/ 127.",200,100); p.c(up,1,av); af=p.obj("f",200,130); p.c(av,0,af,1)
lg=p.obj("i",280,100); p.c(up,5,lg,1); p.c(tb,0,lg,0)
s0=p.obj("sel 0",280,130); p.c(lg,0,s0); p.c(s0,0,af,0)
one=p.msg("1",360,160); p.c(s0,0,one)
aenv=p.obj("adsr~ 5 200 0.6 300",200,300,140); p.c(af,0,aenv,0); p.c(off,0,aenv,0)
fenv=p.obj("adsr~ 5 300 0.3 300",360,300,140); p.c(one,0,fenv,0); p.c(off,0,fenv,0)
for k,nm in enumerate(("aa","ad","as","ar")): p.c(pr,PI(nm),aenv,k+1)
for k,nm in enumerate(("fa","fd","fs","fr")): p.c(pr,PI(nm),fenv,k+1)
pL=p.obj("expr cos($f1*1.570796)",520,100,150); pR=p.obj("expr sin($f1*1.570796)",520,130,150); p.c(up,3,pL); p.c(up,3,pR)
# LFO (arriva dal pannello) scalato per le tre destinazioni
lpm=p.obj("*~ 0",700,60); p.c(lfo,0,lpm,0); p.c(pr,PI("lp"),lpm,1)
lfm=p.obj("*~ 0",780,60); p.c(lfo,0,lfm,0); p.c(pr,PI("lf"),lfm,1)
lwm=p.obj("*~ 0",860,60); p.c(lfo,0,lwm,0); p.c(pr,PI("lw"),lwm,1)
lr=p.obj("*~ 0.0578",700,90); p.c(lpm,0,lr); lr1=p.obj("+~ 1",700,120); p.c(lr,0,lr1)
f=p.obj("*~",10,250); p.c(fl,0,f,0); p.c(lr1,0,f,1)
# OSC 1: tri / saw / pulse (PWM) / sine
pwa=p.obj("+~ 0.5",120,250); p.c(lwm,0,pwa,0); p.c(pr,PI("pw"),pwa,1)
pwc=p.obj("clip~ 0.05 0.95",120,280,110); p.c(pwa,0,pwc)
o1=[p.obj("tri~",10,300),p.obj("saw~",60,300),p.obj("rect~",110,300),p.obj("cycle~",160,300)]
for o in o1: p.c(f,0,o,0)
p.c(pwc,0,o1[2],1)
s1a=p.obj("+ 1",10,330); p.c(pr,PI("osc1"),s1a)
sel1=p.obj("selector~ 4 1",10,360,110); p.c(s1a,0,sel1,0)
for k,o in enumerate(o1): p.c(o,0,sel1,k+1)
# OSC 2: tri / saw / pulse / noise, semitoni + fine
rk=p.obj("pak f f",400,200); p.c(pr,PI("semi"),rk,0); p.c(pr,PI("fine"),rk,1)
re=p.obj("expr exp(($f1+$f2*0.01)*0.057762265)",400,230,220); p.c(rk,0,re)
f2=p.obj("*~ 1.",400,260); p.c(f,0,f2,0); p.c(re,0,f2,1)
o2=[p.obj("tri~",400,300),p.obj("saw~",450,300),p.obj("rect~",500,300),p.obj("noise~",550,300)]
for o in o2[:3]: p.c(f2,0,o,0)
s2a=p.obj("+ 1",400,330); p.c(pr,PI("osc2"),s2a)
sel2=p.obj("selector~ 4 1",400,360,110); p.c(s2a,0,sel2,0)
for k,o in enumerate(o2): p.c(o,0,sel2,k+1)
# mix
inv=p.obj("expr 1.-$f1",200,470,80); p.c(pr,PI("bal"),inv)
g1=p.obj("*~ 0.5",10,500); p.c(sel1,0,g1,0); p.c(inv,0,g1,1)
g2=p.obj("*~ 0.5",120,500); p.c(sel2,0,g2,0); p.c(pr,PI("bal"),g2,1)
mix=p.obj("*~ 1",10,530); p.c(g1,0,mix); p.c(g2,0,mix)
# filtro: cutoff = base + env*amt*(1-velf+velf*vel) + lfo + key tracking
cs=p.obj("sig~",300,500); p.c(pr,PI("cutoff"),cs)
ek=p.obj("pak f f f",400,470,90); p.c(pr,PI("famt"),ek,0); p.c(av,0,ek,1); p.c(pr,PI("velf"),ek,2)
ee=p.obj("expr $f1*(1.-$f3+$f3*$f2)",400,500,180); p.c(ek,0,ee)
fe=p.obj("*~ 0",360,530); p.c(fenv,0,fe,0); p.c(ee,0,fe,1)
kt=p.obj("-~ 261.6",600,500); p.c(f,0,kt); kt2=p.obj("*~ 0",600,530); p.c(kt,0,kt2,0); p.c(pr,PI("ktrk"),kt2,1)
csum=p.obj("*~ 1",300,560); p.c(cs,0,csum); p.c(fe,0,csum); p.c(lfm,0,csum); p.c(kt2,0,csum)
cc=p.obj("clip~ 20 18000",300,590); p.c(csum,0,cc)
svf=p.obj("svf~ 1000 0.3",10,600); p.c(mix,0,svf,0); p.c(cc,0,svf,1); p.c(pr,PI("res"),svf,2)
r6=p.obj("* 0.6",160,570); p.c(pr,PI("res"),r6)
l1=p.obj("lores~ 1000 0.3",160,600); p.c(mix,0,l1,0); p.c(cc,0,l1,1); p.c(r6,0,l1,2)
l2=p.obj("lores~ 1000 0.3",160,630); p.c(l1,0,l2,0); p.c(cc,0,l2,1); p.c(pr,PI("res"),l2,2)
fm1=p.obj("+ 1",10,660); p.c(pr,PI("fmode"),fm1)
fsel=p.obj("selector~ 5 1",10,690,120); p.c(fm1,0,fsel,0); p.c(svf,0,fsel,1); p.c(l2,0,fsel,2); p.c(svf,1,fsel,3); p.c(svf,2,fsel,4); p.c(svf,3,fsel,5)
# VCA e pan
va=p.obj("*~",10,730); p.c(fsel,0,va,0); p.c(aenv,0,va,1)
gL=p.obj("*~",10,760); gR=p.obj("*~",100,760); p.c(va,0,gL,0); p.c(va,0,gR,0); p.c(pL,0,gL,1); p.c(pR,0,gR,1)
p.c(gL,0,p.obj("out~ 1",10,800)); p.c(gR,0,p.obj("out~ 2",100,800))
p.save("leadvoice.maxpat")

# ---------------- LEAD (poly synth stile Nord Lead) ----------------
p=P()
p.com("LEAD - poly stile Nord Lead",5,2,200,bold=True)
tst=p.msg("60 100 300",210,2,80); tst2=p.msg("67 100 300",294,2,80); p.com("prova",378,2,40)
mi=p.ui("toggle",430,4,18,18); p.com("MIDI in (tastiera)",450,2,110)
pnc=p.msg("panic",580,2)
# riga 1: oscillatori e filtro
o1=mn("osc1",5,22,["tri","saw","pulse","sine"],58); pw=knob(p,"pw",68,22,0.5,0.95,40)
o2=mn("osc2",112,22,["tri","saw","pulse","noise"],58); sm=iknob(p,"semi",174,22,-24,24,40); fn=knob(p,"fine",218,22,-50.,50.,40)
bal=knob(p,"mix 1<>2",262,22,0.,1.,44)
fmd=mn("filtro",310,22,["LP 12","LP 24","HP","BP","notch"],60); cut=knob(p,"cutoff",374,22,20.,16000.,52); res=knob(p,"reso",430,22,0.,0.95,40)
eam=knob(p,"env amt",474,22,-8000.,8000.,52); ktr=knob(p,"key trk",530,22,0.,1.,40); vf=knob(p,"vel>filt",574,22,0.,1.,44); lev=knob(p,"level",622,22,0.,1.,40)
# riga 2: inviluppi e LFO
fa=knob(p,"f att",5,64,1.,3000.,40); fd=knob(p,"f dec",49,64,1.,4000.,40); fs=knob(p,"f sus",93,64,0.,1.,40); fr=knob(p,"f rel",137,64,1.,5000.,40)
aa=knob(p,"a att",190,64,1.,3000.,40); ad=knob(p,"a dec",234,64,1.,4000.,40); as_=knob(p,"a sus",278,64,0.,1.,40); ar=knob(p,"a rel",322,64,1.,5000.,40)
shp=mn("lfo",372,64,["tri","saw","square","random"],60); rate=knob(p,"rate Hz",436,64,0.05,30.,46)
p.com("sync",486,64); sy=p.ui("toggle",488,84,20,20)
dvm=mn("div",510,64,["4 bars","2 bars","1 bar","1/2","1/4","1/8","1/16","1/4T","1/8T","1/16T"],62)
ds=mn("lfo ->",576,64,["pitch","filtro","pw"],54); lam=knob(p,"lfo amt",634,64,0.,1.,44)
# riga 3: unison, modo, preset
un=mn("unison",5,106,["1","2","4"],44); dt=knob(p,"detune",53,106,0.,50.,44); spd=knob(p,"spread",101,106,0.,1.,44)
md=mn("modo",150,106,["poly","mono","legato"],60); por=knob(p,"porta ms",214,106,0.,1000.,48)
p.com("preset",270,106,50); pr1=p.msg("pad",270,124); pr2=p.msg("pluck",306,124); pr3=p.msg("lead",350,124); pr4=p.msg("brass",388,124)
inf=p.msg("",440,124,230)
# ---- note: dall'arpeggiatore e dalla tastiera MIDI
js=p.obj("js lead.js",10,300,100)
rn=p.obj("r lead.note",10,200); pn=p.obj("prepend note",10,230,90); p.c(rn,0,pn); p.c(pn,0,js)
for t_ in (tst,tst2): p.c(t_,0,pn)
ni=p.obj("notein",150,200); pki=p.obj("pak i i",150,230); p.c(ni,0,pki,0); p.c(ni,1,pki,1)
gt=p.obj("gate",150,260); p.c(mi,0,gt,0); p.c(pki,0,gt,1); pm=p.obj("prepend midi",150,290,90); p.c(gt,0,pm); p.c(pm,0,js)
p.c(pnc,0,js)
for o,name,x in ((un,"unison",300),(dt,"detune",370),(spd,"spread",440),(md,"mode",510),(por,"porta",580)):
    pp=p.obj("prepend "+name,x,260,70); p.c(o,0,pp); p.c(pp,0,js)
poly=p.obj("poly~ leadvoice 8",10,340,130); p.c(js,0,poly,0); p.c(js,1,inf)
# ---- parametri verso tutte le voci
spar=p.obj("s lead.par",700,330,90)
PARS=((o1,"osc1"),(pw,"pw"),(o2,"osc2"),(sm,"semi"),(fn,"fine"),(bal,"bal"),(fmd,"fmode"),(cut,"cutoff"),(res,"res"),(eam,"famt"),(ktr,"ktrk"),(vf,"velf"),
      (fa,"fa"),(fd,"fd"),(fs,"fs"),(fr,"fr"),(aa,"aa"),(ad,"ad"),(as_,"as"),(ar,"ar"))
for k,(o,name) in enumerate(PARS):
    pp=p.obj("prepend "+name,700+k*70,300,66); p.c(o,0,pp); p.c(pp,0,spar)
# destinazione e quantita' dell'LFO -> tre quantita' (semitoni, Hz, pw)
lk=p.obj("pak i f",700,360); p.c(ds,0,lk,0); p.c(lam,0,lk,1)
for k,(nm,ex) in enumerate((("lp","expr ($i1==0)*$f2*12."),("lf","expr ($i1==1)*$f2*6000."),("lw","expr ($i1==2)*$f2*0.45"))):
    e_=p.obj(ex,700+k*170,390,160); p.c(lk,0,e_); pp=p.obj("prepend "+nm,700+k*170,420,66); p.c(e_,0,pp); p.c(pp,0,spar)
# ---- LFO: fase libera o sincronizzata ai BPM -> poly~ (secondo ingresso, segnale)
lb=p.obj("loadbang",1500,200)
INIT=[(o1,"1"),(pw,"0.5"),(o2,"1"),(sm,"0"),(fn,"7"),(bal,"0.5"),(fmd,"1"),(cut,"1200"),(res,"0.3"),(eam,"3000"),(ktr,"0.5"),(vf,"0.5"),
      (fa,"5"),(fd,"300"),(fs,"0.3"),(fr,"300"),(aa,"5"),(ad,"200"),(as_,"0.6"),(ar,"300"),
      (shp,"0"),(rate,"5"),(sy,"0"),(dvm,"4"),(ds,"0"),(lam,"0"),(un,"0"),(dt,"10"),(spd,"0.5"),(md,"0"),(por,"80"),(lev,"0.5")]
for k,(o,val) in enumerate(INIT):
    m=p.msg(val,1500+k*40,230); p.c(lb,0,m); p.c(m,0,o)
ql=p.msg("16 8 4 2 1 0.5 0.25 0.666667 0.333333 0.166667",1500+len(INIT)*40+20,230,330); p.c(lb,0,ql)
zl=p.obj("zl lookup",1300,470); p.c(ql,0,zl,1); p.c(dvm,0,zl,0)
rtm=p.obj("r clock.tempo",1420,470)
pkz=p.obj("pak 120. 1.",1360,500); p.c(rtm,0,pkz,0); p.c(zl,0,pkz,1)
hz=p.obj("expr $f1/(60.*$f2)",1360,530,140); p.c(pkz,0,hz)
tbi=p.obj("t b i",1240,470); p.c(sy,0,tbi)
ad1=p.obj("+ 1",1240,500); p.c(tbi,1,ad1)
sw=p.obj("switch 2 1",1240,570); p.c(ad1,0,sw,0); p.c(rate,0,sw,1); p.c(hz,0,sw,2)
p.c(tbi,0,rate); p.c(tbi,0,pkz)
ph=p.obj("phasor~",1240,610); p.c(sw,0,ph,0)
rr=p.obj("r clock.running",1460,570); s1=p.obj("sel 1",1460,600); p.c(rr,0,s1); z0=p.msg("0",1460,630); p.c(s1,0,z0); p.c(z0,0,ph,1)
tx2=p.obj("*~ 2",1240,650); p.c(ph,0,tx2); tm1=p.obj("-~ 1",1240,680); p.c(tx2,0,tm1)
tab=p.obj("abs~",1240,710); p.c(tm1,0,tab); ta2=p.obj("*~ 2",1240,740); p.c(tab,0,ta2); tri=p.obj("-~ 1",1240,770); p.c(ta2,0,tri)
lt=p.obj("<~ 0.5",1320,650); p.c(ph,0,lt); q2=p.obj("*~ 2",1320,680); p.c(lt,0,q2); sq=p.obj("-~ 1",1320,710); p.c(q2,0,sq)
nz=p.obj("noise~",1400,650); sh=p.obj("sah~ 0.5",1400,690); p.c(nz,0,sh,0); p.c(ph,0,sh,1)
shp1=p.obj("+ 1",1160,750); p.c(shp,0,shp1)
lsel=p.obj("selector~ 4 1",1160,810,120); p.c(shp1,0,lsel,0); p.c(tri,0,lsel,1); p.c(tm1,0,lsel,2); p.c(sq,0,lsel,3); p.c(sh,0,lsel,4)
p.c(lsel,0,poly,1)
# ---- uscita stereo
oL=p.obj("*~ 0.5",10,380); oR=p.obj("*~ 0.5",120,380); p.c(poly,0,oL,0); p.c(poly,1,oR,0); p.c(lev,0,oL,1); p.c(lev,0,oR,1)
p.c(oL,0,p.obj("send~ bus.lead.L",10,410,110)); p.c(oR,0,p.obj("send~ bus.lead.R",130,410,110))
# ---- preset
KN={"o1":o1,"pw":pw,"o2":o2,"sm":sm,"fn":fn,"bal":bal,"fmd":fmd,"cut":cut,"res":res,"eam":eam,"ktr":ktr,"vf":vf,"fa":fa,"fd":fd,"fs":fs,"fr":fr,
    "aa":aa,"ad":ad,"as":as_,"ar":ar,"shp":shp,"rate":rate,"sy":sy,"ds":ds,"lam":lam,"un":un,"dt":dt,"spd":spd,"md":md,"por":por}
PRESETS=[(pr1,{"o1":"1","pw":"0.5","o2":"1","sm":"0","fn":"9","bal":"0.5","fmd":"1","cut":"900","res":"0.2","eam":"1500","ktr":"0.5","vf":"0.3","fa":"400","fd":"1500","fs":"0.5","fr":"1500","aa":"300","ad":"1000","as":"0.8","ar":"1500","shp":"0","rate":"0.3","sy":"0","ds":"1","lam":"0.15","un":"1","dt":"14","spd":"0.9","md":"0"}),
         (pr2,{"o1":"1","o2":"2","pw":"0.5","sm":"12","fn":"3","bal":"0.4","fmd":"1","cut":"600","res":"0.4","eam":"5000","ktr":"0.6","vf":"0.8","fa":"1","fd":"180","fs":"0","fr":"120","aa":"1","ad":"250","as":"0.2","ar":"200","ds":"0","lam":"0","un":"0","dt":"0","spd":"0","md":"0"}),
         (pr3,{"o1":"1","o2":"2","pw":"0.6","sm":"-12","fn":"5","bal":"0.35","fmd":"0","cut":"2500","res":"0.5","eam":"2500","ktr":"0.4","vf":"0.5","fa":"5","fd":"400","fs":"0.4","fr":"300","aa":"5","ad":"200","as":"0.7","ar":"250","shp":"0","rate":"5.5","sy":"0","ds":"0","lam":"0.03","un":"1","dt":"8","spd":"0.3","md":"2","por":"60"}),
         (pr4,{"o1":"1","o2":"1","pw":"0.5","sm":"0","fn":"6","bal":"0.5","fmd":"1","cut":"700","res":"0.25","eam":"4000","ktr":"0.5","vf":"0.6","fa":"60","fd":"500","fs":"0.35","fr":"300","aa":"30","ad":"300","as":"0.8","ar":"300","ds":"0","lam":"0","un":"1","dt":"6","spd":"0.6","md":"0"})]
for pi,(b_,vals) in enumerate(PRESETS):
    for k,(key,val) in enumerate(vals.items()):
        m=p.msg(val,1500+pi*40,280+k*22); p.c(b_,0,m); p.c(m,0,KN[key])
p.save("lead.maxpat")

# ---------------- MIXER (stereo, con send/return) ----------------
p=P()
p.com("MIXER",5,2,bold=True)
p.com("level",70,2); p.com("delay",230,2); p.com("reverb",282,2)
ch=[("drums","bus.drums",0.0,0.15),("bass","bus.bass",0.0,0.1),("sampler","bus.sampler",0.3,0.3),("lead","bus.lead",0.25,0.3)]
STEREO=("sampler","lead")
lb=p.obj("loadbang",10,300)
def init(o,val,x):
    m=p.msg(str(val),x,330); p.c(lb,0,m); p.c(m,0,o)
dsum=p.obj("*~ 1",300,520); p.c(dsum,0,p.obj("send~ fx.delay.in",300,550,120))
rsum=p.obj("*~ 1",450,520); p.c(rsum,0,p.obj("send~ fx.rev.in",450,550,110))
L=p.obj("*~ 1",10,640); R=p.obj("*~ 1",150,640)
for i,(nm,bus,sd,sr) in enumerate(ch):
    y=24+i*26
    p.com(nm,5,y)
    lv=p.ui("slider",70,y,150,20,floatoutput=1,size=1.0)
    snd=p.ui("flonum",230,y,48,22,minimum=0.,maximum=1.)
    snr=p.ui("flonum",282,y,48,22,minimum=0.,maximum=1.)
    init(lv,0.8,40+i*150); init(snd,sd,80+i*150); init(snr,sr,120+i*150)
    if nm in STEREO:   # canale stereo
        rcl=p.obj("receive~ "+bus+".L",10+i*150,400,120); rcr=p.obj("receive~ "+bus+".R",10+i*150,370,120)
        g=p.obj("*~",10+i*150,430); gr=p.obj("*~",80+i*150,430)
        p.c(rcl,0,g,0); p.c(rcr,0,gr,0); p.c(lv,0,g,1); p.c(lv,0,gr,1)
        p.c(g,0,L); p.c(gr,0,R)
    else:
        rc=p.obj("receive~ "+bus,10+i*150,400,120)
        g=p.obj("*~",10+i*150,430); p.c(rc,0,g,0); p.c(lv,0,g,1)
        p.c(g,0,L); p.c(g,0,R); gr=g
    sides=[g] if gr is g else [g,gr]     # canale mono: un solo cavo (un cavo doppio da' errore in Max)
    a1=p.obj("*~ 0",10+i*150,470); p.c(snd,0,a1,1); p.c(a1,0,dsum)
    a2=p.obj("*~ 0",80+i*150,470); p.c(snr,0,a2,1); p.c(a2,0,rsum)
    for sd_ in sides: p.c(sd_,0,a1,0); p.c(sd_,0,a2,0)
p.com("return",5,132)
rd=p.ui("flonum",230,132,48,22,minimum=0.,maximum=1.); rr=p.ui("flonum",282,132,48,22,minimum=0.,maximum=1.)
init(rd,0.8,500); init(rr,0.8,540)
for k,(nm,amt) in enumerate((("fx.delay.retL",rd),("fx.delay.retR",rd),("fx.rev.retL",rr),("fx.rev.retR",rr))):
    rc=p.obj("receive~ "+nm,500+k*130,590,120); g=p.obj("*~",500+k*130,615); p.c(rc,0,g,0); p.c(amt,0,g,1)
    p.c(g,0,L if k%2==0 else R)
p.com("master",5,160); ms=p.ui("slider",70,160,150,20,floatoutput=1,size=1.0); init(ms,0.8,580)
mL=p.obj("*~",10,680); mR=p.obj("*~",150,680); p.c(L,0,mL,0); p.c(R,0,mR,0); p.c(ms,0,mL,1); p.c(ms,0,mR,1)
cL=p.obj("clip~ -1 1",10,710); cR=p.obj("clip~ -1 1",150,710); p.c(mL,0,cL); p.c(mR,0,cR)
dac=p.ui("ezdac~",345,20,45,45); p.com("audio",350,66)
m1=p.ui("meter~",400,20,14,150); m2=p.ui("meter~",418,20,14,150)
p.c(cL,0,dac,0); p.c(cR,0,dac,1); p.c(cL,0,m1); p.c(cR,0,m2)
p.save("mixer.maxpat")

def eq_section(p, src, y_ui, x_pl, y_pl, lb):
    """EQ in ingresso: taglio basse (passa-alto) + taglio alte (passa-basso), con preset."""
    lo=knob(p,"lo cut",5,y_ui,20.,8000.,52); hi=knob(p,"hi cut",62,y_ui,200.,20000.,56)
    pb=p.msg("bassi",130,y_ui+18); pa=p.msg("alti",180,y_ui+18); pf=p.msg("pieno",222,y_ui+18)
    p.com("solo:",125,y_ui)
    # preset -> valori dei due filtri
    for m_,(l,h) in ((pb,(20,300)),(pa,(2500,20000)),(pf,(20,20000))):
        tl=p.msg(str(l),x_pl+300,y_pl-60); th=p.msg(str(h),x_pl+340,y_pl-60)
        p.c(m_,0,tl); p.c(m_,0,th); p.c(tl,0,lo); p.c(th,0,hi)
    for val,o,xx in (("20",lo,x_pl+400),("20000",hi,x_pl+440)):
        m=p.msg(val,xx,y_pl-30); p.c(lb,0,m); p.c(m,0,o)
    fh=p.obj("filtercoeff~ highpass",x_pl,y_pl,140); fl=p.obj("filtercoeff~ lowpass",x_pl+160,y_pl,130)
    qg=p.msg("1",x_pl+300,y_pl); qq=p.msg("0.707",x_pl+340,y_pl)
    p.c(lb,0,qg); p.c(lb,0,qq)
    for f in (fh,fl): p.c(qg,0,f,1); p.c(qq,0,f,2)
    p.c(lo,0,fh,0); p.c(hi,0,fl,0)
    bh=p.obj("biquad~",x_pl,y_pl+40); bl=p.obj("biquad~",x_pl,y_pl+70)
    p.c(src,0,bh,0)
    for k in range(5): p.c(fh,k,bh,k+1); p.c(fl,k,bl,k+1)
    p.c(bh,0,bl,0)
    return bl

# ---------------- DELAY (ping-pong, sincronizzabile) ----------------
p=P()
p.com("DELAY",5,2,bold=True)
dt=knob(p,"time ms",5,20,1.,2000.,52); fb=knob(p,"feedback",62,20,0.,0.95,52); tn=knob(p,"tone Hz",119,20,200.,12000.,56)
p.com("sync",182,20); sy=p.ui("toggle",184,40,20,20)
p.com("div",210,20); dvm=p.ui("umenu",210,38,62,22,items=["1/2",",","1/4",",","1/8.",",","1/8",",","1/16",",","1/4T",",","1/8T"])
lb=p.obj("loadbang",400,200)
for val,o,x in (("375",dt,400),("0.45",fb,440),("4000",tn,480),("1",sy,520),("2",dvm,560)):
    m=p.msg(val,x,230); p.c(lb,0,m); p.c(m,0,o)
ql=p.msg("2 1 0.75 0.5 0.25 0.666667 0.333333",700,230,250); p.c(lb,0,ql)
zl=p.obj("zl lookup",560,270); p.c(ql,0,zl,1); p.c(dvm,0,zl,0)
rt=p.obj("r clock.tempo",660,270)
pk=p.obj("pak 120. 0.5",600,300); p.c(rt,0,pk,0); p.c(zl,0,pk,1)
ms_=p.obj("expr 60000./$f1*$f2",600,330,130); p.c(pk,0,ms_)
tbi=p.obj("t b i",480,270); p.c(sy,0,tbi); ad=p.obj("+ 1",480,300); p.c(tbi,1,ad)
p.c(tbi,0,dt); p.c(tbi,0,pk)
sw=p.obj("switch 2 1",480,360); p.c(ad,0,sw,0); p.c(dt,0,sw,1); p.c(ms_,0,sw,2)
tff=p.obj("t f f",480,390); p.c(sw,0,tff); x2=p.obj("* 2.",540,420); p.c(tff,1,x2)
ri=p.obj("receive~ fx.delay.in",10,200,130)
deq=eq_section(p,ri,62,10,800,lb)
ti=p.obj("tapin~ 5000",10,300); p.c(deq,0,ti)
to=p.obj("tapout~ 375 750",10,340,110); p.c(ti,0,to,0); p.c(tff,0,to,0); p.c(x2,0,to,1)
lp=p.obj("onepole~ 4000",150,380); p.c(to,1,lp,0); p.c(tn,0,lp,1)
fg=p.obj("*~ 0.45",150,410); p.c(lp,0,fg,0); p.c(fb,0,fg,1); p.c(fg,0,ti)
p.c(to,0,p.obj("send~ fx.delay.retL",10,460,130)); p.c(to,1,p.obj("send~ fx.delay.retR",150,460,130))
p.save("delay.maxpat")

# ---------------- REVERB (Schroeder: 4 comb paralleli + 2 allpass per canale) ----------------
p=P()
p.com("REVERB",5,2,bold=True)
pd=knob(p,"predelay",5,20,0.,200.,52); sz=knob(p,"size",62,20,0.,0.97,52); tn=knob(p,"tone Hz",119,20,500.,12000.,56)
lb=p.obj("loadbang",500,200)
for val,o,x in (("20",pd,500),("0.84",sz,540),("6000",tn,580)):
    m=p.msg(val,x,230); p.c(lb,0,m); p.c(m,0,o)
ri=p.obj("receive~ fx.rev.in",10,200,120)
req=eq_section(p,ri,62,10,800,lb)
ig=p.obj("*~ 0.25",10,230); p.c(req,0,ig)
ti=p.obj("tapin~ 300",10,260); p.c(ig,0,ti)
to=p.obj("tapout~ 20",10,290); p.c(ti,0,to,0); p.c(pd,0,to,0)
for side,(combs,aps,x0,nm) in enumerate(((["29.7","37.1","41.1","43.7"],["5.","1.7"],10,"fx.rev.retL"),
                                          (["30.4","37.8","41.8","44.4"],["5.3","1.9"],330,"fx.rev.retR"))):
    sm=p.obj("*~ 1",x0,400)
    for k,c in enumerate(combs):
        cb=p.obj("comb~ 60 %s 0 1 0.84"%c,x0+k*75,340,140 if k==0 else 70); p.c(to,0,cb,0); p.c(sz,0,cb,4); p.c(cb,0,sm)
    a1=p.obj("allpass~ 20 %s 0.7"%aps[0],x0,430,110); p.c(sm,0,a1)
    a2=p.obj("allpass~ 20 %s 0.7"%aps[1],x0,460,110); p.c(a1,0,a2)
    op=p.obj("onepole~ 6000",x0,490,100); p.c(a2,0,op,0); p.c(tn,0,op,1)
    p.c(op,0,p.obj("send~ "+nm,x0,520,120))
p.save("reverb.maxpat")

# ---------------- MAIN ----------------
p=P()
p.com("STUDIO - attiva l'audio nel mixer, poi premi play nel clock",10,8,420,bold=True)
p.bp("clock.maxpat",10,36,260,90)
p.bp("sequencer.maxpat",280,36,650,100)
p.bp("drumseq.maxpat",10,146,930,400)
p.bp("delay.maxpat",950,146,280,105)
p.bp("reverb.maxpat",950,261,280,105)
p.bp("bassseq.maxpat",10,556,930,500)
p.bp("drums.maxpat",10,1066,420,95)
p.bp("bass.maxpat",440,1066,650,150)
p.bp("arp.maxpat",10,1226,430,140)
p.bp("lead.maxpat",450,1226,670,150)
p.bp("sampler.maxpat",10,1376,470,145)
p.bp("mixer.maxpat",490,1376,440,190)
p.save("main.maxpat",(30,30,1250,1600))
print("ok")
