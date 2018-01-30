tcollector is a framework to collect data points and store them in OpenTSDB.
It allows you to write simple collectors that it'll run and monitor.  It also
handles the communication with the TSDs.

For more info, see the [TCollector Documentation](http://www.opentsdb.net/tcollector.html)

This fork only includes the flume plugin for opentsdb. It creates a docker image at szaharici/tcollector-flume. It can be used to gather metrics from the flume http monitoring entry point (http://flume.apache.org/FlumeUserGuide.html#json-reporting)


