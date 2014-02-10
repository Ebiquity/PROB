
=! PROB !=

\uncover<2>{A tool for tracking !P!rovenance of data and ensuring !R!eproducibility !o!f !B!ig data experiments.}


==== What it does? ====

* Keep track of artifacts
** At the intake
** In transfer
** On the cluster
* Keep track of computation
** Scripts
** Interactive
* Keep track of output
** Files
** Console

==== What it does !NOT!? ====

* Track data in relational databases
* General purpose tool
** Only PIG workflows
* Prevent from malicious tampering
* Full reproducibility solution


==== What does it stand on? ====

* W3C PROV
** Semantic Web RDF
* Git
** Git-Annex
** Git2Prov
* Hadoop
** PIG

==== What is inspired by?  ====

* Continuous Integration
* NiPype
* Research Objects



=! How does it work? !=

==== How does it work? ====[fragile]

!Example!

Given a text file. Count a frequency of each word.

\begin{lstlisting}
A = load '/data/input.txt';
B = foreach A generate flatten(TOKENIZE($0)) as word;
C = group B by word;
D = foreach C generate COUNT(B), group;
Dump D ;
\end{lstlisting}

==== How does it work? ==== 

{<<<Images/PipeLine-HighLite.pdf,width=12cm,height=7cm>>>}


==== How does it work? ====[fragile]

!Example!

Given a text file. Count a frequency of each word.

\begin{lstlisting}
A = load '/data/input.txt';
B = foreach A generate flatten(TOKENIZE($0)) as word;
C = group B by word;
D = foreach C generate COUNT(B), group;
Dump D ;
\end{lstlisting}


!Need to track provenance of!:

\only<1> {
* Input file
** At the intake
** On the cluster
}
\only<2> { 
* Processing script
** As script
** As interactive commands
 }
\only<3> {
* Output
** To the console
** To the file 
}


=! What are the records? !=

==== What are the records? ====

!Artifacts!

* Git history
* Git-annex hashes
* Git2Prov records
* Tree-IDs


==== What are the records? ====

!Modules analyses !

* Modules
** Executables
** Interactive commands
** Workflow graphs
* Analyses
** Environment
** Parameters
** Input linkage
** Output linkage


==== What are the records? ====

!Output!

* Files
* Console

=! What do records look like? !=

==== What do records look like? ====[fragile]

!Artifacts: Git Commits!
 
\begin{lstlisting}[basicstyle=\LSTfont]
git:commit-a2e1  a  prov:Activity ;
  prov:endedAtTime "2013-05-21T09:08:21.000Z"^^xsd:dateTime ;
  prov:qualifiedAssociation [ a prov:Association ; 
     prov:agent git:user-VladKorolev ; 
     prov:hadRole "author, committer"@en ] ;
  prov:used	git:file-word-count-pig_commit-a2e1 ;
  prov:wasAssociatedWith git:user-VladKorolev ;
  prov:wasInformedBy git:commit-a2e1 ;
  rdfs:label	"update"@en .
  
git:file-word-count-pig prov:Entity ;
   rdfs:label  "word-count-pig"@en .
 
git:file-word-count-pig_commit-a2e1 a prov:Entity ;
   prov:qualifiedAttribution	[    a prov:Attribution ; 
          prov:agent git:user-VladKorolev ; 
          a "authorship"@en ] .
\end{lstlisting}

==== What do records look like? ====[fragile]

!Artifacts: Git Tree IDs!

\begin{lstlisting}[basicstyle=\LSTfont]
prob:git-tree-23442   a  prob:git-tree ;
       prov:wasGeneratedBy     git:commit-a2e1 ;
       prov:wasGeneratedBy     git:commit-3455 . 
\end{lstlisting}


* Numbers are the hashes of the artifacts

==== What do records look like? ====[fragile]

!Executions and modules !
    
\begin{lstlisting}[basicstyle=\LSTfont]
prob:analysis_11299    a  prob:analysis ;
	prob:  module   module-2302 ;
	n:duration  20s ;
	n:wd   /home/user1 ;
	n:ret-code    15 ;
	n:platform     MacOS ;
	n:platofrmVersion 10.5.0.2 ;
	prob:treeId   prob:git-23442 ;
	prob:isClean  y ;
	prob:input    prob:input-3579 ;
	prob:output  prob:output-4593	 ;
	prob:hdfs-map  file-hdfs-entity-map-22333 .
	
\end{lstlisting}


\begin{lstlisting}[basicstyle=\LSTfont]
prob:module_23111  a prob:module ;
	prov:Entity  file-word-count-pig_commit-a2e1;  
	prob:Dependency  prob:module_92234 .
   \end{lstlisting}
 

==== What do records look like? ====[fragile]

!Output !
    

   \begin{lstlisting}[basicstyle=\LSTfont]
prob:input_9322  a   prob:input ;
     prob:parameter_1   "dataFile.tsv" ;
     prob:parameter_2   "10" .
     
prob:output_11234  a prob:output ;
     prob:consoleOutput_23222 .
     
prob:consoleOutput_3322 a prob:console ;
     prob:run_222_line_1    "dog 34334343" ;
     prob:run_222_line_2    "cat 123344" .
     
   \end{lstlisting}

==== Big Picture ====[fragile]

{<<<Images/analysisRec.pdf,width=12cm,height=7cm>>>}

=! Implementation Details !=

==== Implementation Details ==== 

* Instrumented PIG interpreter
** Substitute input file names with artifact-ids
** Modified ls command
** Modified REPL loop to capture state
** Keep track of files written
** Capture console output
** Extract the workflow graph

   
=! ! ??? ! != 

=! ! The End. ! != 

How to find us: \\ ~ \\

{ \huge 
http://ebiquity.org \\
http://github.com/Ebiquity/PROB \\
}





