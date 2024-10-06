# Freecad
printf "Install freecad ? (Y/n)"
read answer

if [ "$answer" != "${answer#[Nn]}" ] ; then
    echo  "Skipping freecad..."
else
    echo  "Installing freecad..."
    sudo pacman -S freecad
fi
