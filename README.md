# ～～  Battle of Apostolos ～～

# コードを置く場所
基本は
``pvp_data:pvpfunctions/``下に書いてください。
中でも

システム関連
``pvp_data:pvpfunctions/systems``

役職関連
``pvp_data:pvpfunctions/jobs``
にお願いします。

# 記述のルール
基本的には可読性があれば大丈夫ですが下記に則っていただけると嬉しいです。

・スコア定義
定義は基本フォルダの中に**load.mcfunctionを作って**定義してください。

# IDなどのデータ

**各役職ごとにjob_scoreを割り当てています。以下参照。**

1 : builder 建築士
2 : wizard 魔導士
3 : knight 騎士
4 : warrior 戦士
5 : DarkScientist 闇科学者
6 : assassin 暗殺者
7 : archer 弓兵
8 : guardian 守護者

**各役職ごとの技に使うための人参棒のデータ値**

メインウェポン:
  Job_ScoreのIDを使用してください

メインウェポン以外はJob_ScoreのIDを10の位に、
1の位を固有値にします

スキル1

  10の位:Job_Score

  1の位:1

スキル2

  10の位:Job_Score

  1の位:2

ウルト

  10の位:Job_Score

  1の位:3

スキル3(例外)

  10の位:Job_Score

  1の位:4

**アイテムの初期位置**

※スロットIDです(実際の位置は左から数+1番目)

 メインウェポン:0

スキル1:1

スキル2:2

ウルト:3

特殊技:8

**クールタイムなどの共通スコア**

特殊技
``special_cool``
スキル1
``skill_1_cool``
スキル2
``skill_2_cool``
ウルト
``ult_cool``

# 関数について

・乱数生成
  ```pvp_data:pvpfunctions/systems/rng_system/generated```
  このfunc実行すれば実行者のrngというスコアに1~100の値がランダムで渡されます。

・乱数実行
  ```execute if predicate pvp_data:50_rng```
  このpredicateを挟めば50％の確率で実行できる処理を実装可能です。
  ほかに30%,10%,75%もあります。
  
・ダメージを与える関数
  ```function pvp_data:pvpfunctions/systems/job_system/damage/apply {引数省略}```


引数は以下です
```
{
    damage: {
        amount: 1.0f, //ダメージの量
        type: "arrow" //ダメージタイプ
    },
    knockback: {
        horizontal: 0.5d, //横のKB
        vertical: 0.5d //縦のKB
    },
    target: "@e" // ダメージを受ける側のセレクター
}
```


セレクターは""で囲ってください

型
```
damage:compound
damage.amount: float
damage.type: string

knockback: compound
knockback.horizontal: double
knockback.vertical: double

target: string
```


上記のような構造にした副作用として、damage: {}とするとダメージの処理のみ行わないようにすることができ、またknockbackについても同様に{}にするとノックバックの処理のみ行わないようにできます

・ステータスの変更

# ・スコアボードで変更するステータス

攻撃力

防御力

``/scoreboard players set``等で変更してください。

・スコアの名前は以下の通り
攻撃:``generic.attack``
防御:``generic.defense``

# ・関数にて変更するステータス

攻撃速度

速度

最大体力

・関数の使用方法

```function pvp_data:pvpfunctions/systems/status/apply {apply_effect:"generic.max_health",apply_num:15}```

引数は以下の通り
```
{
    apply_effect: generic.attack_speed,  //変更するステータスID
    apply_num: 100,  //変更するステータス量
}
```

・ステータスIDは以下の通り
攻撃速度:``generic.attack_speed``
移動速度:``generic.speed``
最大体力:``generic.max_health``

# ・代入する数値
最大体力は**等倍**です。
その他は***すべて*100倍**の数値を記述してください。
