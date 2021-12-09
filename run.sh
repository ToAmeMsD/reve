#!/bin/sh
#cat <<-EOF > /root/cloudreve/mycloudreve.ini
#[System]
#; 运行模式
#Mode = master
#; 监听端口
#Listen = :${PORT}
#; 是否开启 Debug
#Debug = false
#SessionSecret = qygUUWWIdnhriqqSoF3bvxQ3AMb7kc5a0GAZeSXDCY3s7WBvFjVCgFqKAXmQcRUK
#HashIDSalt = S1Y1KO3CdHQwGg1nNrJ7vmOA0QWobt38wf97pG6ZPcfLDaxc8umyJC9y0bmsCkJX
#EOF
/root/cloudreve/cloudreve -c /root/cloudreve/mycloudreve.ini
#/root/cloudreve/cloudreve