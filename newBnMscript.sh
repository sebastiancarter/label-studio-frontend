#!/bin/bash
# runs build bundle and then copies the relevant files to label-studio - probably shouldnt use until you have npm run build-bundle working
npm run build-bundle
# if statement here for if above command fails
if [ $? == 0 ]; then
	echo "build-bundle successful, moving main.js and main.js.map to label-studio"
	mv build/main.js ../
	mv build/main.js.map ../
fi
