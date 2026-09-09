# akisoqls/homebrew-tap

個人ツールの Homebrew tap。

## 1lm (oneline memo CLI)

```sh
brew trust akisoqls/tap          # 初回だけ (tap の許可)
brew install akisoqls/tap/1lm
brew update && brew upgrade 1lm  # 更新
```

Formula とバイナリは
[oneline-memo](https://github.com/akisoqls/oneline-memo) の
`scripts/release.sh` が生成してこのリポジトリに push する。手で編集しない。
