#! /bin/sh

# make output directory
echo "Removing protocol from URL"
proto="$(echo $1 | grep :// | sed -e's,^\(.*://\).*,\1,g')"
url="$(echo ${1/$proto/})"
echo "Creating directory $url"
mkdir -p $url

# download
echo "Downloading etherpad archive to $url/index.html"
curl "$1/export/html" --output "$url/index.html"

echo "Adding link to the index"
echo "<a href='$url'>$url</a><br>" >> index.html
echo "Done :)"
