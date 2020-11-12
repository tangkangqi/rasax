
## 脚本记录
### 1）显示文件夹:
ls -l |grep ^d|awk '{print $NF}'
### 2）将文件批量移到目录底下:
for fd in `ls -l |grep ^d|awk '{print $NF}'`; do cp Dockerfile $fd; done
