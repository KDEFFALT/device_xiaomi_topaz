# ROM source patches

color="\033[0;32m"
end="\033[0m"

echo -e "${color}Applying patches${end}"
sleep 1

# Remove pixel headers to avoid conflicts
rm -rf hardware/google/pixel/kernel_headers/Android.bp

# Remove included hardware_xiaomi
rm -rf hardware/xiaomi

# clone lineage os hardware_xiaomi
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-20 hardware/xiaomi

# Kernel Sources
git clone https://github.com/KDEFFALT/device_xiaomi_topaz-kernel -b lineage-20 device/xiaomi/topaz-kernel

# Vendor Sources
git clone https://github.com/KDEFFALT/vendor_xiaomi_topaz -b lineage-20 vendor/xiaomi/topaz

echo -e "${color}Finished sync!${end}"