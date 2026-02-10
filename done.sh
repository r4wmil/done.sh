#!/bin/sh

DONE_FILE="{done_file}"

touch $DONE_FILE

if ! grep -q "^% `date +'%Y-%m-%d'`" "$DONE_FILE"; then
	echo "% `date +'%Y-%m-%d'`" >> $DONE_FILE
fi

NEW_LINE="% `date +'%H:%M'` $@"

echo $NEW_LINE >> $DONE_FILE
