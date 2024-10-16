. ./utils/prompt.sh
. ./utils/call_script.sh

cd ../dotfiles
stow -t ~ . --adopt
git restore .

call_package_postinstall_script node

call_setup_postinstall_script shell
