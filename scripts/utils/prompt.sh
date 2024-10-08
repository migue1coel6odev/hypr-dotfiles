prompt_install()
{
    PACKAGE_NAME=$1
    printf "Install $PACKAGE_NAME ? (Y/n)"
    read answer

    if [ "$answer" != "${answer#[Nn]}" ] ; then
        echo  "Skipping $PACKAGE_NAME..."
        return 0
    fi

    echo  "Installing $PACKAGE_NAME..."
    return 1
}

prompt_run()
{
    printf "$1 (Y/n)"
    read answer
    if [ "$answer" != "${answer#[Nn]}" ] ; then
        return 0
    fi

    return 1
}
