# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

stdPATH="/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin"
qtPATH="/home/vws/bin:/usr/lib64/qt-3.3:/opt/QtSDK/Desktop/Qt/4.8.1/gcc/bin"
epicsPATH="/home/vws/epics-base-3.16/bin/linux-x86_64:/home/vws/epics-cpp-4.6.0/pvAccessCPP/bin/linux-x86_64"


export PATH="$stdPATH:$qtPATH:$epicsPATH"

export PS1="\u@\h \w> "

if [ "$HOST_OS" != "Linux" ]; then 
	export HOST_OS="Linux"
fi

if [ "$EPICS_HOST_ARCH" != "linux-x86_64" ]; then 
	export EPICS_HOST_ARCH="linux-x86_64"
fi

if [ "$EPICS_BASE" != "/home/$USER/epics-base-3.16" ]; then
	export EPICS_BASE="/home/$USER/epics-base-3.16"
fi

if [ "$EPICS_V3_DIR" != "$EPICS_BASE" ]; then
	export EPICS_V3_DIR="$EPICS_BASE"
fi

if [ "$EPICS_V4_DIR" != "/home/$USER/epics-cpp-4.6.0" ]; then
	export EPICS_V4_DIR="/home/$USER/epics-cpp-4.6.0"
fi

if [ "$EPICS4_DIR" != "/home/$USER/epics-cpp-4.6.0" ]; then
	export EPICS4_DIR="/home/$USER/epics-cpp-4.6.0"
fi

if [ "$config" != "/home/$USER/config/config" ]; then
	export config="/home/$USER/config/config"
fi

export QT_LIB="/opt/QtSDK/Desktop/Qt/4.8.1/gcc/lib"
export QT_INC="/opt/QtSDK/Desktop/Qt/4.8.1/gcc/include"

export COM_LIB="$EPICS_V3_DIR/lib/$EPICS_HOST_ARCH"

export PVCOMMON_LIB="$EPICS_V4_DIR/pvCommonCPP/lib/$EPICS_HOST_ARCH"
export PVDATA_LIB="$EPICS_V4_DIR/pvDataCPP/lib/$EPICS_HOST_ARCH"
export PVACCESS_LIB="$EPICS_V4_DIR/pvAccessCPP/lib/$EPICS_HOST_ARCH"
export PVACLIENT_LIB="$EPICS_V4_DIR/pvaClientCPP/lib/$EPICS_HOST_ARCH"
export PVDATABASE_LIB="$EPICS_V4_DIR/pvDatabaseCPP/lib/$EPICS_HOST_ARCH"
export PVNT_LIB="$EPICS_V4_DIR/normativeTypesCPP/lib/$EPICS_HOST_ARCH"
export PVASRV_LIB="$EPICS_V4_DIR/pvaSrv/lib/$EPICS_HOST_ARCH"

export LD_LIBRARY_PATH=$COM_LIB:$PVDATA_LIB:$PVACCESS_LIB:$PVACLIENT_LIB:$PVDATABASE_LIB:$PVNT_LIB:$PVASRV_LIB:$PVCOMMON_LIB

if [ "$PYTHONPATH" != "$EPICS_V4_DIR/pvaPy/lib/python/2.6/linux-x86_64" ]; then
	export PYTHONPATH="$EPICS_V4_DIR/pvaPy/lib/python/2.6/linux-x86_64"
fi

if [ "$IP" = "" ]; then
	export IP=160.91.232.119
fi

