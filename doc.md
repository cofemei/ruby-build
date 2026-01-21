# ruby-build 優化編譯

## 使用方式

```bash
# 查看你的 CPU 支援什麼優化
ruby-build --detect-march

# 優化編譯
ruby-build --optimize 4.0.1 ~/.rubies/ruby-4.0.1

# 靜態編譯
ruby-build --static 4.0.1 ~/.rubies/ruby-4.0.1

# 優化 + 靜態 + LTO
RUBY_BUILD_LTO=thin ruby-build --optimize --static 4.0.1 ~/.rubies/ruby-4.0.1
```

## 選項

| 選項 | 說明 |
|------|------|
| `--optimize` | 自動偵測 CPU 並套用最佳 -march |
| `--static` | 靜態編譯 |
| `--detect-march` | 顯示 CPU 偵測結果 |

## 環境變數

| 變數 | 說明 |
|------|------|
| `RUBY_BUILD_MARCH=x86-64-v3` | 手動指定架構 |
| `RUBY_BUILD_LTO=thin` | 啟用 LTO |
| `RUBY_BUILD_STATIC=1` | 靜態編譯 |

## 驗證

```bash
ruby -r rbconfig -e 'puts RbConfig::CONFIG["CFLAGS"]'
```
