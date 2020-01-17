#! /bin/bash

MAC_ZIP="$NAME-$TRAVIS_TAG-x86_64-apple-darwin.zip"
curl -LO "https://github.com/$TRAVIS_REPO_SLUG/releases/download/$TRAVIS_TAG/$MAC_ZIP"
MAC_SHA=$(shasum -a 256 "$MAC_ZIP" | cut -f 1 -d ' ')

LINUX_ZIP="$NAME-$TRAVIS_TAG-x86_64-unknown-linux-gnu.zip"
curl -LO "https://github.com/$TRAVIS_REPO_SLUG/releases/download/$TRAVIS_TAG/$LINUX_ZIP"
LINUX_SHA=$(shasum -a 256 "$LINUX_ZIP" | cut -f 1 -d ' ')

VERSION="$(echo $TRAVIS_TAG | cut -c 2-)"

sed -i -E "s/version \"[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*\"/version \"${VERSION}\"/" Formula/$NAME.rb
sed -i -E "s/sha256 \"[0-9a-f]*\" # mac/sha256 \"${MAC_SHA}\" # mac/" Formula/$NAME.rb
sed -i -E "s/sha256 \"[0-9a-f]*\" # linux/sha256 \"${LINUX_SHA}\" # linux/" Formula/$NAME.rb

git add Formula/$NAME.rb
git commit -m "$NAME: update $VERSION"
git push origin master
