# 清除进度以便下次还能触发
advancement revoke @s only mastermodel:detect_random_book

#say function runned

# 对所有带标记的书应用随机附魔
# data/mastermodel:randomize_book/function/process_book.mcfunction

# 主手
execute if items entity @s weapon.mainhand minecraft:enchanted_book[minecraft:custom_data~{mastermodel:"random_book"}] run item modify entity @s weapon.mainhand mastermodel:randomize_book

# 副手
execute if items entity @s weapon.offhand minecraft:enchanted_book[minecraft:custom_data~{mastermodel:"random_book"}] run item modify entity @s weapon.offhand mastermodel:randomize_book

# 快捷栏 0-8
execute if items entity @s hotbar.0 minecraft:enchanted_book[minecraft:custom_data~{mastermodel:"random_book"}] run item modify entity @s hotbar.0 mastermodel:randomize_book
execute if items entity @s hotbar.1 minecraft:enchanted_book[minecraft:custom_data~{mastermodel:"random_book"}] run item modify entity @s hotbar.1 mastermodel:randomize_book
execute if items entity @s hotbar.2 minecraft:enchanted_book[minecraft:custom_data~{mastermodel:"random_book"}] run item modify entity @s hotbar.2 mastermodel:randomize_book
execute if items entity @s hotbar.3 minecraft:enchanted_book[minecraft:custom_data~{mastermodel:"random_book"}] run item modify entity @s hotbar.3 mastermodel:randomize_book
execute if items entity @s hotbar.4 minecraft:enchanted_book[minecraft:custom_data~{mastermodel:"random_book"}] run item modify entity @s hotbar.4 mastermodel:randomize_book
execute if items entity @s hotbar.5 minecraft:enchanted_book[minecraft:custom_data~{mastermodel:"random_book"}] run item modify entity @s hotbar.5 mastermodel:randomize_book
execute if items entity @s hotbar.6 minecraft:enchanted_book[minecraft:custom_data~{mastermodel:"random_book"}] run item modify entity @s hotbar.6 mastermodel:randomize_book
execute if items entity @s hotbar.7 minecraft:enchanted_book[minecraft:custom_data~{mastermodel:"random_book"}] run item modify entity @s hotbar.7 mastermodel:randomize_book
execute if items entity @s hotbar.8 minecraft:enchanted_book[minecraft:custom_data~{mastermodel:"random_book"}] run item modify entity @s hotbar.8 mastermodel:randomize_book

# 背包 0-26
execute if items entity @s inventory.0 minecraft:enchanted_book[minecraft:custom_data~{mastermodel:"random_book"}] run item modify entity @s inventory.0 mastermodel:randomize_book
execute if items entity @s inventory.1 minecraft:enchanted_book[minecraft:custom_data~{mastermodel:"random_book"}] run item modify entity @s inventory.1 mastermodel:randomize_book
execute if items entity @s inventory.2 minecraft:enchanted_book[minecraft:custom_data~{mastermodel:"random_book"}] run item modify entity @s inventory.2 mastermodel:randomize_book
execute if items entity @s inventory.3 minecraft:enchanted_book[minecraft:custom_data~{mastermodel:"random_book"}] run item modify entity @s inventory.3 mastermodel:randomize_book
execute if items entity @s inventory.4 minecraft:enchanted_book[minecraft:custom_data~{mastermodel:"random_book"}] run item modify entity @s inventory.4 mastermodel:randomize_book
execute if items entity @s inventory.5 minecraft:enchanted_book[minecraft:custom_data~{mastermodel:"random_book"}] run item modify entity @s inventory.5 mastermodel:randomize_book
execute if items entity @s inventory.6 minecraft:enchanted_book[minecraft:custom_data~{mastermodel:"random_book"}] run item modify entity @s inventory.6 mastermodel:randomize_book
execute if items entity @s inventory.7 minecraft:enchanted_book[minecraft:custom_data~{mastermodel:"random_book"}] run item modify entity @s inventory.7 mastermodel:randomize_book
execute if items entity @s inventory.8 minecraft:enchanted_book[minecraft:custom_data~{mastermodel:"random_book"}] run item modify entity @s inventory.8 mastermodel:randomize_book
execute if items entity @s inventory.9 minecraft:enchanted_book[minecraft:custom_data~{mastermodel:"random_book"}] run item modify entity @s inventory.9 mastermodel:randomize_book
execute if items entity @s inventory.10 minecraft:enchanted_book[minecraft:custom_data~{mastermodel:"random_book"}] run item modify entity @s inventory.10 mastermodel:randomize_book
execute if items entity @s inventory.11 minecraft:enchanted_book[minecraft:custom_data~{mastermodel:"random_book"}] run item modify entity @s inventory.11 mastermodel:randomize_book
execute if items entity @s inventory.12 minecraft:enchanted_book[minecraft:custom_data~{mastermodel:"random_book"}] run item modify entity @s inventory.12 mastermodel:randomize_book
execute if items entity @s inventory.13 minecraft:enchanted_book[minecraft:custom_data~{mastermodel:"random_book"}] run item modify entity @s inventory.13 mastermodel:randomize_book
execute if items entity @s inventory.14 minecraft:enchanted_book[minecraft:custom_data~{mastermodel:"random_book"}] run item modify entity @s inventory.14 mastermodel:randomize_book
execute if items entity @s inventory.15 minecraft:enchanted_book[minecraft:custom_data~{mastermodel:"random_book"}] run item modify entity @s inventory.15 mastermodel:randomize_book
execute if items entity @s inventory.16 minecraft:enchanted_book[minecraft:custom_data~{mastermodel:"random_book"}] run item modify entity @s inventory.16 mastermodel:randomize_book
execute if items entity @s inventory.17 minecraft:enchanted_book[minecraft:custom_data~{mastermodel:"random_book"}] run item modify entity @s inventory.17 mastermodel:randomize_book
execute if items entity @s inventory.18 minecraft:enchanted_book[minecraft:custom_data~{mastermodel:"random_book"}] run item modify entity @s inventory.18 mastermodel:randomize_book
execute if items entity @s inventory.19 minecraft:enchanted_book[minecraft:custom_data~{mastermodel:"random_book"}] run item modify entity @s inventory.19 mastermodel:randomize_book
execute if items entity @s inventory.20 minecraft:enchanted_book[minecraft:custom_data~{mastermodel:"random_book"}] run item modify entity @s inventory.20 mastermodel:randomize_book
execute if items entity @s inventory.21 minecraft:enchanted_book[minecraft:custom_data~{mastermodel:"random_book"}] run item modify entity @s inventory.21 mastermodel:randomize_book
execute if items entity @s inventory.22 minecraft:enchanted_book[minecraft:custom_data~{mastermodel:"random_book"}] run item modify entity @s inventory.22 mastermodel:randomize_book
execute if items entity @s inventory.23 minecraft:enchanted_book[minecraft:custom_data~{mastermodel:"random_book"}] run item modify entity @s inventory.23 mastermodel:randomize_book
execute if items entity @s inventory.24 minecraft:enchanted_book[minecraft:custom_data~{mastermodel:"random_book"}] run item modify entity @s inventory.24 mastermodel:randomize_book
execute if items entity @s inventory.25 minecraft:enchanted_book[minecraft:custom_data~{mastermodel:"random_book"}] run item modify entity @s inventory.25 mastermodel:randomize_book
execute if items entity @s inventory.26 minecraft:enchanted_book[minecraft:custom_data~{mastermodel:"random_book"}] run item modify entity @s inventory.26 mastermodel:randomize_book
