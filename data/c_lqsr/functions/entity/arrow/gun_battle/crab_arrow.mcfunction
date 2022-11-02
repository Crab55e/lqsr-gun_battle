summon arrow ~ ~.25 ~ {Motion:[0.5,0.25,0.0],damage:8,Tags:["lq.gun_battle.arrow.crab","lq.gun_battle.arrow.crab.0"],pickup:0b}
summon arrow ~ ~.25 ~ {Motion:[-0.5,0.25,0.0],damage:8,Tags:["lq.gun_battle.arrow.crab","lq.gun_battle.arrow.crab.1"],pickup:0b}
summon arrow ~ ~.25 ~ {Motion:[0.0,0.25,0.5],damage:8,Tags:["lq.gun_battle.arrow.crab","lq.gun_battle.arrow.crab.2"],pickup:0b}
summon arrow ~ ~.25 ~ {Motion:[0.0,0.25,-0.5],damage:8,Tags:["lq.gun_battle.arrow.crab","lq.gun_battle.arrow.crab.3"],pickup:0b}
summon arrow ~ ~.25 ~ {Motion:[0.5,0.25,0.5],damage:8,Tags:["lq.gun_battle.arrow.crab","lq.gun_battle.arrow.crab.4"],pickup:0b}
summon arrow ~ ~.25 ~ {Motion:[-0.5,0.25,-0.5],damage:8,Tags:["lq.gun_battle.arrow.crab","lq.gun_battle.arrow.crab.5"],pickup:0b}
summon arrow ~ ~.25 ~ {Motion:[-0.5,0.25,0.5],damage:8,Tags:["lq.gun_battle.arrow.crab","lq.gun_battle.arrow.crab.6"],pickup:0b}
summon arrow ~ ~.25 ~ {Motion:[0.5,0.25,-0.5],damage:8,Tags:["lq.gun_battle.arrow.crab","lq.gun_battle.arrow.crab.7"],pickup:0b}

data modify entity @e[type=arrow,limit=1,sort=nearest,tag=lq.gun_battle.arrow.crab.0] Owner set from entity @s Owner
data modify entity @e[type=arrow,limit=1,sort=nearest,tag=lq.gun_battle.arrow.crab.1] Owner set from entity @s Owner
data modify entity @e[type=arrow,limit=1,sort=nearest,tag=lq.gun_battle.arrow.crab.2] Owner set from entity @s Owner
data modify entity @e[type=arrow,limit=1,sort=nearest,tag=lq.gun_battle.arrow.crab.3] Owner set from entity @s Owner
data modify entity @e[type=arrow,limit=1,sort=nearest,tag=lq.gun_battle.arrow.crab.4] Owner set from entity @s Owner
data modify entity @e[type=arrow,limit=1,sort=nearest,tag=lq.gun_battle.arrow.crab.5] Owner set from entity @s Owner
data modify entity @e[type=arrow,limit=1,sort=nearest,tag=lq.gun_battle.arrow.crab.6] Owner set from entity @s Owner
data modify entity @e[type=arrow,limit=1,sort=nearest,tag=lq.gun_battle.arrow.crab.7] Owner set from entity @s Owner

tellraw @a[predicate=c_lqsr:gun_battle/is_in_arena] "<カニ> 痛い。"

scoreboard players add @p lq.gun_battle.attacked_crab 1
execute if predicate c_tfo:random/0.1 run tellraw @a[predicate=c_lqsr:gun_battle/is_in_arena] "<カニ> やめろ！！！"
execute if predicate c_tfo:random/0.2 run summon item ~ ~.1 ~ {Item:{id:"minecraft:arrow",Count:4b},Motion:[0.0,0.25,0.0]}
kill @s