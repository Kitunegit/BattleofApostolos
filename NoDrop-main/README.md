# NoDrop

NoDrop Version 1.0.2

特定のアイテムがドロップされることを封じます。

**赤石愛様の「Oh! My Dat!」を使用しています。**
**このデータパックには含まれていないため、別で導入してください。**

## Usage

データタグが data: ["no_drop"] であるアイテムのドロップが封じられます。

例：
```mcfunction
give @s apple{data: ["no_drop"]}
```

対象となるアイテムの条件は [predicate](/data/no_drop/predicates/target.json) にて変更できます。

## Compatible Versions

- 1.20.2

## Note

- クリエイティブモードでの使用はバグが頻発します。Minecraft側の問題ですのでこちらでは対処できません。

- ドラッグして投げるなどするとgiveと同様の挙動でアイテムが戻ってきます。

## License

NoDrop Version 1.0.2 is under [Mit license](https://en.wikipedia.org/wiki/MIT_License).

## Author

- [GitHub](https://github.com/Takenoko-II)
- [Twitter](https://twitter.com/Takenoko_4096)
- Discord: takenoko_4096 | たけのこII#1119
