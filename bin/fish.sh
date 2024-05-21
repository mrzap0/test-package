
#!/bin/bash
SCRIPT_DIR=$(dirname $(/bin/readlink -f $BASH_SOURCE))

grep '"swc": true' tsconfig.json > /dev/null
if [ $? -ne 0 ]; then
  echo 'Warning: "swc": true not set in tsconfig.json - ts-node will be slow to start'
fi

node $SCRIPT_DIR/../../ts-node/dist/bin.js $*
