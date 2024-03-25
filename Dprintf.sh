#!/bin/bash

printf "Enter C file name : "
read file

	file= sed  -i '/{/a #ifdef debugger \nDprintf(3,newline) \n#endif' $file

	file= sed  -i '/}/i #ifdef debugger \nDprintf(3,newline) \n#endif' $file
