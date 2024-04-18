Class {
	#name : #TodoList,
	#superclass : #Object,
	#instVars : [
		'items'
	],
	#category : #Todo
}

{ #category : #adding }
TodoList >> addTodo: anItem [

	self items add: anItem
]

{ #category : #initialization }
TodoList >> initialize [

	items := OrderedCollection new
]

{ #category : #adding }
TodoList >> items [

	^ items
]

{ #category : #adding }
TodoList >> removeTodo: anItem [

	self items remove: anItem
]
