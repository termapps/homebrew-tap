#! /bin/bash

MAC_ZIP="$NAME-$TAG-x86_64-apple-darwin.zip"
curl -LO "https://github.com/$REPO/releases/download/$TAG/$MAC_ZIP"
MAC_SHA=$(shasum -a 256 "$MAC_ZIP" | cut -f 1 -d ' ')

LINUX_ZIP="$NAME-$TAG-x86_64-unknown-linux-gnu.zip"
curl -LO "https://github.com/$REPO/releases/download/$TAG/$LINUX_ZIP"
LINUX_SHA=$(shasum -a 256 "$LINUX_ZIP" | cut -f 1 -d ' ')

VERSION="$(echo $TAG | cut -c 2-)"

sed -i -E "s/version \"[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*\"/version \"${VERSION}\"/" Formula/$NAME.rb
sed -i -E "s/sha256 \"[0-9a-f]*\" # mac/sha256 \"${MAC_SHA}\" # mac/" Formula/$NAME.rb
sed -i -E "s/sha256 \"[0-9a-f]*\" # linux/sha256 \"${LINUX_SHA}\" # linux/" Formula/$NAME.rb

git config --global user.email "pavan.sss1991@gmail.com"
git config --global user.name "Pavan Kumar Sunkara"
git add Formula/$NAME.rb
git commit -m "$NAME: update $VERSION"
git push origin master
