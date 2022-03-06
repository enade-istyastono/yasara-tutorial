CD (MacroDir)
libname='(MacroTarget)'
OnError Continue
QuantumMechanics AM1
Clear
for line in file (libname).smi
  smiles,name=split line
  obj = BuildSMILES '(smiles)'
  pH value=7.4,update=Yes
  Cell Auto,Extension=10
  ForceField NOVA,SetPar=yes
  Experiment Minimization
  Experiment On
  Wait ExpEnd
  OptimizeObj (obj)
  CompoundMol Obj (obj),'(name)'
  SavePDB !SimCell,(name).pdb
  DelObj (obj)
Clear
