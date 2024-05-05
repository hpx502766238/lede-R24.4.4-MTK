#!/bin/bash

# 设置_deleted文件夹的路径
deleted_folder="5.10"

# 创建一个空文件用于保存目标文件列表
list_file="list-5.10.txt"
> "$list_file"

# 遍历_deleted文件夹中的所有.patch文件
for patch_file in "$deleted_folder"/*.patch; do
    # 使用grep提取包含 'a/' 的行，cut提取文件路径，sort排序，uniq去重
    grep 'a/' "$patch_file" | cut -d' ' -f2- | sort | uniq >> "$list_file"
done
# 使用sort和uniq去除整个list.txt中的重复行
sort "$list_file" | uniq > "$list_file.tmp"
mv "$list_file.tmp" "$list_file"

echo "目标文件路径已写入到$list_file中，并去除了重复行。"
