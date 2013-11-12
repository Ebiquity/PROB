
==== ====

The sanction which the Society gives to the work, now published under its auspices, extend only to the novelty, ingenuity, or importance of the several memoirs which it contains.  Responsibility concernig the truth of facts, the soundness of reason, in the accuracy of calculations is wholly disclaimed: and must rest alone, on the knowledge, judgement, or ability of the authors who have respectfully furnished such communications.

\only<2>{
\vskip .2in
\hskip .5in {\it The Memoirs of the Literary Society of Machester, !1785! }
}

==== Duke controversy ====

* <1-> Very prominent research lab.  Huge grants.
* <2-> Published over 20 papers. Prestigious journals.
* <3-> However, !nobody could reproduce!.
* <4-> Fallout
*# <5-> !Retraction of papers!
*# <6-> !\$1 Million! grant returned
*# <7-> !Resignations!
*# <8-> !Investigation still ongoing!
   


==== What is most downloaded paper from PLoS Medicine ? ====

\only<2>{ "Why Most Published Research Findings Are False", Ioannidis, John P. A., 2005 }


=! Do we have this problem at UMBC? !=

==== Do we have this problem at UMBC? ==== 

Qoutes heard from fellow students:

{\vskip .1in}

\only<1->{
A: You run your calculations on the data in this file.  Where do these numbers come from?

B: ''I extracted them from the main dataset using the shell commands.''
\vskip .1in
}

\only<2->{
A: So, which commands did you use to extract the data?

B: !I don't remeber!.

}



==== Do we have this problem at UMBC? ==== 

Qoutes heard from fellow students:

{\vskip .1in}

I thought I was done with my thesis, but my advisor wants me to re-do the same experiments on 4 more datasets.  I can't believe he is asking that.  That's like several months of work.  I'll never be done.


==== Do we have this problem at UMBC? ==== 

Qoutes heard from fellow students:

{\vskip .2in}

P: So here is the dataset, I copied everything to the public directory on our cluster.  Here are the genetic profile data and here is the file with the class labels. 

{\vskip .1in}

Q: So, how do you know which labels go with which profiles?

{\vskip .1in}

P: Ahh, sorry forgot the mapping file, !let me email it to you!.




==== Do we have this problem at UMBC? ==== 

Qoutes heard from fellow students:

{\vskip .2in}

P: Here is a great tool some former students wrote few years ago.  Why don't you run it again to get the fresh data for current research.

{\vskip .1in}

A: Sure, how hard could this be.

{\vskip .1in}

A: Ooops,  it doesn't compile.  The server can't initialize the databse,  SQL scripts are failing.
B: I don't think we can get it running any time soon.


==== Modern quote ====

In my own experience, error is ubiquitous in scientific computing, and one needs to work very diligently and energetically to eliminate it. One needs a very clear idea of what has been done in order to know where to look for likely sources of error. I often cannot really be sure what a student or colleague has done from his/her own presentation, and in fact often his/her description does not agree with my own understanding of what has been done, once I look carefully at the scripts. Actually, I find that researchers quite generally forget what they have done and misrepresent their computations.


\vskip .2in
\hskip .1in David L. Donoho (2010). ''An invitation to reproducible computational research.'' Biostatistics Volume 11, Issue 3 Pp. 385-388



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
