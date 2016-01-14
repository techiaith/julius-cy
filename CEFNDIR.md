# Cefndir 

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

Mae'r eirfa a'r fath o frawddegau mae'r rhyddhad cyntaf o julius-cy yn eu hadnabod wedi eu manylu yn y ffeiliau `julius.grammar` a `julius.voca`.

Mae `julius.voca` yn cynnwys gwybodaeth am y eirfa dylid julius-cy adnabod. Mae pob un air â wybodaeth ynganu (o'r lecsicon ynganu) a chategori. e.e. 

...

Defnyddir y categoriau'r ffeil julius.voca gan y ffeil gramadeg - `julius.grammar` - er mwyn manylu adnabod cystrawen brawddegau dylid julius-cy adnabod e.e.:

....

Mae'r rhyddhad cyntaf o julius-cy yn gallu adnabod cwestiynau a gorchmynion syml ynghylch y tywydd, amser, newyddion, cerddoriaeth, diarhebion a jôcs.
