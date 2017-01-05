GIT_VERSION=/tmp/gitversion
if [ ! -f "$GIT_VERSION" ] ; then
    echo Downloading gitversion
    wget -q -O - https://github.com/screwdriver-cd/gitversion/releases/latest \
       | egrep -o '/screwdriver-cd/gitversion/releases/download/v[0-9.]*/gitversion' \
       | wget --base=http://github.com/ -i - -O /tmp/gitversion
    chmod +x $GIT_VERSION
fi

echo "Printing the git version"
echo $GIT_VERSION
