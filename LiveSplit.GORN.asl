state("GORN")
{
	int isLoading : "UnityPlayer.dll", 0x01465B90, 0x28, 0x40, 0x130;
	int arenaDone : "UnityPlayer.dll", 0x014AF590, 0x30, 0x40, 0x98, 0x100, 0x6C0 ;
}

init
{
	vars.arenas=0;
	vars.splits=0;
	vars.loads=0;
	vars.isRunning=1;
}

startup
{
	settings.Add("NG+",false);
}

isLoading
{
	return (current.isLoading != 0);
}

reset
{
	if(vars.isRunning==0)
	{
		vars.isRunning=1;
		return true;
	}
	return false;
}

exit
{
	vars.isRunning=0;
}

/*split
  {
  return false; //This part currently doesn't work
  if(current.arenaDone==1 && old.arenaDone==0)
  {
  vars.arenas=vars.arenas+1;
  }

//if((settings["NG+"] && current.arenaDone==1 && old.arenaDone==0) || (vars.splits==0 && vars.arenas==4) || (vars.splits<6 && vars.arenas==5) || vars.arenas==3)
if(current.arenaDone==1)
{
vars.splits=vars.splits+1;
vars.arenas=0;
return true;
}

return false;
}

start
{
return false; //This part currently doesn't work
return (current.isLoading != 0 && vars.splits==0 && vars.arenas==0); //Start on first loading screen
}*/
