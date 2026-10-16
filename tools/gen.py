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
 "js":(1,8),"+~":(2,1),"send~":(1,0),"receive~":(1,1),"adsr~":(5,4),"selector~":(5,1),"tri~":(2,1),"rect~":(2,1),"phasor~":(2,1),"del":(2,1),"-~":(2,1),"*":(2,1),"+":(2,1),"abs~":(1,1),"<~":(2,1),"zl":(2,2),"pak":(2,1),"switch":(3,1),"tapin~":(1,1),"tapout~":(2,2),"comb~":(5,1),"allpass~":(3,1),"onepole~":(2,1),"filtercoeff~":(3,5),"biquad~":(6,1),"poly~":(1,2),"in":(0,1),"out~":(1,0),"thispoly~":(1,2),"play~":(2,2),
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
bpm=p.ui("number",90,32,50,22); p.com("BPM",142,32)
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
p.com("SEQUENCER EUCLIDEO",5,2,170,bold=True)
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
bl=p.msg("bline 36 0 36 48 0 36 0 39 36 0 43 0 36 48 0 41",70,72,330); p.com("basso",5,72)
p.c(bl,0,js); p.c(rst,0,js)
dm=p.msg("demo",560,330); p.c(lb,0,dm); p.c(dm,0,js)
rs_=p.obj("r clock.step",10,250); pre=p.obj("prepend step",10,280); p.c(rs_,0,pre); p.c(pre,0,js)
rseq=p.obj("r seq",150,250); p.c(rseq,0,js)
sb=p.obj("s bass.note",10,470); p.c(js,0,sb)
ss=p.obj("s sampler.note",110,470); p.c(js,1,ss)
p.c(js,2,st)
rt=p.obj("route 0",450,470); p.c(js,3,rt)
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
rv=p.obj("route len dir sel vel rat prob mode rep info lab",300,Y0+320,360); p.c(js,6,rv)
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

# ---------------- BASS ----------------
p=P()
p.com("BASS",5,2,bold=True)
cut=knob(p,"cutoff",5,22,30.,8000.)
res=knob(p,"reso",58,22,0.,0.97)
dec=knob(p,"decay",111,22,10.,3000.)
gli=knob(p,"glide",164,22,0.,1000.)
lev=knob(p,"level",217,22,0.,1.,40)
t1=p.msg("36 100 0 0",5,72); t2=p.msg("43 100 1 0",90,72); p.com("prova",175,72)
# valori iniziali
lb=p.obj("loadbang",400,220)
for obj_,val,x in ((cut,"300",400),(res,"0.6",440),(dec,"250",480),(gli,"60",520),(lev,"0.5",560)):
    m=p.msg(val,x,250); p.c(lb,0,m); p.c(m,0,obj_)
rb=p.obj("r bass.note",10,220); up=p.obj("unpack i i i i",10,250,150); p.c(rb,0,up)
p.c(t1,0,up); p.c(t2,0,up)
# glide = slide * glide_ms + 1
gm=p.obj("* 60.",180,280); p.c(up,2,gm); p.c(gli,0,gm,1)
gp=p.obj("+ 1.",180,310); p.c(gm,0,gp)
mf=p.obj("mtof",10,280); pk=p.obj("pack f f",10,340); p.c(up,0,mf); p.c(mf,0,pk,0); p.c(gp,0,pk,1)
fl=p.obj("line~",10,370); p.c(pk,0,fl)
saw=p.obj("saw~",10,400); p.c(fl,0,saw)
# inviluppo d'ampiezza
dv=p.obj("/ 127.",300,280); p.c(up,1,dv)
ap=p.obj("pack f 250",300,310); p.c(dv,0,ap,0); p.c(dec,0,ap,1)
am=p.msg("$1 5 0 $2",300,340); p.c(ap,0,am); al=p.obj("line~",300,370); p.c(am,0,al)
# cutoff = base + modulazione (dal modulo MOD)
cs=p.obj("sig~",450,300); p.c(cut,0,cs)
mr=p.obj("receive~ mod.bass",540,300,120)
csum=p.obj("+~",450,340); p.c(cs,0,csum,0); p.c(mr,0,csum,1)
cc=p.obj("clip~ 30 16000",450,370); p.c(csum,0,cc)
lp=p.obj("lores~ 300 0.6",10,440); p.c(saw,0,lp,0); p.c(cc,0,lp,1); p.c(res,0,lp,2)
av=p.obj("*~",10,480); p.c(lp,0,av,0); p.c(al,0,av,1)
g=p.obj("*~ 0.5",10,510); p.c(av,0,g); p.c(lev,0,g,1)
p.c(g,0,p.obj("send~ bus.bass",10,540))
p.save("bass.maxpat")

# ---------------- MOD (inviluppo + LFO per il basso) ----------------
p=P()
p.com("MOD -> cutoff basso",5,2,160,bold=True)
p.com("ENV",5,24,bold=True)
ea=knob(p,"att",40,22,0.,2000.); ed=knob(p,"dec",93,22,1.,3000.)
es=knob(p,"sus",146,22,0.,1.); er=knob(p,"rel",199,22,1.,3000.)
eg=knob(p,"gate",252,22,5.,2000.); eam=knob(p,"amount",305,22,-8000.,8000.,56)
p.com("LFO",5,70,bold=True)
lr=knob(p,"rate Hz",40,68,0.01,40.,52); ld=knob(p,"depth",97,68,0.,8000.,56)
p.com("forma",158,68)
sh=p.ui("umenu",158,86,80,22,items=["sine",",","tri",",","saw",",","square"])
lb=p.obj("loadbang",420,220)
for obj_,val,x in ((ea,"5",420),(ed,"200",460),(es,"0.2",500),(er,"300",540),(eg,"150",580),(eam,"2500",620),(lr,"2",660),(ld,"0",700),(sh,"0",740)):
    m=p.msg(val,x,250); p.c(lb,0,m); p.c(m,0,obj_)
# trigger dalle note del basso
rb=p.obj("r bass.note",10,220); up=p.obj("unpack i i i i",10,250,150); p.c(rb,0,up)
dv=p.obj("/ 127.",10,280); p.c(up,1,dv)
tb=p.obj("t b f",10,310); p.c(dv,0,tb)
dl=p.obj("del 150",120,340); p.c(tb,0,dl); p.c(eg,0,dl,1)
z=p.msg("0",120,370); p.c(dl,0,z)
env=p.obj("adsr~ 5 200 0.2 300",10,400,150)
p.c(tb,1,env,0); p.c(z,0,env,0)
p.c(ea,0,env,1); p.c(ed,0,env,2); p.c(es,0,env,3); p.c(er,0,env,4)
ev=p.obj("*~ 2500",10,440); p.c(env,0,ev,0); p.c(eam,0,ev,1)
# LFO: fase (libera o sincronizzata ai BPM) -> forme d'onda
p.com("sync",244,68); sy=p.ui("toggle",246,88,20,20)
p.com("div",272,68); dvm=p.ui("umenu",272,86,70,22,items=["4 bars",",","2 bars",",","1 bar",",","1/2",",","1/4",",","1/8",",","1/16",",","1/4T",",","1/8T",",","1/16T"])
for val,obj_,x in (("0",sy,780),("4",dvm,820)):
    m=p.msg(val,x,250); p.c(lb,0,m); p.c(m,0,obj_)
# durata del ciclo in quarti per ogni divisione
ql=p.msg("16 8 4 2 1 0.5 0.25 0.666667 0.333333 0.166667",900,250,330); p.c(lb,0,ql)
zl=p.obj("zl lookup",500,330); p.c(ql,0,zl,1); p.c(dvm,0,zl,0)
rt=p.obj("r clock.tempo",620,330)
pk=p.obj("pak 120. 1.",560,370); p.c(rt,0,pk,0); p.c(zl,0,pk,1)
hz=p.obj("expr $f1/(60.*$f2)",560,400,140); p.c(pk,0,hz)
# scelta libera / sync
tbi=p.obj("t b i",440,330); p.c(sy,0,tbi)
ad=p.obj("+ 1",440,360); p.c(tbi,1,ad)
sw=p.obj("switch 2 1",440,440); p.c(ad,0,sw,0); p.c(lr,0,sw,1); p.c(hz,0,sw,2)
p.c(tbi,0,lr); p.c(tbi,0,pk)
ph=p.obj("phasor~",220,400); p.c(sw,0,ph,0)
# riallineamento della fase: allo start e all'inizio di ogni ciclo
rr=p.obj("r clock.running",700,440); s1=p.obj("sel 1",700,470); p.c(rr,0,s1)
rs=p.obj("r clock.step",500,440); gs=p.obj("gate",500,470); p.c(sy,0,gs,0); p.c(rs,0,gs,1)
cy=p.obj("expr (($i1 % int($f2*4.+0.001))==0) * (abs($f2*4.-int($f2*4.+0.5))<0.01)",500,500,420)
p.c(gs,0,cy,0); p.c(zl,0,cy,1)
s2=p.obj("sel 1",500,530); p.c(cy,0,s2)
z0=p.msg("0",620,560); p.c(s1,0,z0); p.c(s2,0,z0); p.c(z0,0,ph,1)
# forme d'onda dalla fase (-1..1)
o1=p.obj("cycle~ 0",220,440); p.c(ph,0,o1,1)
sx2=p.obj("*~ 2",300,440); p.c(ph,0,sx2); sm1=p.obj("-~ 1",300,470); p.c(sx2,0,sm1)
ab=p.obj("abs~",360,500); p.c(sm1,0,ab); t2=p.obj("*~ 2",360,530); p.c(ab,0,t2); t1=p.obj("-~ 1",360,560); p.c(t2,0,t1)
lt=p.obj("<~ 0.5",420,440); p.c(ph,0,lt); q2=p.obj("*~ 2",420,470); p.c(lt,0,q2); q1=p.obj("-~ 1",420,500); p.c(q2,0,q1)
pl=p.obj("+ 1",160,430); p.c(sh,0,pl)
sel=p.obj("selector~ 4 1",220,600,120); p.c(pl,0,sel,0)
p.c(o1,0,sel,1); p.c(t1,0,sel,2); p.c(sm1,0,sel,3); p.c(q1,0,sel,4)
lv=p.obj("*~ 0",220,630); p.c(sel,0,lv,0); p.c(ld,0,lv,1)
sumo=p.obj("*~ 1",10,660); p.c(ev,0,sumo); p.c(lv,0,sumo)
p.c(sumo,0,p.obj("send~ mod.bass",10,690))
p.save("mod.maxpat")

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

# ---------------- LEAD SYNTH ----------------
p=P()
p.com("LEAD SYNTH",5,2,100,bold=True)
wv=knob(p,"saw/sq",5,20,0.,1.,44); dt=knob(p,"detune",53,20,0.,50.,44); gl=knob(p,"glide",101,20,0.,500.,44)
cu=knob(p,"cutoff",149,20,30.,8000.,48); rz=knob(p,"reso",201,20,0.,0.95,44); ea=knob(p,"env amt",249,20,-8000.,8000.,52)
at=knob(p,"att",5,62,1.,2000.,44); de=knob(p,"dec",53,62,1.,3000.,44); su=knob(p,"sus",101,62,0.,1.,44)
rl=knob(p,"rel",149,62,1.,4000.,48); lv=knob(p,"level",201,62,0.,1.,44)
tst=p.msg("69 100 300",255,80); p.com("prova",255,62)
lb=p.obj("loadbang",700,250)
for k,(o,val) in enumerate(((wv,"0.3"),(dt,"12"),(gl,"10"),(cu,"900"),(rz,"0.4"),(ea,"2500"),(at,"5"),(de,"180"),(su,"0.4"),(rl,"250"),(lv,"0.4"))):
    m=p.msg(val,700+k*40,280); p.c(lb,0,m); p.c(m,0,o)
rn=p.obj("r lead.note",10,250); up=p.obj("unpack i i f",10,280,100); p.c(rn,0,up); p.c(tst,0,up)
# altezza con glide
mf=p.obj("mtof",10,310); p.c(up,0,mf)
pk=p.obj("pack f 10.",10,340); p.c(mf,0,pk,0); p.c(gl,0,pk,1)
fl=p.obj("line~",10,370); p.c(pk,0,fl)
sw=p.obj("saw~",10,400); p.c(fl,0,sw)
ratio=p.obj("expr exp($f1*0.000577623)",100,370,150); p.c(dt,0,ratio)
fq2=p.obj("*~ 1.",100,400); p.c(fl,0,fq2,0); p.c(ratio,0,fq2,1)
sq=p.obj("rect~",100,430); p.c(fq2,0,sq)
# mix delle forme d'onda
inv=p.obj("expr 1.-$f1",200,430); p.c(wv,0,inv)
g1=p.obj("*~ 0.7",10,460); p.c(sw,0,g1,0); p.c(inv,0,g1,1)
g2=p.obj("*~ 0.3",100,460); p.c(sq,0,g2,0); p.c(wv,0,g2,1)
# inviluppo (ampiezza + filtro)
dv=p.obj("/ 127.",300,310); p.c(up,1,dv)
tb=p.obj("t b f",300,340); p.c(dv,0,tb)
dl=p.obj("del 100",380,370); p.c(tb,0,dl); p.c(up,2,dl,1)
z=p.msg("0",380,400); p.c(dl,0,z)
env=p.obj("adsr~ 5 180 0.4 250",300,430,140); p.c(tb,1,env,0); p.c(z,0,env,0)
p.c(at,0,env,1); p.c(de,0,env,2); p.c(su,0,env,3); p.c(rl,0,env,4)
fe=p.obj("*~ 2500",460,460); p.c(env,0,fe,0); p.c(ea,0,fe,1)
cs=p.obj("sig~",560,460); p.c(cu,0,cs)
cc=p.obj("+~",460,490); p.c(fe,0,cc,0); p.c(cs,0,cc,1)
cl=p.obj("clip~ 30 16000",460,520); p.c(cc,0,cl)
lp=p.obj("lores~ 900 0.4",10,520); p.c(g1,0,lp,0); p.c(g2,0,lp,0); p.c(cl,0,lp,1); p.c(rz,0,lp,2)
av=p.obj("*~",10,560); p.c(lp,0,av,0); p.c(env,0,av,1)
ol=p.obj("*~ 0.4",10,590); p.c(av,0,ol,0); p.c(lv,0,ol,1)
p.c(ol,0,p.obj("send~ bus.lead",10,620))
p.save("lead.maxpat")

# ---------------- MIXER (stereo, con send/return) ----------------
p=P()
p.com("MIXER",5,2,bold=True)
p.com("level",70,2); p.com("delay",230,2); p.com("reverb",282,2)
ch=[("drums","bus.drums",0.0,0.15),("bass","bus.bass",0.0,0.1),("sampler","bus.sampler",0.3,0.3),("lead","bus.lead",0.25,0.3)]
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
    if nm=="sampler":   # canale stereo
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
p.bp("drums.maxpat",10,556,420,95)
p.bp("bass.maxpat",440,556,270,105)
p.bp("mod.maxpat",720,556,370,120)
p.bp("arp.maxpat",10,686,430,140)
p.bp("lead.maxpat",450,686,320,110)
p.bp("sampler.maxpat",10,836,470,145)
p.bp("mixer.maxpat",490,836,440,190)
p.save("main.maxpat",(30,30,1250,1040))
print("ok")
