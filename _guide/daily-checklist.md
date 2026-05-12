# 毎日のチェックリスト

## 1. 今日のアプリを決める
- [ ] `app-list.md` を開いて次のアプリを選ぶ

## 2. フォルダとファイルを用意する
```powershell
Copy-Item "C:\dev\100days-app\_guide\template\index.html" "C:\dev\100days-app\day00X\index.html"
```
※ `00X` を今日のDay番号に変える（例：002、003）

## 3. アプリを作る
- [ ] Cursorで `day00X\index.html` を編集
- [ ] ブラウザで動作確認

## 4. X投稿文を考える
- [ ] Claudeと一緒にバズる投稿文を作る
- [ ] `day00X\memo.md` の「## X投稿文」に貼り付ける（↓テンプレ参照）

## 5. GitHubに公開する
```powershell
cd "C:\dev\100days-app"
.\publish.ps1 00X "アプリ名"
```

## 6. Xに投稿する
- [ ] `memo.md` の投稿文をコピー
- [ ] スクリーンショットor動画を添付
- [ ] 固定ハッシュタグを付けて投稿

---

固定ハッシュタグ：
```
#100日アプリチャレンジ #毎日アプリ制作 #駆け出しエンジニアと繋がりたい #個人開発
```
