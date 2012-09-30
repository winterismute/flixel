#!/bin/bash

# NOTE: These variables are relative to where you are calling the script from,
#	NOT the location of the script!
CODE_LOCATION="."
TARGET_LOCATION="docs"

FLEX_SDK_LOCATION=`utils/flex-sdk`

if [ $? -eq 0 ];then

	"$FLEX_SDK_LOCATION"/bin/asdoc -source-path "$CODE_LOCATION" -doc-sources "$CODE_LOCATION" -output "$TARGET_LOCATION"

else

	# Echo out the error message from running the script
	echo "$FLEX_SDK_LOCATION";
	exit 1;

fi
