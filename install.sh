#!/bin/bash

echo "Installing spry..."

spry_url=https://raw.githubusercontent.com/sprynvim/spry.nvim/main/spry.lua
init_dir=~/.config/nvim
init_file=$init_dir/init.lua
mkdir -p $init_dir
touch $init_file

lines=('-- Added by spry installation' 'require("spry")' '-- End of spry installation')
printf '%s\n' "${lines[@]}" | cat - $init_file > /tmp/init.lua.tmp
mv /tmp/init.lua.tmp $init_file

lua_dir=$init_dir/lua
mkdir -p $lua_dir
cd $lua_dir
curl -o $lua_dir/spry.lua -sL $spry_url
sleep 2

echo "All done. What's next?"
echo "Read the docs at https://github.com/sprynvim/spry.nvim"
