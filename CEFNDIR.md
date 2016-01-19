# Cefndir 

Mae julius-cy yn defnyddio dwy elfen wybodaeth bwysig am y Gymraeg er mwyn darparu adnabod lleferydd Cymraeg, sef modelau acwstig a lecsicon ynganu.

### Modelau acwstig 
Mae modelau acwstig yn cynrychioli sain ffonemau Cymraeg. Mae julius-cy yn eu defnyddio i geisio adnabod sain y ffonemau mae'n eu clywed.

Defnyddiwyd Corpws Lleferydd Paldaruo, sef casgliad o recordiadau o siaradwyr yn darllen testunau arbennig i gael enghreifftiau o sain holl ffonemau'r Gymraeg gan nifer helaeth o siaradwyr, gyda gwahanol acenion a graddau o ruglder yn y Gymraeg. Datblygwyd ap ar gyfer dyfeisiau iOS ac Android - Paldaruo - er mwyn adeiladu'r corpws drwy ddulliau torfoli. Gweler: http://techiaith.bangor.ac.uk/paldaruo/

Defnyddiwyd meddalwedd safonol HTK (fersiwn 3.4.1) - gweler http://htk.eng.cam.ac.uk - i brosesu'r recordiadau a hyfforddi'r modelau acwstig Cymraeg. Dewiswyd is-set o'r 36 cyfraniad ansawdd gorau yn y Corpws Lleferydd Paldaruo er mwyn hyfforddi modelau acwstig y fersiwn cyntaf o julius-cy i'w ryddhau. Llwyddodd y modelau acwstig i gyrraedd cyfradd cywirdeb 92% yn ôl ein profion. 

Yn y cyfamser, defnyddiwch yr ap ar unrhyw ddyfais iOS neu Android er mwyn cyfrannau eich llais chi - yn enwedig os nad yw julius-cy yn gweithio cystal gyda'ch llais eich hun. 

### Lecsicon ynganu
Mae'r lecison yn cynnwys rhestr gynhwysfawr o eiriau Cymraeg gyda gwybodaeth ynganu h.y. pa ffonemau mae'r gair yn eu cynnwys.  Dyma enghraifft o'i gynnwys:

```
GWYCH                         [GWYCH]                       g w Y ch                      
GWYCHACH                      [GWYCHACH]                    g w @ ch A ch                 
GWYCHAF                       [GWYCHAF]                     g w @ ch A f                  
GWYCHDER                      [GWYCHDER]                    g w @ ch d E r                
GWYCHDERAU                    [GWYCHDERAU]                  g w @ ch d E r AU             
GWYCHED                       [GWYCHED]                     g w @ ch E d                  
GWYD                          [GWYD]                        g WY d                        
GWYDDA                        [GWYDDA]                      g w @ dd A                    
GWYDDAF                       [GWYDDAF]                     g w @ dd A f                  
GWYDDAI                       [GWYDDAI]                     g w @ dd AI      
```

Mae julius-cy yn defnyddio lecsicon i allu cymharu'r ffonemau mae wedi'u clywed a chanfod y gair union neu agosaf er mwyn ei ddangos i'r defnyddiwr. 

Hefyd o fewn julius-cy, mae'r modelau acwstig a'r lecsicon ynganu ar gael o http://techiaith.cymru/htk


# Adnabod Cwestiynau a Gorchmynion Cymraeg

Mae'r eirfa a'r math o frawddegau mae'r fersiwn cyntaf o julius-cy i'w ryddhau yn eu hadnabod wedi'u manylu yn y ffeiliau `julius.grammar` a `julius.voca`.

Mae `julius.voca` yn cynnwys gwybodaeth am yr eirfa y dylai julius-cy eu hadnabod. Mae pob un gair â gwybodaeth ynganu (o'r lecsicon ynganu) a chategori. e.e. 

```
% GAIR_GORCHYMYN_CHWARAE_CERDDORIAETH
CHWARAEA        ch W A r AE A

% GAIR_GORCHYMYN_DISTAW_CERDDORIAETH
DISTAWA         d I s t A w A 

% GWRTHRYCH_CERDDORIAETH
GERDDORIAETH    g E r dd O r I AE th
FIWSIG          f IW s I g

% ANSODDAIR_CERDDORIAETH
ARAF            A r A f
HAPUS           h A p U s
DAWNSIO         d AW n sh O
CYMRAEG         c @ m r AE g
ROC             r O c   
```

Defnyddir categoriau'r ffeil julius.voca gan y ffeil gramadeg - `julius.grammar` - er mwyn manylu ar adnabod cystrawen brawddegau y dylai julius-cy eu hadnabod e.e.:

```
S : NS_B GORCHYMYN_CERDDORIAETH NS_E

GORCHYMYN_CERDDORIAETH : GAIR_GORCHYMYN_CHWARAE_CERDDORIAETH GWRTHRYCH_CERDDORIAETH
GORCHYMYN_CERDDORIAETH : GAIR_GORCHYMYN_CHWARAE_CERDDORIAETH GWRTHRYCH_CERDDORIAETH ANSODDAIR_CERDDORIAETH
GORCHYMYN_CERDDORIAETH : GAIR_GORCHYMYN_DISTAW_CERDDORIAETH
```

Mae'r fersiwn cyntaf o julius-cy i'w ryddhau yn gallu adnabod cwestiynau a gorchmynion syml ynghylch y tywydd, amser, newyddion, cerddoriaeth, diarhebion a jôcs.
