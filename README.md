# julius-cy
Adnabod Lleferydd Cymraeg ar gyfer Julius / Welsh Speech Recognition for Julius

([Click Here for English README](README_en.md))

Mae Julius yn feddalwedd adnabod lleferydd LVCSR (large vocabulary speech recognition) cod agored. 
Yma ceir ffeiliau, sgriptiau yn ogystal a ddogfennaeth ar gyfer ddarparu adnabod lleferydd Cymraeg.

Mae'r project hon yn defnyddio allbynnau o brojectau eraill Uned Technolegau Iaith Prifysgol Bangor, gan gynnwys modelau acwstig â hyfforddwyd gyda'r corpws lleferydd Paldaruo a lecsicon ynganu Cymraeg. 

# Gosod yr Amgylchedd Adnabod Lleferydd
Bydd angen cyfrifiadur Linux fel Ubuntu neu Raspberry Pi ar gyfer y cyfarwyddiadau canlynol.

Dylid defnyddio'r camau canlynol i osod adnabod lleferydd Cymraeg Julius ar eich cyfrifiadur: 

```
$ git clone https://github.com/techiaith/julius-cy.git
$ cd julius-cy
$ ./setup.sh
```

Mae'r camau hyn yn gosod Julius ar eich cyfrifiadur yn ogystal a llwytho i lawr a gosod modelau acwstig a'r lecsicon ynganu Cymraeg ar ffurf addas i Julius.

# Adnabod Cwestiynau a Gorchmynion Cymraeg

Mae'r ffeiliau `julius.grammar` a `julius.voca` yn cynnwys gwybodaeth am yr eirfa a cystrawen syml defnyddir gan Julius i hwyluso adnabod cwestiynau a gorchmynion ynghylch y tywydd, amser, newyddion, cerddoriaeth, diarhebion a jôcs.

Defnyddiwch y camau canlynol i'w rhoi ar waith o fewn eich amgylchedd:

```
$ ./compile.sh
```

Bydd y sgript yn rhestru'r brawddegau bydd Julius Cymraeg yn gallu adnabod:

```
pi@raspberrypi:~/src/julius-cy $ ./compile.sh 
julius.grammar has 21 rules
julius.voca    has 28 categories and 39 words
---
Now parsing grammar file
Now modifying grammar to minimize states[8]
Now parsing vocabulary file
Now making nondeterministic finite automaton[37/37]
Now making deterministic finite automaton[36/36] 
Now making triplet list[36/36]
28 categories, 36 nodes, 49 arcs
-> minimized: 22 nodes, 35 arcs
---
generated: julius.dfa julius.term julius.dict
Reading in term file (optional)...done
  BETH FYDD TYWYDD FORY 
  BETH FYDD TYWYDD YFORY 
  BETH OEDD NEWYDDION DDOE 
  BETH OEDD PENAWDAU DDOE 
  BETH OEDD Y NEWYDDION DDOE 
  BETH OEDD Y PENAWDAU DDOE 
  BETH YDY'R NEWYDDION 
  BETH YDY'R PENAWDAU 
  BETH YDY'R TYWYDD FORY 
  BETH YDY'R TYWYDD HEDDIW 
  BETH YDY'R TYWYDD YFORY 
  BETH YW TYWYDD FORY 
  BETH YW TYWYDD HEDDIW 
  BETH YW TYWYDD YFORY 
  BETH YW'R NEWYDDION 
  BETH YW'R NEWYDDION HEDDIW 
  BETH YW'R PENAWDAU 
  BETH YW'R PENAWDAU HEDDIW 
  BETH YW'R TYWYDD FORY 
  BETH YW'R TYWYDD HEDDIW 
  BETH YW'R TYWYDD YFORY 
  CHWARAEA FIWSIG 
  CHWARAEA FIWSIG ARAF 
  CHWARAEA FIWSIG CYMRAEG 
  CHWARAEA FIWSIG DAWNSIO 
  CHWARAEA FIWSIG HAPUS 
  CHWARAEA FIWSIG ROC 
  CHWARAEA GERDDORIAETH 
  CHWARAEA GERDDORIAETH ARAF 
  CHWARAEA GERDDORIAETH CYMRAEG 
  CHWARAEA GERDDORIAETH DAWNSIO 
  CHWARAEA GERDDORIAETH HAPUS 
  CHWARAEA GERDDORIAETH ROC 
  DISTAWA 
  DYWEDA DIHAREB 
  DYWEDA JÔC 
  FAINT O'R GLOCH YDY HI 
  FAINT O'R GLOCH YW HI 
  MACSEN 
  RHO DIHAREB 
----- 
28 categories, 39 words
DFA has 22 nodes and 35 arcs
Stat: init_voca: read 39 words
no further sentence in the last 300 trial
```


 
