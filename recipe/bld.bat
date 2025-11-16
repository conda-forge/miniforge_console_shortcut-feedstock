@ECHO ON
SET "MENU_DIR=%PREFIX%\Menu"
IF NOT EXIST "%MENU_DIR%" MKDIR "%MENU_DIR%"

:: icon is in public domain: https://github.com/paomedia/small-n-flat
copy "%RECIPE_DIR%\miniforge_console_shortcut.ico" %MENU_DIR%
IF ERRORLEVEL 1 EXIT /B 1

COPY "%RECIPE_DIR%\menu.json" "%MENU_DIR%\miniforge_console_shortcut_menu.json"
IF ERRORLEVEL 1 EXIT /B 1
