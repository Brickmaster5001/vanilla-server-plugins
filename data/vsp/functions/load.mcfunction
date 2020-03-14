### Objective definitions
# vspData1 = 'minecraft.time_since_rest | Type ... Tracks Sleeping Players when user value is 0'
# vspGlobal = 'dummy | Type ... Used to count online players'
### Objective definitions

## Resets displayed scoreboards
scoreboard objectives setdisplay sidebar

## Creates scoreboard for generic

#

## Creates scoreboards for sleep_to_day
scoreboard objectives add vspData1 minecraft.custom:minecraft.time_since_rest {"text":"Sleepers","color":"red"}
scoreboard objectives add vspGlobal dummy {"text":"vspGlobal Data","color":"yellow"}

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
scoreboard objectives add ss

# Tracking objectives
scoreboard objectives add ssHomeStoreX dummy
scoreboard objectives add ssHomeStoreY dummy
scoreboard objectives add ssHomeStoreZ dummy
scoreboard objectives add ssHomeStoreD dummy

# PRNG objectives
scoreboard objectives add vsp_rns dummy
scoreboard objectives add vsp_rng2 dummy
scoreboard objectives add vsp_rng3 dummy
scoreboard objectives add vsp_rng4 dummy
scoreboard objectives add vspPlayerID dummy
scoreboard objectives add vspMath dummy

# PRNG default values
scoreboard players set stored vsp_rng2 97826
scoreboard players set stored vsp_rng3 704969959
scoreboard players set stored vsp_rng4 99999999
#
