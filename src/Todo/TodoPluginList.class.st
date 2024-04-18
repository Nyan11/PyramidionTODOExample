Class {
	#name : #TodoPluginList,
	#superclass : #Object,
	#traits : 'TPyramidPlugin + TPyramidProjectModelObserver',
	#classTraits : 'TPyramidPlugin classTrait + TPyramidProjectModelObserver classTrait',
	#instVars : [
		'listPresenter',
		'projectModel',
		'triggerEvent'
	],
	#category : #Todo
}

{ #category : #adding }
TodoPluginList >> addPanelsOn: aPyramidSimpleWindow [

	aPyramidSimpleWindow
		at: #space
		addItem: [ :panelMaker |
		panelMaker makePresenter: self listPresenter ]
]

{ #category : #connecting }
TodoPluginList >> connectOn: aPyramidEditor [

	self projectModel: aPyramidEditor projectModel.
	self listPresenter whenSelectedItemChangedDo: [ :todo |
		self triggerEvent ifTrue: [ aPyramidEditor projectModel selection replaceAll: { todo } ]
		 ]
]

{ #category : #accessing }
TodoPluginList >> initialize [

	triggerEvent := true.
	listPresenter := SpListPresenter new
		                 display: [ :todo |
			                 todo date printString , ' - ' , todo text ];
		                 displayIcon: [ :todo |
			                 todo done
				                 ifTrue: [ self iconNamed: #windowClose ]
				                 ifFalse: [ self iconNamed: #fndskjhsdk ] ];
		                 yourself
]

{ #category : #accessing }
TodoPluginList >> listPresenter [

	^ listPresenter
]

{ #category : #accessing }
TodoPluginList >> projectModel [

	^ projectModel
]

{ #category : #accessing }
TodoPluginList >> projectModel: anObject [

	projectModel := anObject.
	anObject addObserver: self
]

{ #category : #'as yet unclassified' }
TodoPluginList >> pyramidElementsChanged [

	self triggerEvent: false.
	self listPresenter items:
		self projectModel firstLevelElements first items.
	self projectModel selection ifNotEmpty: [
		self listPresenter selectItem: self projectModel selection first ].
	self triggerEvent: true
]

{ #category : #accessing }
TodoPluginList >> triggerEvent [

	^ triggerEvent
]

{ #category : #accessing }
TodoPluginList >> triggerEvent: anObject [

	triggerEvent := anObject
]
