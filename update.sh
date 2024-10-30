#!/bin/bash

# rm -vr $(cat files)

echo ""
echo "#############################"
echo "# removing machine dotfiles #"
echo "#############################"
echo ""

awk '{print "rm -vr ",$0}' files | bash

echo ""
echo "###############################"
echo "# copying dotfiles to machine #"
echo "###############################"
echo ""

dots=$(cat files | sed 's/~\///g' | paste -sd " ")

for i in $dots
do
    # echo "cp -vr $local $i"
    cp -vr $i $HOME/$i 
done



