basedir='.github_extras/efficient_cd/'
mkdir -p ~/$basedir
cp bashrc_dyndirstack ~/$basedir'.bashrc_dyndirstack'
cp initiate_stack.sh ~/$basedir'initiate_stack.sh'
cp dir_location.txt ~/$basedir'dir_location.txt'
chmod +x ~/$basedir'initiate_stack.sh'
echo 'source ~/'$basedir'.bashrc_dyndirstack' >> ~/.bashrc
echo "alias 'fud=. ~/"$basedir"initiate_stack.sh ~/"$basedir"dir_location.txt'" >> ~/.bashrc
source ~/.bashrc
