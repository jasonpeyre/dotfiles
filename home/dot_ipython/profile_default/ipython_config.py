c = get_config()

c.TerminalIPythonApp.display_banner = False
# enable sqlite history
c.HistoryManager.enabled = True
c.InteractiveShell.enable_history_search = True
# ^X^E opens editor
c.InteractiveShell.extra_open_editor_shortcuts = True

c.InteractiveShellApp.extensions = ["autoreload"]
