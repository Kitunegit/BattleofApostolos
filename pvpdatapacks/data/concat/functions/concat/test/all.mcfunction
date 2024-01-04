#> concat:concat/test/all
# ユニットテストをすべて実行する
# @user

# {unit:"",args:{},expected:{}},\ 
# ↑のコピペ文字列は末尾にホワイトスペースを付けているが意図しないコメントアウトを防ぐためここもコメントアウトにしておく
data modify storage concat: test.iterator set value [\
        {unit:"escgen",args:{arg:0},expected:{result:[]}},\
        {unit:"escgen",args:{arg:1},expected:{result:["\\"]}},\
        {unit:"escgen",args:{arg:2},expected:{result:["\\","\\\\\\"]}},\
        {unit:"escgen",args:{arg:3},expected:{result:["\\","\\\\\\","\\\\\\\\\\\\\\"]}},\
        {unit:"escgen",args:{arg:4},expected:{result:["\\","\\\\\\","\\\\\\\\\\\\\\","\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"]}},\
\
        {unit:"logpow",args:{arg:1},expected:{log:0,pow:1}},\
        {unit:"logpow",args:{arg:2},expected:{log:1,pow:2}},\
        {unit:"logpow",args:{arg:3},expected:{log:2,pow:4}},\
        {unit:"logpow",args:{arg:4},expected:{log:2,pow:4}},\
        {unit:"logpow",args:{arg:5},expected:{log:3,pow:8}},\
        {unit:"logpow",args:{arg:6},expected:{log:3,pow:8}},\
        {unit:"logpow",args:{arg:7},expected:{log:3,pow:8}},\
        {unit:"logpow",args:{arg:8},expected:{log:3,pow:8}},\
        {unit:"logpow",args:{arg:9},expected:{log:4,pow:16}},\
        {unit:"logpow",args:{arg:10},expected:{log:4,pow:16}},\
        {unit:"logpow",args:{arg:11},expected:{log:4,pow:16}},\
        {unit:"logpow",args:{arg:12},expected:{log:4,pow:16}},\
        {unit:"logpow",args:{arg:13},expected:{log:4,pow:16}},\
        {unit:"logpow",args:{arg:14},expected:{log:4,pow:16}},\
        {unit:"logpow",args:{arg:15},expected:{log:4,pow:16}},\
        {unit:"logpow",args:{arg:16},expected:{log:4,pow:16}},\
        {unit:"logpow",args:{arg:23},expected:{log:5,pow:32}},\
        {unit:"logpow",args:{arg:64},expected:{log:6,pow:64}},\
        {unit:"logpow",args:{arg:80},expected:{log:7,pow:128}},\
        {unit:"logpow",args:{arg:85},expected:{log:7,pow:128}},\
        {unit:"logpow",args:{arg:100},expected:{log:7,pow:128}},\
        {unit:"logpow",args:{arg:140},expected:{log:8,pow:256}},\
        {unit:"logpow",args:{arg:161},expected:{log:8,pow:256}},\
        {unit:"logpow",args:{arg:167},expected:{log:8,pow:256}},\
        {unit:"logpow",args:{arg:178},expected:{log:8,pow:256}},\
        {unit:"logpow",args:{arg:196},expected:{log:8,pow:256}},\
        {unit:"logpow",args:{arg:220},expected:{log:8,pow:256}},\
        {unit:"logpow",args:{arg:223},expected:{log:8,pow:256}},\
        {unit:"logpow",args:{arg:226},expected:{log:8,pow:256}},\
        {unit:"logpow",args:{arg:243},expected:{log:8,pow:256}},\
        {unit:"logpow",args:{arg:247},expected:{log:8,pow:256}},\
        {unit:"logpow",args:{arg:249},expected:{log:8,pow:256}},\
\
        {unit:"evalcnt",args:{arg0:1,arg1:0},expected:{result:0}},\
        {unit:"evalcnt",args:{arg0:2,arg1:0},expected:{result:1}},\
        {unit:"evalcnt",args:{arg0:2,arg1:1},expected:{result:1}},\
        {unit:"evalcnt",args:{arg0:3,arg1:0},expected:{result:2}},\
        {unit:"evalcnt",args:{arg0:3,arg1:1},expected:{result:2}},\
        {unit:"evalcnt",args:{arg0:3,arg1:2},expected:{result:1}},\
        {unit:"evalcnt",args:{arg0:4,arg1:0},expected:{result:2}},\
        {unit:"evalcnt",args:{arg0:4,arg1:1},expected:{result:2}},\
        {unit:"evalcnt",args:{arg0:4,arg1:2},expected:{result:2}},\
        {unit:"evalcnt",args:{arg0:4,arg1:3},expected:{result:2}},\
        {unit:"evalcnt",args:{arg0:17,arg1:2},expected:{result:5}},\
        {unit:"evalcnt",args:{arg0:30,arg1:17},expected:{result:5}},\
        {unit:"evalcnt",args:{arg0:43,arg1:32},expected:{result:5}},\
        {unit:"evalcnt",args:{arg0:56,arg1:17},expected:{result:6}},\
        {unit:"evalcnt",args:{arg0:69,arg1:47},expected:{result:7}},\
        {unit:"evalcnt",args:{arg0:82,arg1:75},expected:{result:6}},\
        {unit:"evalcnt",args:{arg0:95,arg1:46},expected:{result:7}},\
        {unit:"evalcnt",args:{arg0:108,arg1:85},expected:{result:7}},\
        {unit:"evalcnt",args:{arg0:121,arg1:75},expected:{result:7}},\
        {unit:"evalcnt",args:{arg0:134,arg1:27},expected:{result:8}},\
        {unit:"evalcnt",args:{arg0:147,arg1:14},expected:{result:8}},\
        {unit:"evalcnt",args:{arg0:160,arg1:81},expected:{result:8}},\
        {unit:"evalcnt",args:{arg0:173,arg1:9},expected:{result:8}},\
        {unit:"evalcnt",args:{arg0:186,arg1:121},expected:{result:8}},\
        {unit:"evalcnt",args:{arg0:199,arg1:44},expected:{result:8}},\
        {unit:"evalcnt",args:{arg0:212,arg1:77},expected:{result:8}},\
        {unit:"evalcnt",args:{arg0:225,arg1:191},expected:{result:8}},\
        {unit:"evalcnt",args:{arg0:238,arg1:72},expected:{result:8}},\
        {unit:"evalcnt",args:{arg0:251,arg1:101},expected:{result:8}},\
\
        {unit:"split",args:{args:[""]},expected:{result:[""]}},\
        {unit:"split",args:{args:["hoge"]},expected:{result:["hoge"]}},\
        {unit:"split",args:{args:["h\\o\\g\\e"]},expected:{result:["\\e","\\g","\\o","h"]}},\
        {unit:"split",args:{args:["h\"o\"g\"e"]},expected:{result:["\"e","\"g","\"o","h"]}},\
        {unit:"split",args:{args:["h\\o\"g\\e"]},expected:{result:["\\e","\"g","\\o","h"]}},\
        {unit:"split",args:{args:["\\\\\\\\"]},expected:{result:["\\","\\","\\","\\"]}},\
        {unit:"split",args:{args:["h","\\","o\\g","\\e"]},expected:{result:["\\e","\\g","\\o","h"]}},\
\
        {unit:"substr",args:{arg:"0123456789",from:0,to:5},expected:{result:"01234"}},\
        {unit:"substr",args:{arg:"0123456789",from:3,to:4},expected:{result:"3"}},\
        {unit:"substr",args:{arg:"0123456789",from:7,to:10},expected:{result:"789"}},\
        {unit:"substr",args:{arg:"unhappy",from:2,to:7},expected:{result:"happy"}},\
]

data modify storage concat: test.success set value 1b

execute store result score %test.amount concat run data get storage concat: test.iterator
scoreboard players set %test.success concat 0
scoreboard players set %test.failure concat 0
scoreboard players operation %test.left concat = %test.amount concat

execute if data storage concat: test.iterator[0] run schedule function concat:concat/test/iterate 1t
