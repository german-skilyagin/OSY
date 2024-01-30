echo $0 $1 $2 $3 $4
if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
echo "the first parameter is the name of the initial directory "
echo "second parameter is the label"
echo "third parameter is the name of the target directory"
fi

cd "$1"
mkdir "$3"
convert "*.jpg" -font Times-New-Roman -pointsize 36 +650+500 "$2" -set filename:currentfile '%t' "$3/%[filename:currentfile].jpg"
done

