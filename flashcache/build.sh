rmmod flashcache
make clean
make KERNEL_TREE=/usr/src/linux-3.10.108/
insmod src/flashcache.ko request_based=1
src/utils/flashcache_create -p back cachedev /dev/sdc /dev/sde
echo cfq > /sys/block/dm-2/queue/scheduler
