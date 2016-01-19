# julius-cy
Adnabod Lleferydd Cymraeg ar gyfer Julius / Welsh Speech Recognition for Julius

Julius is an open source large vocabulary continuous speech recognition (LVCSR) decoder software. This project contains the files, scripts as well as documentation that enables Julius to provide speech recognition for Welsh.

The first release allows Julius to recognize very simple questions and commands in Welsh concerning the weather, news, time, music as well as asking for a joke or a proverb. This means that julius-cy is limited to recognising specific sentences and vocabulary:

e.g. 

 - "BETH YDY'R TYWYDD HEDDIW?"    ( "*What's today's weather?*" )
 - "BETH YW TYWYDD YFORY?"  ( "*What's tomorrow's weather?*" )
 - "BETH YW'R NEWYDDION?"   ( "*What's the news?*" )
 - "FAINT O'R GLOCH YDY HI?"    ( "*What time is it?*" )
 - "CHWARAEA GERDDORIAETH CYMRAEG"    ( "*Play Welsh music?*" )

Future versions of julius-cy will attempt to support recognising dictation and more varied speech. 

# Installing julius-cy on your computer
You will need a computer with a Linux based operating system such as Ubuntu or a Raspberry Pi in order to use the below steps:

```
$ git clone https://github.com/techiaith/julius-cy.git
$ cd julius-cy
$ ./setup.sh
```

These instructions install not only the Julius software on your computer, but also download all the necessary files that are needed to customize Julius for Welsh.

# Starting julius-cy

Use the following steps to try out the recogniser on your computer:

```
$ ./compile.sh
```

This script will list all the sentences that julius-cy will be able to recognize:

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

# Running julius-cy

Enable or connect a microphone to your computer and execute the following simple Python based program:

```
$ python julius-cy.py
```
 
You can now speak any of the above sentences. The text that julius-cy believes it has recognized will appear on the screen.


# Warning

Since this release uses initial versions of Welsh language acoustic models, it is possible that julius-cy will not successfully recognize everyone's speech. If this is the case, and you have not already contributed your voice to our Paldaruo Speech Corpus, then please use our Paldaruo ap ([http://techiaith.bangor.ac.uk/paldaruo](http://techiaith.bangor.ac.uk/paldaruo)) on any iOS or Android device so that we can improve the acoustic models with your voice. 

**Diolch yn fawr!!**
