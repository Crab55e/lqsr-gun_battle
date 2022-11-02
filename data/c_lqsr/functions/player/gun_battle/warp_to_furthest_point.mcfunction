tag @s add lq.gun_battle.player.now_warping
execute as @e[type=marker,limit=1,sort=furthest,tag=lq.gun_battle.warp_point] at @s run tp @a[limit=1,tag=lq.gun_battle.player.now_warping,sort=nearest] ~ ~1 ~ 
tag @s remove lq.gun_battle.player.now_warping
particle portal ~ ~ ~ 1 1 1 2 100 normal
playsound entity.enderman.teleport master @s ~ ~ ~ 1 1 1
effect give @s blindness 1 0 true