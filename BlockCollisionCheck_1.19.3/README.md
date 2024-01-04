
## blockCollisionCheck
ほぼ全てのブロックの当たり判定を検出できます。
例外として、竹は当たり判定が無く、鍾乳石は当たり判定が大きめに設定しています。


## 対応バージョン
Minecraft JE 1.19.3


## 使い方
executeコマンドで調べたい座標を指定し
functionで"collision_check:main/"を実行します。
この時、実行者のcollision_checkのスコアに0か1を返します。(0:衝突なし,1:衝突あり)

例:
/execute as @e[tag=check] at @s posision ^ ^ ^0.1 function collision_check:main/

この時実行者がブロックにぶつかるまで前に進むとしたいとき
/tp @e[tag=check,scores={collision_check=0}] ^ ^ ^0.1


## 連絡先
https://twitter.com/Hirobao1


## License
This datapack is released under the MIT License.
