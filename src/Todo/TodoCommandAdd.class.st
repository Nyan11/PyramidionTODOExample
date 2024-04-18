Class {
	#name : #TodoCommandAdd,
	#superclass : #TodoCommandCollection,
	#category : #Todo
}

{ #category : #testing }
TodoCommandAdd >> canBeUsedFor: anObject [

	^ true
]

{ #category : #testing }
TodoCommandAdd >> commandInverse [

	^ TodoCommandRemove new
]

{ #category : #testing }
TodoCommandAdd >> setValueFor: anObject with: aTodoList [

	aTodoList addTodo: anObject
]
