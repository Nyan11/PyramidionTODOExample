Class {
	#name : #TodoCommandCollection,
	#superclass : #PyramidCommand,
	#category : #Todo
}

{ #category : #'as yet unclassified' }
TodoCommandCollection >> saveStatesOf: aCollection withCommand: aCommand withArguments: anArguments [

	| mementos |
	mementos := aCollection collect: [ :each |
		            PyramidCommandMemento new
			            command: aCommand;
			            target: each;
			            arguments: anArguments;
			            yourself ].
	mementos size = 1 ifTrue: [ ^ mementos first ].
	^ PyramidCompositeMemento new
		  mementos: mementos;
		  yourself
]
