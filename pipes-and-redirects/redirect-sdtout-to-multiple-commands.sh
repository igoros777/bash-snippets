# Redirect SDTOUT to multiple commands
echo "something anything" | tee >(sed 's/some/any/g') >(sed 's/thing/one/g') >(sed 's/any/some/g')
something anything
anything anything
someone anyone
something something
# Or if you want to suppress the orinal STDIN:
echo "something anything" | tee >(sed 's/some/any/g') >(sed 's/thing/one/g') >(sed 's/any/some/g') 2&>/dev/null
anything anything
someone anyone
something something
