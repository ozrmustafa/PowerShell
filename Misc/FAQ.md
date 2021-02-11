PowerShell Scripts FAQ
======================

What is PowerShell?
-------------------
PowerShell is a task automation and configuration management framework from Microsoft, consisting of a command-line shell and associated scripting language. 

* **it's powerful**: fully control your computer
* **it's cross-platform**: available for Linux, Mac OS and Windows
* **it's open-source**: see the Github repository at https://github.com/PowerShell/PowerShell 
* **it's easy to learn**: see the tutorial at https://www.guru99.com/powershell-tutorial.html
* **it's fully documented**: see the official docs at https://docs.microsoft.com/en-us/powershell/

How to get PowerShell?
----------------------
* **Windows 7 and newer** do provide PowerShell by default. Per default, Windows does not allow script execution (execution policy "restricted"). To enable this, enter as administrator:
   ```
   $ Set-ExecutionPolicy RemoteSigned
   ```
* **Want to use Snaps?** Install PowerShell by executing:
   ```
   $ snap install PowerShell
   ```
* **On CentOS, Debian, Docker, Fedora, macOS, openSUSE, Red Hat, Ubuntu** visit https://github.com/PowerShell/PowerShell for installation.


How to get the PowerShell Scripts?
----------------------------------
Git users do execute:
```
$ git clone https://github.com/fleschutz/PowerShell
```

otherwise simply download it from:

https://github.com/fleschutz/PowerShell/archive/master.zip


How to Configure PowerShell as Default Shell?
---------------------------------------------
* **Linux:** make sure PowerShell is installed, then execute: `chsh -s /bin/powershell <username>`
* **Windows:** no need to, PowerShell is the default shell


How to add the Scripts to the Search Path?
------------------------------------------
Want to use the PowerShell scripts everywhere on the command-line? Then you need to add the Scripts/ subfolder to the search path:

* **Bash or sh:** edit .profile in your home directory and add the line: PATH="$PATH:/path/to/PowerShell/Scripts"
* **Windows:** open the environment variables dialogue and add the full path to Scripts/ to the system environment variable "Path"


How to use PowerShell in Context Menus?
---------------------------------------
* to enable "right-click > New > Windows PowerShell Script" execute `Add_ps1_to_New_context_menu.reg` in subfolder [Misc/](Misc)
* to disable this execute `Remove_ps1_from_New_context_menu.reg` in subfolder [Misc/](Misc)

How to write Good PowerShell Scripts?
-------------------------------------
Each PowerShell script should follow the 9 golden rules:

1. the filename should be named `<verb>-<object>.ps1`
2. the first line reads `#!/bin/powershell` to support PowerShell on Linux
3. the script has execute file permissions (chmod a+rx <file>) to support PowerShell on Linux
4. provide a comment-based help with syntax, description, link, author, and license
5. check the requirements (e.g. #Requires -RunAsAdministrator, or #Requires -Version 3)
6. prefer command-line options, else ask the user
7. use `Set-StrictMode -Version Latest` to enable additional error checking
8. for readibility use UpperCamelCase for variables and functions, lowerCamelCase for everything else
9. exit 0 for success, else print an error message and exit with the error code (mostly 1)

Found No Answer to Your Question?
---------------------------------
Send your question to: markus [at] fleschutz [dot] de