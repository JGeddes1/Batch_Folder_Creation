Create a Registry Entry: You'll need to modify the Windows registry to add a custom context menu entry. This involves adding keys and values to the registry.

Open regedit (Registry Editor).
Navigate to HKEY_CLASSES_ROOT\Directory\Background\shell.
Right-click on the shell key and select New > Key.
Name the key whatever you want to appear in the context menu (e.g., "Create Folders").
Right-click on the new key and select New > Key again. Name this key command.
Double-click on the (Default) value in the right pane and set its value to the path to your script, enclosed in quotes, with %V at the end. For example:

"C:\Path\to\your\script\CreateFolders.ps1" "%V"
