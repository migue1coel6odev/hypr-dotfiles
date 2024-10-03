printf "Install rust ? (Y/n)"
read answer

if [ "$answer" != "${answer#[Nn]}" ] ; then
    echo  "Skipping rust..."
else
    echo  "Installing rust..."
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
fi
