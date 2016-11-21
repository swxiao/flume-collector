#bash/bin


COLLECTOR_HOME=`pwd`/../

if [ ! -d "$COLLECTOR_HOME/out" ]; then
	mkdir -p $COLLECTOR_HOME/out
fi

nohup $COLLECTOR_HOME/bin/flume-ng agent -c $COLLECTOR_HOME/conf -f $COLLECTOR_HOME/conf/flume-collector-http.conf -n http -Dflume.root.logger=INFO,HTTP >> $COLLECTOR_HOME/out/flume-collector-http.out &

