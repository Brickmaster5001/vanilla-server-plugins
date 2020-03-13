# Count sleeping players
scoreboard players set sleepingPlayers ssGlobal 0
execute as @a[scores={ssData1=0}] run scoreboard players add sleepingPlayers ssGlobal 1

# Set nonSleepers ssGlobal to [onlinePlayers - sleepingPlayers]
scoreboard players operation nonSleepers ssGlobal = onlinePlayers ssGlobal
scoreboard players operation nonSleepers ssGlobal -= sleepingPlayers ssGlobal

# Calculate the sleepers needed to skip to day
scoreboard players operation sleepersNeeded ssGlobal = onlinePlayers ssGlobal
scoreboard players operation sleepersNeeded ssGlobal /= constantTwo ssGlobal
scoreboard players operation sleeperMath ssGlobal = onlinePlayers ssGlobal
scoreboard players operation sleeperMath ssGlobal -= sleepersNeeded ssGlobal
execute if score sleepersNeeded ssGlobal < sleeperMath ssGlobal run scoreboard players add sleepersNeeded ssGlobal 1

# If nonSleepers is less than or equal to sleepingPlayers than run 'sleep_to_day/set_day' and if not than run 'sleep_to_day/announce_sleepers_needed'
execute if score nonSleepers ssGlobal <= sleepingPlayers ssGlobal run function brickmaster:sleep_to_day/set_day
