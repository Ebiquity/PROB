=! So, what's next? !=

==== Continuous integration ====

* <1-> CI server for the group
** <2-> Efforts onging for more than a year
* <3->Have some of my experiments in private CI
* <4->So far only for the unit tests

==== Continuous integration ====

{<<<Images/Own_Pig.png,width=12cm,height=7cm>>>}


==== Intermediate results storage : ZFS ====

* <2-> Deplication engine
* <3-> BSD/Solaris only
* <4-> Linux been approved recently
* <5-> Linux own file system BTRFS

==== Intermediate results storage : Git-Annex ====

* <2-> Indepdendent of OS / FS
* <3-> Replication features
* <4-> !Not git!
* <5-> Uses git to store metadata only
* <6-> Has its own content storage mecahnism
* <7-> Like Git addresses the files by their hash sums

==== Experiment assessment: TestKraut ====

* <2-> Testing framework for models
* <3-> Assumes some results will be good some bad
* <4-> Collects statistics on performance
* <5-> Tests pass when them meet certain threshold

==== Future work ====

* Bring in the rest of the tools
* Build end-to end pipeline

==== Future work ====

\only<1>{<<<Images/MyPipeLine.png,width=11cm,height=7cm>>>}

=! ??? != 




=! Thank you != 

