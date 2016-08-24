
echo "downloading trusty-server-cloudimg-amd64-root.tar.xz image archive for import"
wget -nv https://cloud-images.ubuntu.com/trusty/current/trusty-server-cloudimg-amd64-root.tar.xz
glance image-create --name 'ubuntu-1404-server-cloudimg-amd64' \
	--container-format bare \
	--disk-format raw \
	--visibility public \
	--min-disk 1 \
	--property architecture=x86_64 \
	--property hypervisor_type=lxc \
	--property os_distro=ubuntu \
	--property os_version=14.04 \
	--property vm_mode=exe < trusty-server-cloudimg-amd64-root.tar.xz

echo "downloading xenial-server-cloudimg-amd64-root.tar.xz image archive for import"
wget -nv https://cloud-images.ubuntu.com/xenial/current/xenial-server-cloudimg-amd64-root.tar.xz
glance image-create --name 'ubuntu-1604-server-cloudimg-amd64' \
	--container-format bare \
	--disk-format raw \
	--visibility public \
	--min-disk 1 \
	--property architecture=x86_64 \
	--property hypervisor_type=lxc \
	--property os_distro=ubuntu \
	--property os_version=16.04 \
	--property vm_mode=exe < xenial-server-cloudimg-amd64-root.tar.xz

# glance image-create --name 'centos-6-amd64' \
# 	--container-format bare \
# 	--disk-format raw \
# 	--visibility public \
# 	--min-disk 1 \
# 	--property architecture=x86_64 \
# 	--property hypervisor_type=lxc \
# 	--property os_distro=centos \
# 	--property os_version=6 \
# 	--property vm_mode=exe < centos-6-amd64-root.tar.gz