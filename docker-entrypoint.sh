# Start CVMFS
/usr/local/bin/start_cvmfs.sh

# Run forever to act like a server
source /cvmfs/nova.opensciencegrid.org/novasoft/slf6/novasoft/setup/setup_nova.sh -e /cvmfs/nova.opensciencegrid.org/externals -6 /cvmfs/nova.opensciencegrid.org/novasoft/slf6/novasoft -r S20-02-18 -b maxopt
/bin/bash
