#!/bin/bash

source utils/config

FLEX_SDK_LOCATION=`utils/flex-sdk`

if [ $? -eq 0 ];then

	# TODO: Error handling if repository is not tagged, or not inside of a repo
	FLIXEL_VERSION=`git describe`
	OUTPUT="$SWC_OUTPUT_LOCATION/flixel-$FLIXEL_VERSION.swc"
	
	# Only include the library folder if it exists
	[ -d "$LIBRARY_LOCATION" ] && LIB_PATH_ARGS="-library-path+=\"$LIBRARY_LOCATION\""
	
	"$FLEX_SDK_LOCATION"/bin/compc -source-path="$SOURCE_CODE_LOCATION" -include-sources="$SOURCE_CODE_LOCATION" $LIB_PATH_ARGS -output="$OUTPUT"

else

	# Echo out the error message from running the script
	echo "$FLEX_SDK_LOCATION";
	exit 1;

fi
