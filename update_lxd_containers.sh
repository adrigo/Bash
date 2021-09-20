container_names=$(lxc ls -c ns --format=csv|grep RUNNING|cut -f1 -d,)

for container_name in $container_names
do
	echo "Updating $container_name"
	lxc exec $container_name -- apt update
	lxc exec $container_name -- apt upgrade -y
	lxc exec $container_name -- apt autoremove -y
	echo "----------------------------------------------------"
done
