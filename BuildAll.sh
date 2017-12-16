echo "================================================="
echo "Ocomis Build All "
echo "================================================="
echo

dir_build_all=`pwd`
dir_ocomis="${dir_build_all}/.."

BuildContainer () {
    container=$1
    echo "-------------------------------------------------"
    echo "Building Container $container "
    echo "-------------------------------------------------"
    echo

    # Enter directory

    dir_container="${dir_ocomis}/$container"
    cd $dir_container

    echo "Container directory: `pwd`"
    echo

    # Build Container

    chmod +x "Build.sh"
    ( "./Build.sh" )

    echo
}

cd $dir_build_all

BuildContainer "ocomis-haproxy"
BuildContainer "ocomis-info"
BuildContainer "ocomis-user-ui"
BuildContainer "ocomis-user-api"
BuildContainer "ocomis-authentication-ui"
BuildContainer "ocomis-authentication-api"
