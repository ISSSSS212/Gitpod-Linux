read -p "Are you SURE you want to continue? All files and dependencies for the VNC WILL BE DELETED! this cannot be undone. (y/n) " response
case $response in 
    [Yy])
        echo "ok, but don't say I didn't warn ya. DELETING ALL FILES!!!"
        sudo apt remove tigervnc-standalone-server qemu-kvm firefox openbox lxqt xfce4 xfce4-goodies neofetch kitty -y
        sudo apt autoremove -y
        clear
        echo "Done!" ;;
    [nN])
        echo "Ok, Sorry about that mate."
        exit 0
        ;;
    *)
        echo "Invalid Input"
        exit 1
        ;;
esac
