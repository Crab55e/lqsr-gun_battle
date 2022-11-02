gamemode survival @s
clear @s #c_tfo:all{lq.gun_battle:1}
tellraw @s[tag=lq.gun_battle.player] ["",{"text": "===","color": "#44ffff"},"死亡したためゲームを退出しました",{"text": "===","color": "#44ffff"}]
tag @s remove lq.gun_battle.player


attribute @s generic.max_health base set 20.0
playsound block.wooden_door.close master @s ~ ~ ~ 1 1 1
effect give @s regeneration 1 255 true
effect give @s saturation 1 255 true

scoreboard players reset @s lq.on_death