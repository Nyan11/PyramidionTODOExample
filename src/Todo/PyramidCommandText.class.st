Class {
	#name : #PyramidCommandText,
	#superclass : #PyramidCommand,
	#category : #Todo
}

{ #category : #testing }
PyramidCommandText >> canBeUsedFor: anObject [

	^ anObject class = TodoItem
]

{ #category : #testing }
PyramidCommandText >> getValueFor: anObject [

	^ anObject text
]

{ #category : #testing }
PyramidCommandText >> setValueFor: anObject with: aString [

	anObject text: aString
]
