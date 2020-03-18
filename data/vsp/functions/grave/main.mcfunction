## 'grave | Plugin onTick commands'

# Constantly updates players dimension and XYZ data
execute as @a at @s store result score @s vspGraveX run data get entity @s Pos[0]
execute as @a at @s store result score @s vspGraveY run data get entity @s Pos[1]
execute as @a at @s store result score @s vspGraveZ run data get entity @s Pos[2]
execute as @a at @s store result score @s vspGraveDim run data get entity @s Dimension

# Removes all rail type blocks from below any graves to prevent minecart stealing
execute as @e[tag=vsp_grave_marker] at @s if block ~ ~-1 ~ #vsp:rail_blocks run setblock ~ ~-1 ~ air destroy

# Replaces the top and bottom half with their respective blocks if they change at any point
execute as @e[tag=vsp_grave_marker] at @s unless block ~ ~ ~ minecraft:podzol run setblock ~ ~ ~ minecraft:podzol
execute as @e[tag=vsp_grave_marker] at @s unless block ~ ~1 ~ minecraft:andesite_wall[east=true,west=true,up=true] run setblock ~ ~1 ~ minecraft:andesite_wall[east=true,west=true,up=true]

#

execute as @s at @s unless block ~ ~-1 ~ #vsp:grave_blockers unless block ~ ~-1 ~ #minecraft:flower_pots unless block ~ ~-1 ~ #minecraft:banners unless block ~ ~-1 ~ #minecraft:beds unless block ~ ~-1 ~ #minecraft:anvil unless block ~ ~-1 ~ #minecraft:shulker_boxes run tellraw @a ">>> You are not standing on a grave blocker"
execute as @s at @s if block ~ ~-1 ~ #vsp:grave_blockers run tellraw @a ">>> You are standing on a grave blocker"
execute as @s at @s if block ~ ~-1 ~ #minecraft:flower_pots run tellraw @a ">>> You are standing on a grave blocker"
execute as @s at @s if block ~ ~-1 ~ #minecraft:beds run tellraw @a ">>> You are standing on a grave blocker"
execute as @s at @s if block ~ ~-1 ~ #minecraft:banners run tellraw @a ">>> You are standing on a grave blocker"
execute as @s at @s if block ~ ~-1 ~ #minecraft:anvil run tellraw @a ">>> You are standing on a grave blocker"
execute as @s at @s if block ~ ~-1 ~ #minecraft:shulker_boxes run tellraw @a ">>> You are standing on a grave blocker"
