# julius-cy
Adnabod Lleferydd Cymraeg ar gyfer Julius / Welsh Speech Recognition for Julius

([Click Here for English README](README_en.md))

Mae Julius yn feddalwedd adnabod lleferydd LVCSR (large vocabulary speech recognition) cod agored. Yma ceir ffeiliau, sgriptiau yn ogystal â dogfennaeth ar gyfer addasu Julius i ddarparu adnabod lleferydd Cymraeg.

Mae'r rhyddhad cyntaf yn galluogi Julius i adnabod cwestiynau a gorchmynion Cymraeg syml ynghylch y tywydd, newyddion, amser, cerddoriaeth yn ogystal â gofyn am jôc neu ddihareb Cymraeg yn unig. Golygir hyn bod julius-cy yn cyfyngu'r defnyddiwr i lefaru brawddegau a geirfa benodol:

e.e. 

 - "BETH YDY'R TYWYDD HEDDIW?"
 - "BETH YW TYWYDD YFORY?"
 - "BETH YW'R NEWYDDION?"
 - "FAINT O'R GLOCH YDY HI?"
 - "CHWARAEA GERDDORIAETH CYMRAEG"

Bydd fersiynau o julius-cy yn y dyfodol yn ceisio cynorthwyo nodweddion arddweud ac adnabod lleferydd mwy rhydd. 

# Gosod julius-cy ar eich gyfrifiadur
Bydd angen cyfrifiadur gyda system weithredu Linux fel Ubuntu neu Raspberry Pi ar gyfer y cyfarwyddiadau canlynol ar gyfer gosod adnabod lleferydd Cymraeg julius-cy ar eich cyfrifiadur:

```
$ git clone https://github.com/techiaith/julius-cy.git
$ cd julius-cy
$ ./setup.sh
```

Bydd y camau hyn yn gosod meddalwedd sylfaenol Julius ar eich cyfrifiadur yn ogystal â llwytho i lawr a gosod y ffeiliau bellach sydd yn ei addasu ar gyfer gynorthwyo’r Gymraeg. 

# Cychwyn julius-cy

Defnyddiwch y camau canlynol i'w rhoi ar waith o fewn eich amgylchedd:

```
$ ./compile.sh
```

Bydd y sgript yn rhestru'r brawddegau bydd julius-cy yn gallu adnabod:

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

# Rhedeg julius-cy

Cysylltwch meicroffôn i'ch cyfrifiadur a rhedwch y rhaglen syml Python canlynol:

```
$ python julius-cy.py
```
 
Llefarwch unrhyw un o'r brawddegau uchod i'r meicroffon. Dylai'r testun mae julius-cy yn ei gredu y mae wedi ei hadnabod ymddangos ar y sgrin.


# Rhybudd

Gan nad yw'r modelau acwstig eto ddim cystal, mae'n bosib na fydd julius-cy yn adnabod lleisiau rhai unigolion yn llwyddiannus. Os nad ydych chi eisoes wedi cyfrannu eich llais i'n Corpws Lleferydd Paldaruo, yna defnyddiwch ein ap ([http://techiaith.bangor.ac.uk/paldaruo](http://techiaith.bangor.ac.uk/paldaruo)) ar unrhyw ddyfais iOS neu Android er mwyn i ni  wella'r modelau acwstig gyda'ch llais chi. [Darllenwch y cefndir am ragor](CEFNDIR.md)

**Diolch yn fawr!!**

