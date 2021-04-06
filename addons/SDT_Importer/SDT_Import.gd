# Copyright © 2020 FULL NAME and contributors - MIT License
# See `LICENSE.md` included in the source distribution for details.
#
# This script is needed to make the `class_name` scripts visible in the
# Create New Node dialog once the plugin is enabled.



tool
extends EditorImportPlugin


# Name of the importer
func get_importer_name() -> String:
	return "SDT.Importer"

# Visible name of the importer
func get_visible_name() -> String:
	return "SDT Importer"

# Array/list of all the extension that are recognized by this plugin - that this plugin can import
func get_recognized_extensions() -> Array:
	return ["sdt"]

# With what editor-known file extension can editor save the resources imported by this plugin
func get_save_extension() -> String:
	return "tres"

# With what editor-known resource type can editor work with this plugin
func get_resource_type() -> String:
	return "TextFile"


func get_import_options(preset: int) -> Array:
	return [""]


func get_option_visibility(option: String, options: Dictionary) -> bool:
	return true




func import(source_file: String, save_path: String, options: Dictionary, platform_variants: Array, gen_files: Array) -> int:

	var file = File.new()
	var err = file.open(source_file, File.READ)
	if err != OK:
		return err

	#var line = file.get_line()
	var line = file.get_as_text()

	file.close()

	return 1

	#return ResourceSaver.save("%s.%s" % [save_path, get_save_extension()], tres)
	#return ResourceSaver.save("%s.%s" % [save_path,get_save_extension()], sdt)






















