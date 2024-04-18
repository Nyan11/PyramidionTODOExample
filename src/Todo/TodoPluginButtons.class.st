Class {
	#name : #TodoPluginButtons,
	#superclass : #Object,
	#traits : 'TPyramidPlugin + TPyramidProjectModelObserver',
	#classTraits : 'TPyramidPlugin classTrait + TPyramidProjectModelObserver classTrait',
	#instVars : [
		'addButton',
		'removeButton',
		'projectModel'
	],
	#category : #Todo
}

{ #category : #adding }
TodoPluginButtons >> addButton [

	^ addButton
]

{ #category : #adding }
TodoPluginButtons >> addPanelsOn: aPyramidSimpleWindow [

	aPyramidSimpleWindow
		at: #topLeft
		addItem: [ :builder |
		builder makeButtonWithIcon: self addButton order: 1 ].
	aPyramidSimpleWindow
		at: #topLeft
		addItem: [ :builder |
		builder makeButtonWithIcon: self removeButton order: 2 ]
]

{ #category : #connecting }
TodoPluginButtons >> connectOn: aPyramidEditor [

	projectModel := aPyramidEditor projectModel.
	aPyramidEditor projectModel addObserver: self.
	addButton action: [
		aPyramidEditor propertiesManager commandExecutor
			use: TodoCommandAdd new
			on: { TodoItem new }
			with: aPyramidEditor projectModel firstLevelElements first ].
	removeButton action: [
		aPyramidEditor propertiesManager commandExecutor
			use: TodoCommandRemove new
			on: aPyramidEditor projectModel selection asArray
			with: aPyramidEditor projectModel firstLevelElements first ]
]

{ #category : #'as yet unclassified' }
TodoPluginButtons >> initialize [

	addButton := SpButtonPresenter new icon: (self iconNamed: #add).
	removeButton := SpButtonPresenter new icon: (self iconNamed: #delete); enabled: false; yourself.
]

{ #category : #'as yet unclassified' }
TodoPluginButtons >> pyramidSelectionChanged [

	self removeButton enabled: projectModel selection isNotEmpty
]

{ #category : #adding }
TodoPluginButtons >> removeButton [

	^ removeButton
]
