class MoreDamageMutator extends ROMutator;

var RORoleInfoClasses RORICSouth;
var RORoleInfoClasses RORICNorth;

function PostBeginPlay()
{
	ReplacePawns();
}

simulated function ReplacePawns()
{
    ROGameInfo(WorldInfo.Game).SouthRoleContentClasses = RORICSouth;
    ROGameInfo(WorldInfo.Game).NorthRoleContentClasses = RORICNorth;
}

DefaultProperties
{
    RORICSouth=(LevelContentClasses=("MoreDamage.MDSouthPawn"))
    RORICNorth=(LevelContentClasses=("MoreDamage.MDNorthPawn"))
}
