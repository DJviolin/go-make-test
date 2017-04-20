# https://www.slideshare.net/RaPz1/build-golang-projects-properly-with-makefiles

# This is how we want to name the binary output
BINARY=gomake

# These are the values we want to pass for VERSION and BUILD
VERSION=1.0.0
BUILD=`date +%FT%T%z`

# Setup the -ldflags option for go build here, interpolate the variable values
# https://golang.org/cmd/link/
LDFLAGS=-ldflags "-X main.Version=${VERSION} -X main.Build=${BUILD}"

# Default target: builds the project
build:
	go build ${LDFLAGS} -o ${BINARY}

# Installs our project: copies binaries
install:
	go install ${LDFLAGS}

# Cleans our project: Deletes binaries
clean:
	if [ -f ${BINARY} ] ; then rm ${BINARY}; fi

.PHONY: clean install
