You can read any file line by line in bash by using loop. Create a file named, ‘read_file.sh’ and add the following code to read an existing file named, ‘book.txt’.
coproc auth { tail -n1 -f /var/log/auth.log; }
read latestAuth <&"${auth[0]}"
echo "Latest authentication attempt: $latestAuth"
