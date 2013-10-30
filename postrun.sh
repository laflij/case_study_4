# Get folder of run

# Remove state data files
rm -rf state_cpt-*

# Get current date and time
time_stamp=$(date +%d-%m-%Y_%H-%M)

# Make a folder for run data files
runfolder="run-$time_stamp"
mkdir -p $runfolder


# Copy plot files for ease
cp *.gnu $runfolder/

# Copy run file and data file for repeatability
cp ljliquid.run $runfolder/
cp ljliquid.data $runfolder/

# Copy thermodata to a txt file for plotting
cp md-* $runfolder/thermodata.txt
 
# Move all data from run to this folder
mv system.lammpstrj $runfolder/
mv traj-0.xtc $runfolder/
mv *.xvg $runfolder/
mv *log* $runfolder/
