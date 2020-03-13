### Objective definitions
# ssData1 = 'minecraft.time_since_rest | Type ... Tracks Sleeping Players when user value is 0'
# ssGlobal = 'dummy | Type ... Used to count online players'
### Objective definitions

## Resets displayed scoreboards
scoreboard objectives setdisplay sidebar

## Creates scoreboards for sleep_to_day
scoreboard objectives add ssData1 minecraft.custom:minecraft.time_since_rest {"text":"Sleepers","color":"red"}
scoreboard objectives add ssGlobal dummy {"text":"ssGlobal Data","color":"yellow"}
scoreboard players set onlinePlayers ssGlobal 0
scoreboard players set sleepingPlayers ssGlobal 0
scoreboard players set nonSleepers ssGlobal 0
scoreboard players set sleeperMath ssGlobal 0
scoreboard players set constantOne ssGlobal 1
scoreboard players set constantTwo ssGlobal 2
scoreboard players set sleepersNeeded 1
