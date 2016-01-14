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

# Gwybodaeth Cefndir Addasiadau Cymreigio

Mae julius-cy yn defnyddio ddwy elfen gwybodaeth pwysig am y Gymraeg er mwyn darparu adnabod lleferydd Cymraeg, sef modelau acwstig a lecsicon ynganu.

### Modelau acwstig 
Mae modelau acwstig yn cynrychioli sain ffonemau Cymraeg. Mae julius-cy yn eu defnyddio i geisio adnabod sain y ffonemau mae'n clywed.

Defnyddiwyd Corpws Lleferydd Paldaruo, sef casgliad o recordiadau o siaradwyr yn darllen testunau arbennig am enghreifftiau o sain holl ffonemau'r Gymraeg gan nifer mwyaf o siaradwyr, acenion a gallu Cymraeg. Ddatblygwyd ap ar gyfer ddyfeisiadau iOS ac Android - Paldaruo - er mwyn adeiladu'r corpws drwy ddulliau torfoli. Gweler: http://techiaith.bangor.ac.uk/paldaruo/

Defnyddiwyd y meddalwedd safonol HTK (fersiwn 3.4.1) - gweler http://htk.eng.cam.ac.uk - i brosesu'r recordiadau a hyfforddi'r modelau acwstig Cymraeg. Dewiswyd is-set o'r 36 cyfraniad ansawdd gorau'r Corpws Lleferydd Paldaruo er mwyn hyfforddi modelau acwstig y rhyddhad cyntaf o julius-cy. Llwyddodd y modelau acwstig i gyrraedd cyfradd cywirdeb 92% yn ôl ein profion. 

Yn y cyfamser, defnyddiwch yr ap ar unrhyw ddyfais iOS neu Android er mwyn cyfrannau eich llais chi - yn enwedig os nad yw julius-cy yn gweithio cystal gyda'ch lais. 


### Lecsicon ynganu
Dyma restr o oll eiriau'r Gymraeg gyda gwybodaeth ynganu h.y. pa ffonemau mae'r gair yn cynnwys.  Dyma enghraifft o'i gynnwys:

.....

Mae julius-cy yn defnyddio lecsicon i allu cymharu'r ffonemau mae wedi eu clywed a chanfod y gair union neu agosaf er mwyn ei ddangos i'r defnyddiwr. 

Yn ogystal o fewn julius-cy, mae'r modelau acwstig a'r lecsicon ynganu ar gael o http://techiaith.cymru/htk


# Adnabod Cwestiynau a Gorchmynion Cymraeg

Mae'r ffeiliau `julius.grammar` a `julius.voca` yn cynnwys gwybodaeth am yr eirfa a chystrawen syml defnyddir gan Julius i hwyluso adnabod cwestiynau a gorchmynion ynghylch y tywydd, amser, newyddion, cerddoriaeth, diarhebion a jôcs.

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


 
