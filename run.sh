#!/bin/sh

if [ -z "$NFS_MOUNT" ]
then 
echo "empty"
else
 /sbin/rpcbind -w & mount $NFS_MOUNT /nfs
 cd .
#echo "ok"
fi

if [ $# -gt 0 ]
then
#echo "exec"
exec "$@"
fi

