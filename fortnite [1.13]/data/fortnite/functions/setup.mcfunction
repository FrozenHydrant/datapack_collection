execute at @e[tag=fortnite_start_stand] run spreadplayers ~ ~ 0 500 false @e[tag=fortnite_chest_placer]
execute at @e[tag=fortnite_chest_placer] run summon armor_stand ~ ~ ~ {Tags:["fortnite","fortnite_chest_stand"], NoGravity:1, Invulnerable:1, Invisible:1, PersistenceRequired:1}
scoreboard players add @e[tag=fortnite_chest_placer] fortnite_cc 1

execute if score @e[limit=1, tag=fortnite_chest_placer] fortnite_cc > @e[tag=fortnite_chest_placer, limit=1] fortnite_max_cc at @e[tag=fortnite_chest_stand] run setblock ~ ~ ~ chest{LootTable:"minecraft:chests/end_city_treasure"} destroy
execute if score @e[limit=1, tag=fortnite_chest_placer] fortnite_cc > @e[tag=fortnite_chest_placer, limit=1] fortnite_max_cc at @e[tag=fortnite_start_stand, limit=1] run setblock ~ ~ ~ minecraft:command_block{Command:"function fortnite:start"} destroy
execute if score @e[limit=1, tag=fortnite_chest_placer] fortnite_cc > @e[tag=fortnite_chest_placer, limit=1] fortnite_max_cc run kill @e[tag=fortnite_chest_placer] 
