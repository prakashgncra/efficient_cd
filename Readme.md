
This module allows to change the frequently used directories efficiently in linux terminal (shell).

============= Installation ===============

1) Copy the folder in your machine / server

2) cd to that directory

3) run installation.sh shell file. Make it executable if needed

4) This will create a dir named '.github_extras/efficient_cd' in your home folder
This directory contains following files
<<---
.bashrc_dyndirstack
initiate_stack.sh
dir_location.txt
--->>

================ Usage ==================

5) Put your frequently used directory locations in file path/to/your/home/.github_extras/efficient_cd/project_location.txt
(Note relative path will not work)

This file should look like this
<<--- 
full/path/to/Test
full/path/to/Test/Project-1
full/path/to/Test/Project-2
full/path/to/Test/Project-1/A1
full/path/to/Test/Project-1/B1
full/path/to/Test/Project-2/A2
full/path/to/Test/Project-2/B2
--->>

Whenever needed you can modify this file.

6) The above script has also created alias fud (-->> frequently used directory)
If needed change it from path/to/your/home/.github_extras/bash_functions.sh file

7) Now in terminal type fud (each time you open terminal you need to type fud)

8) Now type d 
you will see all the directory available in stack

<<---
     0	full/path/to
     1	full/path/to/Test/Project-2/B2
     2	full/path/to/Test/Project-2/A2
     3	full/path/to/Test/Project-1/B1
     4	full/path/to/Test/Project-1/A1
     5	full/path/to/Test/Project-2
     6	full/path/to/Test/Project-1
     7	full/path/to/Test
     8	full/path/to
--->> 

You can switch to the directory full/path/to/Test/Project-1/A1 by command jcd as follows (jcd -->> jump cd)

jcd 4

Autocompletion is also available with jcd type to see the options available 

jcd A1 <TAB>

To clear the dirstack use following command in terminal

dirs -c

Any dir can be removed from stack by using

popcd <dirnum> 

(Note dir at 0 stack corresponds to current directory so do not use with jcd)


================ Credits to ==================

credit to Yaroslav Halchenko 
For more information visit
http://www.onerussian.com/Linux/bash_dirstack.phtml

================ License ==================

GNU GENERAL PUBLIC LICENSE see license.txt







