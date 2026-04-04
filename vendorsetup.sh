#MiuiCam
git clone https://github.com/kardebayan/android_device_xiaomi_miuicamera-miatoll device/xiaomi/miuicamera-miatoll

#MiuiCam
git clone https://github.com/kardebayan/android_vendor_xiaomi_miuicamera-miatoll vendor/xiaomi/miuicamera-miatoll

#Dolby
git clone https://github.com/NothingHere69/hardware_dolby.git hardware/dolby 

# KernelSU
if [ -d "kernel/xiaomi/sm6250/KernelSU-Next" ] && [ ! -d "kernel/xiaomi/sm6250/KernelSU-Next/kernel" ]; then
    cd kernel/xiaomi/sm6250
    git submodule init
    git submodule update --recursive
    rm -rf KernelSU-Next/userspace
    cd ../../..
    echo "KernelSU-Next initialized and updated successfully."
else
    echo "KernelSU-Next directory already initialized or not present. No action required."
fi
