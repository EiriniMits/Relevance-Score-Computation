# Relevance-Score-Computation

This project was created for academic purposes on the subject of 'Computational Logic and Logic Programming' at the Aristotle University of Thessaloniki.

This is a program of an IT scientist who wishes to testify his / her paper at a scientific conference. The conference is divided into more specific sessions. Each session has a distinct theme, which is illustrated by both the general title of the session and the individual thematic objects that describe in particular scientific objects that will be presented in the session.

A scientist who wants to submit a paper to the conference will be asked to choose one of the sessions that is based on the subject of his / her paper.

The program reads as input keywords describing the subject of the paper and prints in descending order the most relevant sessions together with the corresponding relative score.

## **Examples:**
* **?- query(['rule exceptions']).**
```
Session: Rules and Norms

       Relevance = 2005.5
       
Session: RuleML-2010 Challenge

       Relevance = 1005.5
       
Session: Rule-Based Distributed/Multi-Agent Systems 

       Relevance = 1005.5
       
Session: Rules and Inferencing

       Relevance = 1005.0
       
Session: Rules and Uncertainty

       Relevance = 1003.0
       
Session: Rule-based Event Processing and Reaction Rules

       Relevance = 1003.0
        
Session: Rule Transformation and Extraction 

       Relevance = 1003.0
        
Session: General Introduction to Rules

       Relevance = 1002.5
       
Session: Rules; Semantic Technology; and Cross-Industry 

       Relevance = 1002.0
       
true.
```

* **?- query([exceptions-2,rule]).**
```
Session: Rules and Norms

       Relevance = 3010
       
Session: RuleML-2010 Challenge

       Relevance = 2011
       
Session: Rule-Based Distributed/Multi-Agent Systems 

       Relevance = 2011
       
Session: Rules and Inferencing

       Relevance = 2010
       
Session: Rules and Uncertainty

       Relevance = 2006
       
Session: Rule-based Event Processing and Reaction Rules 

       Relevance = 2006
Session: Rule Transformation and Extraction 

       Relevance = 2006
       
Session: General Introduction to Rules

       Relevance = 2005
       
Session: Rules; Semantic Technology; and Cross-Industry

       Relevance = 2004
       
true.

```
* **?- query([exceptions,rule-2]).**
```
Session: RuleML-2010 Challenge

       Relevance = 4022
       
Session: Rule-Based Distributed/Multi-Agent Systems 

       Relevance = 4022
       
Session: Rules and Inferencing

       Relevance = 4020
       
Session: Rules and Norms

       Relevance = 4017
       
Session: Rules and Uncertainty

       Relevance = 4012
       
Session: Rule-based Event Processing and Reaction Rules 

       Relevance = 4012
       
Session: Rule Transformation and Extraction 

       Relevance = 4012
       
Session: General Introduction to Rules

       Relevance = 4010
       
Session: Rules; Semantic Technology; and Cross-Industry

       Relevance = 4008
       
true.
```
