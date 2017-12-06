# define various paths
bashfun='.github_extras/bash_functions.sh'
basedir='.github_extras/efficient_cd/'

# Make directory move files is necessary
mkdir -p ~/$basedir
cp bashrc_dyndirstack ~/$basedir'.bashrc_dyndirstack'
cp initiate_stack.sh ~/$basedir'initiate_stack.sh'
cp dir_location.txt ~/$basedir'dir_location.txt'
chmod +x ~/$basedir'initiate_stack.sh'

# Write the bash function, aliases for system wide access
echo "" >> ~/$bashfun
echo "#--------------- Efficient_cd aliases ----------------" >> ~/$bashfun
echo "" >> ~/$bashfun
echo 'source ~/'$basedir'.bashrc_dyndirstack' >> ~/$bashfun
echo "alias 'fud=. ~/"$basedir"initiate_stack.sh ~/"$basedir"dir_location.txt'" >> ~/$bashfun
echo "" >> ~/$bashfun

# Check if .github_extras/bash_functions.sh is source in bashrc
SOURCE_STRING='source ~/'$bashfun
if [[ ! -z $(grep "$SOURCE_STRING" ~/.bashrc) ]]
then 
source ~/$bashfun
echo "File "$SOURCE_STRING" is sourced ..."
else
echo $SOURCE_STRING >> ~/.bashrc 
source ~/.bashrc 
echo "File .bashrc and "$SOURCE_STRING" is sourced ..."
fi
