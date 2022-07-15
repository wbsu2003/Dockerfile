#!/bin/bash    
  
# Just keep this script running   
while true   
do   
   sleep 1   
   echo "--loop--"  
   # 在content 中查找 mdx 文件，如果有的话退出死循环  
   count=`ls -1 ./content/*.mdx 2>/dev/null | wc -l`    
   if [ $count != 0 ]; then    
      echo "find mdx files!"   
      break;  
   fi  
done  

# 复制词频文件
cp ecdict_wfd.db content/

python3 -m flask run --host=0.0.0.0
