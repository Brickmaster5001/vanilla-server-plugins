# Clear block below player while making sure it drops
setblock ~ ~-1 ~ air destroy

# Creates grave marker armour stand by spawning a leash knot below the player and then spawning the marker at it
summon leash_knot ~ ~-1 ~ {Tags:["vsp_grave_center"]}
execute as @e[tag=vsp_grave_center,sort=nearest,limit=1] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["vsp_grave_marker"]}
kill @e[tag=vsp_grave_center,sort=nearest,limit=1]

# Sets the grace markers vspGraveID to the grave owners vspPlayerID
scoreboard players operation @e[tag=vsp_grave_marker,limit=1,sort=nearest] vspGraveID = @s vspPlayerID

# Summons hopper minecarts at the grave marker
execute at @e[tag=vsp_grave_marker,tag=!vsp_grave_set,sort=nearest,limit=1] run summon hopper_minecart ~ ~ ~ {NoGravity:1b,Tags:["vsp_grave_storage"]}
execute at @e[tag=vsp_grave_marker,tag=!vsp_grave_set,sort=nearest,limit=1] run summon hopper_minecart ~ ~ ~ {NoGravity:1b,Tags:["vsp_grave_storage"]}
execute at @e[tag=vsp_grave_marker,tag=!vsp_grave_set,sort=nearest,limit=1] run summon hopper_minecart ~ ~ ~ {NoGravity:1b,Tags:["vsp_grave_storage"]}
execute at @e[tag=vsp_grave_marker,tag=!vsp_grave_set,sort=nearest,limit=1] run summon hopper_minecart ~ ~ ~ {NoGravity:1b,Tags:["vsp_grave_storage"]}
execute at @e[tag=vsp_grave_marker,tag=!vsp_grave_set,sort=nearest,limit=1] run summon hopper_minecart ~ ~ ~ {NoGravity:1b,Tags:["vsp_grave_storage"]}
execute at @e[tag=vsp_grave_marker,tag=!vsp_grave_set,sort=nearest,limit=1] run summon hopper_minecart ~ ~ ~ {NoGravity:1b,Tags:["vsp_grave_storage"]}
execute at @e[tag=vsp_grave_marker,tag=!vsp_grave_set,sort=nearest,limit=1] run summon hopper_minecart ~ ~ ~ {NoGravity:1b,Tags:["vsp_grave_storage"]}
execute at @e[tag=vsp_grave_marker,tag=!vsp_grave_set,sort=nearest,limit=1] run summon hopper_minecart ~ ~ ~ {NoGravity:1b,Tags:["vsp_grave_storage"]}
execute at @e[tag=vsp_grave_marker,tag=!vsp_grave_set,sort=nearest,limit=1] run summon hopper_minecart ~ ~ ~ {NoGravity:1b,Tags:["vsp_grave_storage"]}

# Sets vsp_grave_storage's vspGraveID score to the grave markers vspGraveID
scoreboard players operation @e[tag=vsp_grave_storage,tag=!vsp_grave_storage_active,limit=9,sort=nearest] vspGraveID = @e[tag=vsp_grave_marker,tag=!vsp_grave_marker_active,limit=1,sort=nearest] vspGraveID

# Tags vsp_grave_storage as having an ID and being setup
tag @e[tag=vsp_grave_storage,sort=nearest,limit=9,tag=!vsp_grave_storage_active] add vsp_grave_storage_active

# Teleports nearby items to the grave marker to be collected
execute at @e[tag=vsp_grave_marker,tag=!vsp_grave_marker_active,sort=nearest,limit=1] run tp @e[type=item,distance=..7] @s

# Places grave blocks
execute at @e[tag=vsp_grave_marker,tag=!vsp_grave_marker_active,sort=nearest,limit=1] run setblock ~ ~-1 ~ minecraft:podzol destroy
execute at @e[tag=vsp_grave_marker,tag=!vsp_grave_marker_active,sort=nearest,limit=1] run setblock ~ ~ ~ minecraft:andesite_wall[west=true,east=true] destroy

# Tags the grave marker as active
tag @e[tag=vsp_grave_marker,tag=!vsp_grave_marker_active,sort=nearest,limit=1] add vsp_grave_marker_active
