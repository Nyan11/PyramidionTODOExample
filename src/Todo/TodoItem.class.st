Class {
	#name : #TodoItem,
	#superclass : #Object,
	#instVars : [
		'done',
		'text',
		'date',
		'due'
	],
	#category : #Todo
}

{ #category : #initialization }
TodoItem >> date [

	^ date
]

{ #category : #accessing }
TodoItem >> done [

	^ done
]

{ #category : #accessing }
TodoItem >> done: anObject [

	done := anObject
]

{ #category : #accessing }
TodoItem >> due [

	^ due
]

{ #category : #accessing }
TodoItem >> due: anObject [

	due := anObject
]

{ #category : #initialization }
TodoItem >> initialize [

	done := false.
	text := ''.
	date := Date today
]

{ #category : #accessing }
TodoItem >> text [

	^ text
]

{ #category : #accessing }
TodoItem >> text: anObject [

	text := anObject
]
