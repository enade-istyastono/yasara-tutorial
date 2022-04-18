CD (MacroDir)
BuildMol (MacroTarget).fasta
AddCapObj 1,Type=ACE+NME,Location=external
pH value=7.4,update=Yes
CleanAll
ForceField AMBER14,SetPar=Yes
Interactions Bond,Angle,Dihedral,Planarity,Coulomb,VdW
Experiment Minimization
Experiment On
Wait ExpEnd
SaveYOb !SimCell,seq 
Clear
if runWithMacro and ConsoleMode and !IndentationLevel
  Exit