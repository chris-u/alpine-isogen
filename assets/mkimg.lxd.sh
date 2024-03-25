profile_lxd() {
        profile_standard
        kernel_cmdline="video=640x480,rotate=90"
        #kernel_addons="zfs"
        apks="$apks mkinitfs parted syslinux lvm2 util-linux xfsprogs lxd ruby ipmitool" 
        local _k _a
        for _k in $kernel_flavors
        do
                apks="$apks linux-$_k"
                for _a in $kernel_addons
                do
                        apks="$apks $_a-$_k"
                done
        done
        #apks="$apks linux-firmware"
        apks="$apks linux-firmware"
        #apkovl="genapkovl-lxd.sh"
        apkovl="/root/aports/scripts/genapkovl-lxd.sh"

}

