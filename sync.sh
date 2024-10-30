#!/bin/bash

# rm -vr $(cat files)

mkdir -p .config/

dots=$(cat files | sed 's/~\///g' | paste -sd " ")
# echo "rm -vr $dots"

echo ""
echo "###############################"
echo "# removing dotfiles directory #"
echo "###############################"
echo ""

rm -vr $dots

echo ""
echo "############################"
echo "# copying machine dotfiles #"
echo "############################"
echo ""

for i in $dots
do
    # echo "cp -vr $local $i"
    cp -vr $HOME/$i $i
done
