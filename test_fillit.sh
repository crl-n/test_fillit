################################################################################
#									test_fillit
#								mde-maul & cnysten
################################################################################

# Colors
red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
blue=`tput setaf 4`
magenta=`tput setaf 5`
cyan=`tput setaf 6`
reset=`tput sgr0`

# Underline
smul=`tput smul`
rmul=`tput rmul`

echo "${magenta}

 _____________________
 | test_fillit        |
 | mde-maul & cnysten |
 –––––––––––––––––––––${reset}

"

# Makefile tests
echo "${magenta}${smul}Makefile${rmul}${reset}
"
echo "${magenta}All${reset}"
make -C ../fillit all
echo "${magenta}Clean${reset}"
make -C ../fillit clean
echo "${magenta}Fclean${reset}"
make -C ../fillit fclean
echo "${magenta}Re${reset}"
make -C ../fillit re

# Invalid tests
echo "${magenta}${smul}Invalid tests
${rmul}${reset}"
echo "${magenta}No arg${reset}"
../fillit/fillit

echo "${magenta}Too many args${reset}"
../fillit/fillit blah bluh bleh 

echo "${magenta}27 Tetriminos${reset}"
../fillit/fillit 27_tetriminos

echo "${magenta}Diagonal bar${reset}"
../fillit/fillit diagonal

echo "${magenta}Only dots${reset}"
../fillit/fillit only_dots

echo "${magenta}Only hashtags${reset}"
../fillit/fillit only_hash

echo "${magenta}Too wide${reset}"
../fillit/fillit too_wide

echo "${magenta}Too few lines${reset}"
../fillit/fillit too_few_lines

echo "${magenta}Too many lines${reset}"
../fillit/fillit too_many_lines

echo "${magenta}Two newlines at end of file${reset}"
../fillit/fillit two_newlines_at_end

echo "${magenta}Two newlines between tetriminos${reset}"
../fillit/fillit two_newlines

echo "${magenta}5 blocks${reset}"
../fillit/fillit 5_blocks

echo "${magenta}3 blocks${reset}"
../fillit/fillit 3_blocks

echo "${magenta}Not square${reset}"
../fillit/fillit not_square

echo "${magenta}Wrong character in input${reset}"
../fillit/fillit wrong_char

echo "${magenta}Folder${reset}"
../fillit/fillit folder

# Valid tests
echo "${magenta}${smul}
Valid tests
${rmul}${reset}"

echo "${magenta}
18 horizontal blocks${reset}"
time ../fillit/fillit ./valid/18_horizontal_blocks

echo "${cyan}
correct solution:${reset}
AAAABBBB.
CCCCDDDD.
EEEEFFFF.
GGGGHHHH.
IIIIJJJJ.
KKKKLLLL.
MMMMNNNN.
OOOOPPPP.
QQQQRRRR.
"

echo "${magenta}
Dangerous tetriminos${reset}"
time ../fillit/fillit ./valid/dangerous_tetriminos

echo "${cyan}
correct solution:${reset}
..A..B
AAABBB
.CD...
CCDD..
ECD...
EEE...
"

echo "${magenta}
Easy test from eval form${reset}"
time ../fillit/fillit ./valid/test_easy

echo "${cyan}
correct solution:${reset}
ABB.
ABB.
A...
A...
"

echo "${magenta}
Test1.prm from eval form${reset}"
time ../fillit/fillit ./valid/test1.prm

echo "${cyan}
correct solution:${reset}
AA
AA
"

echo "${magenta}
Test7.prm from eval form${reset}"
time ../fillit/fillit ./valid/test7.prm

echo "${cyan}
correct solution:${reset}
ABBBB.
ACCC..
AGGCDD
A.GDD.
EEGFF.
EE..FF
"

echo "${magenta}
6 tetriminos in 5x5 (from Discord)${reset}"
time ../fillit/fillit ./valid/discord_6

echo "${cyan}
correct solution:${reset}
AA.CC
ABBCC
ADBFF
DDBEF
DEEEF
"

echo "${magenta}
Max (from Discord)${reset}"
time ../fillit/fillit ./valid/max

echo "${cyan}
correct solution:${reset}
ABBBBCC.DD
AEFF.CCDDG
AEEFFHJJGG
A.ELVH.JGQ
IIILVHHJQQ
IRLLVVKTTQ
RRRUKKKSTT
NNUUOOOSSX
NMUPPPOSXX
NMMMPWWWWX
"
