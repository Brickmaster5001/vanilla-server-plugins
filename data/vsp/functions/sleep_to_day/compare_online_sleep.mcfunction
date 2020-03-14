# Count sleeping players
scoreboard players set sleepingPlayers vspGlobal 0
execute as @a[scores={vspData1=0}] run scoreboard players add sleepingPlayers vspGlobal 1

# Set nonSleepers vspGlobal to [onlinePlayers - sleepingPlayers]
scoreboard players operation nonSleepers vspGlobal = onlinePlayers vspGlobal
scoreboard players operation nonSleepers vspGlobal -= sleepingPlayers vspGlobal

# Calculate the sleepers needed to skip to day
scoreboard players operation sleepersNeeded vspGlobal = onlinePlayers vspGlobal
scoreboard players operation sleepersNeeded vspGlobal /= constantTwo vspGlobal
scoreboard players operation sleeperMath vspGlobal = onlinePlayers vspGlobal
scoreboard players operation sleeperMath vspGlobal -= sleepersNeeded vspGlobal
execute if score sleepersNeeded vspGlobal < sleeperMath vspGlobal run scoreboard players add sleepersNeeded vspGlobal 1

# If nonSleepers is less than or equal to sleepingPlayers than run 'sleep_to_day/set_day' and if not than run 'sleep_to_day/announce_sleepers_needed'
execute if score nonSleepers vspGlobal <= sleepingPlayers vspGlobal run function vsp:sleep_to_day/set_day
