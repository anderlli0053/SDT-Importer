# Copyright © 2020 FULL NAME and contributors - MIT License
# See `LICENSE.md` included in the source distribution for details.
#
# This script is needed to make the `class_name` scripts visible in the
# Create New Node dialog once the plugin is enabled.



tool
extends EditorPlugin

var import_plugin


func _enter_tree() -> void:
	import_plugin = preload("res://addons/SDT_Importer/SDT_Import.gd").new()
	add_import_plugin(import_plugin)


func _exit_tree() -> void:

	remove_import_plugin(import_plugin)
	import_plugin = null
