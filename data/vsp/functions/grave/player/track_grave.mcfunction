tellraw @s [{"text":">>> ","color":"gray"},{"text":"Your most recent grave is located at: ","color":"yellow"},{"score":{"name":"@s","objective":"vspGraveX"},"color":"gold"},{"text":" "},{"score":{"name":"@s","objective":"vspGraveY"},"color":"gold"},{"text":" "},{"score":{"name":"@s","objective":"vspGraveZ"},"color":"gold"}]
tellraw @s[scores={vspGraveDim=0}] [{"text":">>> ","color":"gray"},{"text":"Your grave is located in the ","color":"yellow"},{"text":"Overworld","color":"dark_green"}]
tellraw @s[scores={vspGraveDim=1}] [{"text":">>> ","color":"gray"},{"text":"Your grave is located in the ","color":"yellow"},{"text":"End","color":"light_purple"}]
tellraw @s[scores={vspGraveDim=-1}] [{"text":">>> ","color":"gray"},{"text":"Your grave is located in the ","color":"yellow"},{"text":"Nether","color":"red"}]
