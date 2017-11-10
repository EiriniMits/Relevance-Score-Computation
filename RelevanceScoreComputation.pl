% author Eirini Mitsopoulou


% Facts about sessions, and respective topics
session('Rules; Semantic Technology; and Cross-Industry Standards',
	['XBRL - Extensible Business Reporting Language',
	 'MISMO - Mortgage Industry Standards Maintenance Org',
	 'FIXatdl - FIX Algorithmic Trading Definition Language',
	 'FpML - Financial products Markup Language',
	 'HL7 - Health Level 7',
	 'Acord - Association for Cooperative Operations Research and Development (Insurance Industry)',
	 'Rules for Governance; Risk; and Compliance (GRC); eg; rules for internal audit; SOX compliance; enterprise risk management (ERM); operational risk; etc',
	 'Rules and Corporate Actions']).
session('Rule Transformation and Extraction',
	['Transformation and extraction with rule standards; such as SBVR; RIF and OCL',
	 'Extraction of rules from code',
	 'Transformation and extraction in the context of frameworks such as KDM (Knowledge Discovery meta-model)',
	 'Extraction of rules from natural language',
	 'Transformation or rules from one dialect into another']).
session('Rules and Uncertainty',
	['Languages for the formalization of uncertainty rules',
	 'Probabilistic; fuzzy and other rule frameworks for reasoning with uncertain or incomplete information',
	 'Handling inconsistent or disparate rules using uncertainty',
	 'Uncertainty extensions of event processing rules; business rules; reactive rules; causal rules; derivation rules; association rules; or transformation rules']).
session('Rules and Norms',
	['Methodologies for modeling regulations using both ontologies and rules',
	 'Defeasibility and norms - modeling rule exceptions and priority relations among rules',
	 'The relationship between rules and legal argumentation schemes',
	 'Rule language requirements for the isomorphic modeling of legislation',
	 'Rule based inference mechanism for legal reasoning',
	 'E-contracting and automated negotiations with rule-based declarative strategies']).
session('Rules and Inferencing',
	['From rules to FOL to modal logics',
	 'Rule-based non-monotonic reasoning',
	 'Rule-based reasoning with modalities',
	 'Deontic rule-based reasoning',
	 'Temporal rule-based reasoning',
	 'Priorities handling in rule-based systems',
	 'Defeasible reasoning',
	 'Rule-based reasoning about context and its use in smart environments',
	 'Combination of rules and ontologies',
	 'Modularity']).
session('Rule-based Event Processing and Reaction Rules',
	['Reaction rule languages and engines (production rules; ECA rules; logic event action formalisms; vocabularies/ontologies)',
	 'State management approaches and frameworks',
	 'Concurrency control and scalability',
	 'Event and action definition; detection; consumption; termination; lifecycle management',
	 'Dynamic rule-based workflows and intelligent event processing (rule-based CEP)',
	 'Non-functional requirements; use of annotations; metadata to capture those',
	 'Design time and execution time aspects of rule-based (Semantic) Business Processes Modeling and Management',
	 'Practical and business aspects of rule-based (Semantic) Business Process Management (business scenarios; case studies; use cases etc)']).
session('Rule-Based Distributed/Multi-Agent Systems',
	['rule-based specification and verification of Distributed/Multi-Agent Systems',
	 'rule-based distributed reasoning and problem solving',
	 'rule-based agent architectures',
	 'rules and ontologies for semantic agents',
	 'rule-based interaction protocols for multi-agent systems',
	 'rules for service-oriented computing (discovery; composition; etc)',
	 'rule-based cooperation; coordination and argumentation in multi-agent systems',
	 'rule-based e-contracting and negotiation strategies in multi-agent systems',
	 'rule interchange and reasoning interoperation in heterogeneous Distributed/Multi-Agent Systems']).
session('General Introduction to Rules',
	['Rules and ontologies',
	 'Execution models; rule engines; and environments',
	 'Graphical processing; modeling and rendering of rules']).
session('RuleML-2010 Challenge',
	['benchmarks/evaluations; demos; case studies; use cases; experience reports; best practice solutions (design patterns; reference architectures; models)',
	 'rule-based implementations; tools; applications; demonstrations engineering methods',
	 'implementations of rule standards (RuleML; RIF; SBVR; PRR; rule-based Event Processing languages; BPMN and rules; BPEL and rules); rules and industrial standards (XBRL; MISMO; Accord) and industrial problem statements',
	 'Modelling Rules in the Temporal and Geospatial Applications',
	 'temporal modelling and reasoning; geospatial modelling and reasoning',
	 'cross-linking between temporal and geospatial knowledge',
	 'visualization of rules with graphic models in order to support end-user interaction',
	 'Demos related to various Rules topics',
	 'Extensions and implementations of W3C RIF',
	 'Editing environments and IDEs for Web rules',
	 'Benchmarks and comparison results for rule engines',
	 'Distributed rule bases and rule services',
	 'Reports on industrial experience about rule systems']).

%print two lists with the same Lenght at the same time (Title - Relevance)
print_TwoLists([],[]).
print_TwoLists([X|Y],[X2|Y2]):- write("Session: "),write(X2),nl,write("        Relevance = "),write(X),nl,print_TwoLists(Y,Y2).

%create a list filled with zeros that has the same Lenght as Titles list
zeros_List([],[]).
zeros_List([_|K],[X|Y]):- append([], 0, X),
zeros_List(K,Y).

%create a list of lists filled with zeros, where the length of the each list corresponds to each Topics list lenght of each season
zeros_ListofLists([],[],[]).
zeros_ListofLists([_|K],[Topic1|Topic2],[X|Y]):- zeros_List(Topic1,List),append([], List, X),
zeros_ListofLists(K,Topic2,Y).

%take the Nth list of a list of lists
take_ListofLists(1, [H|_], H).
take_ListofLists(N,[H|T],[H|R]):- N=:=1,M is N-1,take_ListofLists(M,T,R). %if N==1 get this list
take_ListofLists(N,[_|T],R):- N>1,M is N-1,take_ListofLists(M,T,R). %else N--  and continue with the next list

%sum all values of 2 lists with the same Lenght
list_sum([],[],[]).
list_sum([H1|T1],[H2|T2],[X|L3]):- list_sum(T1,T2,L3), X is H1+H2.

%sum all values of 2 list of lists with the same Lenght
listofLists_sum([],[],[]).
listofLists_sum([H1|T1],[H2|T2],[X|L3]):- list_sum(H1,H2,H3),append([], H3, X),
listofLists_sum(T1,T2,L3).

%insert sorting(ascending) Relevance list and at the same time, according to Relevance list permutations, change Title list
isort([],[],[],[]).
isort([Head|Tail],Result1,[Head2|Tail2],Result2) :- isort(Tail,SortedTail,Tail2,SortedTail2),
insert(Head,SortedTail,Result1,Head2,SortedTail2,Result2).
insert(X,[],[X],X2,[],[X2]).
insert(X,[Y|Tail],[X,Y|Tail],X2,[Y2|Tail2],[X2,Y2|Tail2]) :- X > Y.
insert(X,[Y|Tail],[Y|Z],X2,[Y2|Tail2],[Y2|Z2]) :- X =< Y,
insert(X,Tail,Z,X2,Tail2,Z2).

%calculate relevance list
find_Relevance([],[],[],[]).
find_Relevance([X|Y],[Max1|Max2],[Sum1|Sum2],[Relevance1|Relevance2]):- max_list(Max1,Max), %find the max of Topics list score of a certain session
((X>Max)-> Result is 1000*X + Sum1       % if max score of Topics is smaller than Title score
;Result is 1000*Max + Sum1),append([], Result, Relevance1),
find_Relevance(Y,Max2,Sum2,Relevance2).

%find Topics score according to one Keyword
find_Topics(_,[],_,_,[]).
find_Topics([Z|K],[X|Y],TempL,Len,[H|H1]):- downcase_atom(X,Topic), %change all capital to small letters
((Len =:= 2)->atomic_list_concat(K, ' ', A),
atom_number(A, B),M is B,atom_number(P, M),atomic_list_concat(O, ' ', P)
; M is 1,atom_number(P, M),atomic_list_concat(O, ' ', P)),
(sub_atom(Topic,_Before,_Length,_After,Z)->append(TempL, O, List),append([], M, H)
;append(TempL, [0], List),append([], 0, H)),
find_Topics([Z|K],Y,List,Len,H1).

%find Titles score according to one Keyword
find_Titles(_,[],_,_,[],_,_,[],[]).
find_Titles([Z|K],[X|Y],TempL,Len,[H|L],Topics,Counter,[H2|L2],[H3|L3]):- downcase_atom(X,Title), %change all capital to small letters
((Len =:= 2)->atomic_list_concat(K, ' ', A),atom_number(A, B),M is 2*B,atom_number(P, M),atomic_list_concat(O, ' ', P) %if keyword has weight, multiply weight with 2 because Titles score count twice
; M is 2,atom_number(P, M),atomic_list_concat(O, ' ', P)), %else Title score is just 2 (2*1)
(sub_atom(Title,_Before,_Length,_After,Z)->append(TempL, O, List),append([], M, H) %if Title contains the Keyword, add score in the Titles score list
;append(TempL, [0], List),append([], 0, H)), %else add 0 as score
take_ListofLists(Counter,Topics,ListofLists),find_Topics([Z|K],ListofLists,[],Len,TopicL), %take a certain(Counter) season list, of Topics listoflists and get the Topics score list(TopicL) about this season
append([], TopicL, H3),sum_list(TopicL,Sum_Topics),append([], Sum_Topics, H2),Counter2 is Counter+1, %sum all the scores of Topics score list(TopicL)
find_Titles([Z|K],Y,List,Len,L,Topics,Counter2,L2,L3).

%find Seasons score according to all Keywords
keywords_List([],_,_,_,_,_).
keywords_List([X|Y],Titles,Topics,TempL1,TempL2,TempLOL):- %for each Keyword of the ListOfKeywords
format(atom(A), "~w", X),atomic_list_concat(K, -, A), % separate Keyword if contains '-' and create a list with lenght 2, else the list will have lenght 1
length(K, Lenght),find_Titles(K,Titles,[],Lenght,L1,Topics,1,Sum_Topics,LOL), % L1(Titles score list),Sum_Topics(sum Topics Score list),LOL(list of lists with analytic Topic scores)
list_sum(TempL1,L1,L11),list_sum(TempL2,Sum_Topics,Sum_Topics2),listofLists_sum(TempLOL,LOL,LOL2), %for each loop we sum the previous with the new lists
(last([X|Y],X)->list_sum(L11,Sum_Topics2,Sum_L),find_Relevance(L11,LOL2,Sum_L,Relevances), %if this is the last loop find Relevances
isort(Relevances,Final1,Titles,Final2),print_TwoLists(Final1,Final2);true), %insert sort Relevances-Topics and print the results
keywords_List(Y,Titles,Topics,L11,Sum_Topics2,LOL2).

%preparation of phrases
preparation2([],[]).
preparation2([X|Y],[X1|Y1]):- atom_concat(X,'-0.5', FinalAtom),append([], FinalAtom, X1),
preparation2(Y,Y1).

%preparation of Keywords
preparation([],[],_).
preparation([X|Y],[X1|Y1],TempL):-  %for each Keyword of ListOfKeywords
(compound(X)->append(TempL, [X], List)  %if Keyword is compound(contains '-'), add it in the List
;(sub_atom(X,_Before,_Length,_After,' ')->atomic_list_concat(K,' ', X),  %if Keyword contains space, it is a phrase
preparation2(K,L),append([X], L, List2),append(TempL, List2, List)  %call preparation2 to create a Keyword list about phrase and add this list in the List
;append(TempL, [X], List))),
(last([X|Y],X)->append([], List, X1);append([], [], X1)),  %if this is the last Keyword of ListOfKeywords(last loop) add the created List into a FinalList we will return
preparation(Y,Y1,List).

query(ListOfKeywords):-
findall(Title, session(Title,_),Titles), %create a list that contains all the Titles of each session
findall(Topic, session(_,Topic),Topics), %create a list of lists that contains all the Topics of each session
zeros_List(Titles,ZeroL),zeros_ListofLists(Titles,Topics,ZeroLOL), %create temp zero list and temp zero list of lists
preparation(ListOfKeywords,ListOfKeywords2,[]),
length(ListOfKeywords, Lenght),take_ListofLists(Lenght,ListOfKeywords2,ListOfKeywords3),
keywords_List(ListOfKeywords3,Titles,Topics,ZeroL,ZeroL,ZeroLOL).
