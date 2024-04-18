Class {
	#name : #TodoLauncher,
	#superclass : #Object,
	#category : #Todo
}

{ #category : #examples }
TodoLauncher class >> example [

	| model editor |
	model := TodoList new.
editor := PyramidEditorBuilder new plugins: { TodoPluginButtons new . TodoPluginList new . TodoPluginItemEdition new . PyramidHistoryPlugin new }; build.

editor projectModel firstLevelElements add: model.

editor open.
]
