scoreboard players add @s lq.gun_battle.kill_count 1
tag @s add lq.gun_battle.player.now_killed

execute if score @s lq.gun_battle.kill_count matches 1000.. run advancement revoke @s only c_lqsr:displayed/1000kill

execute as @a[predicate=c_lqsr:gun_battle/is_in_arena,distance=0.1..,sort=nearest,limit=1] if score @s lq.gun_battle.kill_count > @a[tag=lq.gun_battle.player.now_killed,limit=1,sort=nearest] lq.gun_battle.kill_count as @a[tag=lq.gun_battle.player.now_killed,limit=1,sort=nearest] run function c_lqsr:player/gun_battle/on_kill/point_bonus
tag @s remove lq.gun_battle.player.now_killed

effect give @s regeneration 1 255 true
effect give @s minecraft:saturation 1 2 true
playsound entity.player.levelup master @s ~ ~ ~ 1 1.5 1
    
tellraw @s ["",{"text": "===\n","color": "#44ffff"},"プレイヤーをキルしました\n","合計キル: ",{"score":{"name": "@s","objective": "lq.gun_battle.kill_count"}},{"text": "\n===","color": "#44ffff"}]
