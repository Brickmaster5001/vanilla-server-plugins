## 'grave | Plugin onTick commands'

# Constantly updates players dimension and XYZ data
execute as @a at @s store result score @s vspGraveX run data get entity @s Pos[0]
execute as @a at @s store result score @s vspGraveY run data get entity @s Pos[1]
execute as @a at @s store result score @s vspGraveZ run data get entity @s Pos[2]
execute as @a at @s store result score @s vspGraveDim run data get entity @s Dimension

#
