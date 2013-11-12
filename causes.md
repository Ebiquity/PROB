
=! What's the cause of this !=

\only<2->{
   \vskip .5in
   \hskip 2in
   Is there fix for this?
}



==== Causes of non-reproducibility ====

<<<Images/StoryInFileNames.png,width=10cm>>>

==== David Garvin ====

Five Dimensions of Quality

# Transcendental
# Product 
# User 
# Manufacturing
# Value

==== Transcendental ====

\only<1>{
<[block]{Plato}
A characteristic of an object that could not be described.  But could be learned when one is exposed to a succession of high quality objects.
[block]>
}

\only<2>{
<[block]{Aristotle}
Quality is not an act, but a habit.
[block]>
}

\only<3>{
<[block]{Pirsig}
I think there is such a thing as Quality, but that as soon as you try to define it, something goes haywire.
You can't do it.
[block]>
}

\only<4>{
<[block]{Pirsig}
No way to explain,  but everybody knows it through repeated exposure to low / high quality product
[block]>
}



==== Product: Precise measurement of known variable  ====


\only<1>{
<[block]{Ice Cream}
  More butterfat $ \rightarrow $ higher  quiality 
[block]>
}

\only<2>{
<[block]{Persian rugs}
  More knots per square inch $ \rightarrow $ higher  quiality 
[block]>
}


==== User  ====

\only<1>{
<[block]{}
  More desirable products are of higher quality.
[block]>
}

\only<2>{
<[block]{}
  Better selling products are of higher quality.
[block]>
}



==== Manufacturing ====

\only<1>{
<[block]{}
  Conformance to well defined standard.  
[block]>
}

\only<2>{
<[block]{}
  Lower variance $ \rightarrow $ higher quality.
[block]>
}



==== Value : Monetary ====

\only<1>{
<[block]{}
  More expensive products are of higher quality.
[block]>
}

\only<2>{
<[block]{}
   Ferrari is of higher quality than Pinto.
[block]>
}


=! What is Code Quality? !=


==== Code Quality ====

* External
* Internal


==== External Code Quality ====



==== External Code Quality ====

* <1-> Ad hoc tests
* <2-> QA Tests
* <3-> Regression tests
* <4-> User reports
* <5-> Your boss comes up to you saying : 
*# <6-> All systems are down
*# <7-> The system is crediting wrong accounts
*# <8-> The system is delivering messages to the wrong users 


==== Internal Code Quality ====

When you’re a carpenter making a beautiful chest of drawers, you’re not going to use a piece of plywood on the back, even though it faces the wall and nobody will ever see it. You’ll know it’s there, so you’re going to use a beautiful piece of wood on the back. For you to sleep well at night, the aesthetic, the quality, has to be carried all the way through.

{\vskip 2em \hskip 6em  \it Steve Jobs }

==== Internal Code Quality ====

* <1-> How do we measure it?
* <2-> What's our equivalent of plywood?


==== 7 Axes of Code Quality ====

* <1-> Bad Patterns [ Bugs ] 
* <2-> Bad Style [ Coding Rules ]
* <3-> Tests / Tests coverage 
* <4-> Duplicated Code [ Cut and paste ]
* <5-> Comments
* <6-> Architecture 
** Lack of Cohesion of Methods
** Cicular dependencies 
* <7-> Complexity 
**  God classes
**  God methods 


==== Lack of Cohesion of Methods [LCOM4] ====



=! Code Complexity != 
