### Objective definitions
# vspData1 = 'minecraft.time_since_rest | Type ... Tracks Sleeping Players when user value is 0'
# vspGlobal = 'dummy | Type ... Used to count online players'
### Objective definitions

## Resets displayed scoreboards
scoreboard objectives setdisplay sidebar

## Creates Global Variables used by some or all plugins
scoreboard objectives add vspGlobal dummy {"text":"vspGlobal Data","color":"yellow"}
#

## Creates scoreboard for generic

# PRNG objectives
scoreboard objectives add vsp_rns dummy
scoreboard objectives add vsp_rng2 dummy
scoreboard objectives add vsp_rng3 dummy
scoreboard objectives add vsp_rng4 dummy
scoreboard objectives add vspPlayerID dummy
scoreboard objectives add vspMath dummy

# PRNG default values
scoreboard players set stored vsp_rng2 87
scoreboard players set stored vsp_rng3 704969959
scoreboard players set stored vsp_rng4 99999999
#

## Creates scoreboards for sleep_to_day
scoreboard objectives add vspData1 minecraft.custom:minecraft.time_since_rest

# Define default values
scoreboard players set onlinePlayers vspGlobal 0
scoreboard players set sleepingPlayers vspGlobal 0
scoreboard players set nonSleepers vspGlobal 0
scoreboard players set sleeperMath vspGlobal 0
scoreboard players set constantOne vspGlobal 1
scoreboard players set constantTwo vspGlobal 2
scoreboard players set sleepersNeeded 1
#

## Creates scoreboards for set_home

# Tracking objectives
scoreboard objectives add vspHomeStoreX dummy
scoreboard objectives add vspHomeStoreY dummy
scoreboard objectives add vspHomeStoreZ dummy
scoreboard objectives add vspHomeStoreD dummy
#

##  Creates scoreboards for grave

# Player XYZ trackers
scoreboard objectives add vspGraveX dummy
scoreboard objectives add vspGraveY dummy
scoreboard objectives add vspGraveZ dummy
scoreboard objectives add vspGraveDim dummy

# Grave marker id
scoreboard objectives add vspGraveID dummy

# Grave lock cooldown
scoreboard objectives add vspGraveLock dummy

# Added death tracker obj
scoreboard objectives add vspDeathTrack deathCount

# Adds vspGraveTrigger trigger obj
scoreboard objectives add vspGraveTrigger trigger

#
