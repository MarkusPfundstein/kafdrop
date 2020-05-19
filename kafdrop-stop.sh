
SIGNAL=${SIGNAL:-TERM}
PIDS=$(ps ax | grep -i '[k]afdrop' | grep java | awk '{print $1}')
echo $PIDS

if [ -z "$PIDS" ]; then
  echo "No kafdrop server to stop"
  exit 1
else
  kill -s $SIGNAL $PIDS
fi
