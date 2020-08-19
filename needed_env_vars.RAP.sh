#
# Needed environment variables to develop under RAP Makefile System
#
#==========================================================
#

# figure out what kind of linux this is
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac

export LOCAL_TOP_DIR=$HOME/rap

if [ $machine = "Mac" ]
then
    export RAP_TOP_DIR=$LOCAL_TOP_DIR
    export HOST_OS=DARWIN
fi

if [ $machine = "Linux" ]
then    
    export RAP_TOP_DIR=~/rap
    export HOST_OS=LINUX_CX11
fi

# for CVS and compilation

export CVSROOT=:pserver:prestop@cvs:/cvs
#export HOST_OS=LINUX_64_wheezy



# shared installed libraries and bins

#export RAP_MAKE_INC_DIR=$RAP_TOP_DIR/make_include
export RAP_MAKE_INC_DIR=$HOME/make_include
export RAP_MAKE_BIN_DIR=$RAP_TOP_DIR/make_bin
export RAP_SHARED_INC_DIR=$RAP_TOP_DIR/include
export RAP_SHARED_LIB_DIR=$RAP_TOP_DIR/lib
export RAP_SHARED_BIN_DIR=$RAP_TOP_DIR/bin
export RAP_SHARED_MAN_DIR=$RAP_TOP_DIR/man
export RAP_SHARED_DOC_DIR=$RAP_TOP_DIR/doc
export RAP_SHARED_JAVA_DIR=$RAP_TOP_DIR/java

# shared profile-compiled libs and bins

export RAP_PROFILE_LIB_DIR=$RAP_TOP_DIR/profile_lib
export RAP_PROFILE_BIN_DIR=$RAP_TOP_DIR/profile_bin

# shared INSIGHT-compiled libraries

export RAP_INSURE_LIB_DIR=$RAP_TOP_DIR/insight_lib

# local libraries and bins 
# 	customize LOCAL_TOP_DIR for your development env


#export LOCAL_TOP_DIR=/rap

export RAP_INC_DIR=$LOCAL_TOP_DIR/include
export RAP_LIB_DIR=$LOCAL_TOP_DIR/lib
export RAP_BIN_DIR=$LOCAL_TOP_DIR/bin
export RAP_JAVA_DIR=$LOCAL_TOP_DIR/java

export LOG_OUTPUT_DIR=~/logs

#needed for netcdf 4 for Wrf2Mdv
#export LD_LIBRARY_PATH=/usr/local/netcdf/lib/ 



#############################
## NOW RAL
###########################

export RAL_TOP_DIR=$RAP_TOP_DIR
#export RAL_TOP_DIR=~/rap

# shared installed libraries and bins

export RAL_MAKE_INC_DIR=$RAL_TOP_DIR/make_include
export RAL_MAKE_BIN_DIR=$RAL_TOP_DIR/make_bin
export RAL_SHARED_INC_DIR=$RAL_TOP_DIR/include
export RAL_SHARED_LIB_DIR=$RAL_TOP_DIR/lib
export RAL_SHARED_BIN_DIR=$RAL_TOP_DIR/bin
export RAL_SHARED_MAN_DIR=$RAL_TOP_DIR/man
export RAL_SHARED_DOC_DIR=$RAL_TOP_DIR/doc
export RAL_SHARED_JAVA_DIR=$RAL_TOP_DIR/java

# shared profile-compiled libs and bins

export RAL_PROFILE_LIB_DIR=$RAL_TOP_DIR/profile_lib
export RAL_PROFILE_BIN_DIR=$RAL_TOP_DIR/profile_bin

# shared INSIGHT-compiled libraries

export RAL_INSURE_LIB_DIR=$RAL_TOP_DIR/insight_lib

export RAL_INC_DIR=$LOCAL_TOP_DIR/include
export RAL_LIB_DIR=$LOCAL_TOP_DIR/lib
export RAL_BIN_DIR=$LOCAL_TOP_DIR/bin
export RAL_JAVA_DIR=$LOCAL_TOP_DIR/java
