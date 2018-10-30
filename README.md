# ACE Punish unknown weapon
## Description
A script that punishes picking up unknown/enemy weapons by degrading their efficiency!\
As a mission maker and player, it is generally known not to pickup enemy guns for multiple reasons, such as being able to ID enemies easier.\
During my time playing this game I saw multiple ideas how to limit players form picking up enemy guns. Most revolve around the idea of just straight up removing guns and ammo from dead enemies or even enemy guns from a player’s inventory.\
This would also means running out of ammo as a player with no other way to resupply then looting enemy or friendly corpses will render you defenseless. I’ve been in similar situations like these before and all I could do was hope my squad would not run out of ammo or some other squad would safe us.\
So, I started thinking of a way to discourage players form picking up enemy weapons, but not outright remove the option for them.\
As a solution I came up with a system which makes enemy weapons less efficient and still usable, but it comes with a risk.\
In general, unknown weapons will be less accurate the more the heat up, they are prone to jam more then your starting weapon and reloading can fail, so you have to reload again. (This is to simulate longer reloading times as it is not possible otherwise in ARMA)\
The earlier mentioned risk is that such an unknown weapon can have a rare fatal chamber failure when jamming and it will basically explode in your face and makes the weapon itself unusable.

__By no means is this script meant to be realistic.__ For me it is a gameplay mechanic and I treat it that way as well. Thus, it is really only meant to be used in COOP missions as the unknown weapon list is global to all players!

## Requirements:
In order to use this script, you need to run these mods alongside it:
* CBA
* ACE Overheating

## Installation and configuration:
Copy over the contents of the “scripts” folder into your mission folder, add or edit your mission’s config settings in description.ext according to the example mission.\
Installation is done.\
Any configuration will be done within Eden editor and in `Settings -> Addon Options -> Punish unknown weapon`

### For mission makers:
Here is a small rundown what which setting does and how in general this script works.

__Enable:__
Enables the script on mission start.

__Wait after mission begin:__\
This script will add all primary weapons from any player after the set time to the known weapon array and propagate it to all players and jips. Jips will send after 30 seconds (so custom loadouts can be applied) their current primary weapon to the server and it will add it to the known weapon pool and clear any disadvantages from other players for that weapon.

__Add weapon dispersion:__\
Adds a flat value **ONTOP** of ACEs dispersion value. This makes weapons less accurate.

__Add jam chance:__\
Adds a jamming percentage **ONTOP** of ACEs jamming chance.

__Reload failure chance:__\
Chance of a reload failure for an unknown weapon.

__Chance to destroy weapon on jam:__\
If a jam event occurs this is the chance that the weapon will straight up explode and hurt its current user.

__Add more weapons:__ \
In case players do not have all their weapons on mission start, you can add weapon classes comma separate and WITHOUT whitespaces to this input field. Those weapons will be added as known weapon.

__Add briefing entry:__\
Adds a Diary entry to the briefing menu warning players that this script is activated.

__Enable propagation:__\
Enables if the server should collect weapon class names from players and add them to the whitelist. This is an advanced option and only experienced mission makers should use this. This option could be used to set up a play scenario for TvTs for example.

### Variables
This script uses some variables which are not listed inside the addon options menu.

__diwako_unknownwp_local_weapons:__\
This is a _local_ array which ADDS to the whitelist from the server. It can be used to give units of choice more weapon choices without penalty. This is an advanced mission maker variable as there are rules for this variable.
* Only strings are allowed
* Every string MUST be fully uppercase
* No whitespaces in class names
* Must be filled on mission start for the unit, mid mission not supported!

## Additional
Discussion can be found in the [BI Thread](https://forums.bohemia.net/forums/topic/217470-release-ace-punish-unknownenemy-weapon-script/), for bug reports please use this GitHub Repo.