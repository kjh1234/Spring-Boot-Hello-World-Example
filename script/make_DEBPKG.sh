#!/bin/bash
echo "removeing previous debian package file"
echo | rm reytech-demo.deb 
echo "remove complete previous debian package file"

echo "starting debian packaging"
cp target/demo*.jar ./reytech-demo/data/application
echo "move war file debian package dir"
echo " packaging ...."
echo | dpkg -b reytech-demo
echo " packaging complete"

echo "send package apt repository"

echo | curl -u "admin:admin" -H "Content-Type: multipart/form-data" --data-binary "@./reytech-demo.deb" "http://52.141.4.104:8081/repository/aptrepo-tested/"

echo "send complete"