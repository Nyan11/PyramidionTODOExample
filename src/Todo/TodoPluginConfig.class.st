Class {
	#name : #TodoPluginConfig,
	#superclass : #Object,
	#traits : 'TPyramidPlugin',
	#classTraits : 'TPyramidPlugin classTrait',
	#category : #Todo
}

{ #category : #actions }
TodoPluginConfig >> configureBuilder: aPyramidEditorBuilder [

	aPyramidEditorBuilder window: TodoWindow new
]
