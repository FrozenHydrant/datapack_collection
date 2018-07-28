gamemode creative @a
tellraw @a {"selector":"@a[tag=playing_alive]","color":"light_purple","extra":[{"text":" has won the game!","color":"white"}]}
title @a[tag=playing_alive] title {"text":"#1 Victory Royale!","color":"yellow","bold":false}
title @a[tag=!playing_alive] subtitle {"score":{"name":"@a[tag=playing_alive]","objective":""},"color":"yellow","extra":[{"text":" won the game!","color":"yellow"}]}
title @a[tag=!playing_alive] title {"text": ""}
worldborder set 30000000
execute at @e[tag=fortnite_start_stand] run tp @a ~ ~ ~ 
tag @a remove playing_alive

kill @e[type=armor_stand,tag=fortnite]
scoreboard objectives remove fortnite_cc
scoreboard objectives remove fortnite_max_cc
scoreboard objectives remove fortnite_d

scoreboard objectives remove fortnite_p

setblock ~ ~ ~ air destroy


