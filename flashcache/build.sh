rmmod flashcache
make clean
make KERNEL_TREE=/usr/src/linux-3.10.108/
insmod src/flashcache.ko request_based=1
