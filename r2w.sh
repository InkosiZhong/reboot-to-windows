sudo grub-mkconfig > /tmp/grub_config.tmp

menu=$(grep -E '^(menuentry|submenu)' /tmp/grub_config.tmp)
echo "\n### GRUB boot menu ###"
#echo "$menu"
num=$(echo "$menu" | wc -l)
for i in $(seq 1 $(($num)))
do
    line=$(echo "$menu" | sed -n "${i}p")
    name=$(echo "$line" | grep -o "'[^']*'" | head -n 1 | cut -c 2- | rev | cut -c 2- | rev)
    echo "$i: $name"
done
echo "\nSelect the index of the target system:"
read target_index
line=$(echo "$menu" | sed -n "${target_index}p")
name=$(echo "$line" | grep -o "'[^']*'" | head -n 1 | cut -c 2- | rev | cut -c 2- | rev)
echo "Selected system: ${name}"
sudo grub-reboot $((target_index - 1))
sudo reboot

rm /tmp/grub_config.tmp