Class {
	#name : #TodoCommandRemove,
	#superclass : #TodoCommandCollection,
	#category : #Todo
}

{ #category : #testing }
TodoCommandRemove >> canBeUsedFor: anObject [

	^ true
]

{ #category : #testing }
TodoCommandRemove >> commandInverse [

	^ TodoCommandAdd new
]

{ #category : #initialization }
TodoCommandRemove >> setValueFor: anObject with: aTodoList [

	aTodoList removeTodo: anObject
]
