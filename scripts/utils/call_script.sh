
call_package_script()
{
    SCRIPT_FILE_NAME=$1
    eval "./packages/$SCRIPT_FILE_NAME.sh"
}

call_setup_script()
{
    SCRIPT_FILE_NAME=$1
    eval "./setup/$SCRIPT_FILE_NAME.sh"
}
