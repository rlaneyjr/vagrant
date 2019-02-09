#!/usr/bin/env bash

BOXS="/Volumes/T1-SSD/CiscoBOXs"
ID="rlaneyjr22"
API="AKCp5btpMQurDAAxXSFFZTPNRotNidBvhxpCovxGy8CqgV179HNEUgCUW2PhqQz1G4GQWLYfm"
STABLE_BOXURL="https://devhub.cisco.com/artifactory/appdevci-release/XRv64/6.1.2/iosxrv-fullk9-x64.box"
LATEST_BOXURL="https://devhub.cisco.com/artifactory/XRv64-snapshot/latest/iosxrv-fullk9-x64.latest.box"
curl -u $ID:$API $STABLE_BOXURL --output $BOXS/iosxrv-fullk9-x64_stable.box
curl -u $ID:$API $LATEST_BOXURL --output $BOXS/iosxrv-fullk9-x64_latest.box
#vagrant box add --name IOS-XRv-Stable $BOXS/iosxrv-fullk9-x64_stable.box
#vagrant box add --name IOS-XRv-Latest $BOXS/iosxrv-fullk9-x64_latest.box
#wget http://netprog.cisco.com/vagrant_box/iosxe-16.6.1.box
#vagrant box add iosxe/16.6.1 iosxe-16.6.1.box --force
