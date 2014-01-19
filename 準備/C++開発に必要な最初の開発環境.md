## C++開発に必要な最初の開発環境

### オンラインのコンパイルサービス

簡単なサンプルコードのコンパイルや動作の確認は
オンラインのサービスを使うと楽で便利かもしれません。

1. [wandbox](http://melpon.org/wandbox/)
1. [ideone](http://ideone.com/)

### OSの選択

計算機上に開発環境を用意する場合は、
OSの選択、コンパイラーの選択など幾つか予め考えなければならない事があります。

もし、それほど計算機や開発環境の構築に慣れておらず、
C++の初歩的な学習用の開発環境を用意したいのならば、
いかなるOSを普段使っているにせよ、
一般に広く普及したGNU/LinuxをOSとして用意する事をお勧めします。

もし、WindowsやOSXを使っていて、計算機により近いネイティブな
開発環境や経験が無ければ、VMWareやVirtualBoxを活用して、
UbuntuやFedora、またはOpenSUSE等の広く普及して初心者にも
難しくないGNU/Linuxを用意しましょう。

WindowsにVisual Studio、あるいはMinGW？Cygwin？
またはOSXでXCode？

繰り返しますが、もし、あなたがネイティブな開発環境の経験に乏しいなら、
余計な事に気をとらわれずに先ずはある程度自由にC++の学習に集中できるよう、
GNU/Linuxの一般的で代表的なディストリビューションの環境を用意しましょう。

OSXはUnix？FreeBSD派生のDarwin？LLVM+ClangはAppleが育てた？
そのくらいご存知ならば、まあ、止めはしませんが、
macportsやその他のパッケージマネージャーの残念さ、
OSX固有の独自仕様の数々、
多くの開発ツールについて相応に熟知して環境変数等を正しくセットアップする手間、
などなど。
あなたがそれなりに、計算機に詳しいつもりでも苦労する事になるかもしれません。

普段、Windowsを使い慣れているし、Visual Studioは高機能で無償版もある？
高機能で見栄えのするいかにも開発環境といったIDE（統合開発環境）に憧れるのは構いませんが、実際使いこなせますか？
加えて、MicrosoftはVisual Studioの更新をGCCやClangほど頻繁には行ってくれませんし、
多くの独自仕様やWindowsならではの面倒くささもあります。

Cygwinはパッケージが往々にして古いですし、
MinGWもパッケージマネージャーが十分に充実しているとは言えませんし、
予備知識やある程度の経験も無しに使いこなせるものではありません。

十分に警告しました。

それでもGNU/Linuxを準備せずに、WindowsやOSXで学習を初める場合は、
開発環境に要因を感じる不思議な現象やストレスを感じたら、
すぐに撤退してGNU/Linux環境を仮想マシンであれ用意する事をお勧めします。

基礎的なC++やツールの使い熟しをある程度学習してから、
自分が使いたい環境での好みの開発環境の構築をしてみたら良いでしょう。

ここまで、随分とWindowsとOSXをC++の学習に選択しない様にと注意をして来ましたが、
これは著者がそれら環境を十分な言語や開発環境やツール、OSや計算機の仕組みについて
知識が不足した状態の学生が頑張って使い、何度も無用なトラブルに巻き込まれて
本質的な学習が邪魔されたり、要らぬ苦労をしている様を見ているからこそです。

もし、あなたが十分なソフトウェア開発の基礎知識や経験をお持ちで、
OSについての基礎的な知識も持っているのなら、止めはしません。

### 開発環境の用意

C++の開発環境を整えるならば、OSの次に、コンパイラーを選びましょう。

コンパイラーと言っても、実際にはツールチェインやものによってはIDEのセットの事を広義的には言います。

- [GCC][GCC] (GNU Compiler Collection)
    - OSS (Open Source Software)
    - 歴史ある自由なC++ほかその他たくさんの言語に対応
    - 最新の言語規格への高い追従性
    - [--> Wikipedia.ja][W:GCC]
- [Clang][Clang]
    - OSS
    - 新進気鋭のC系言語のコンパイラー
    - バックエンドは強力なLLVM(Low-Level Virtual Machine)
    - 最新の言語規格への高い追従性
    - [--> Wikipedia.ja][W:Glang]
- [Microsoft Visual Studio][MSVC++]
    - とても高機能なIDEとセット
    - Windows環境限定
    - [--> Wikipedia.ja][W:MSVC++]

OSとしてGNU/Linuxを選択したのなら、
先ずはGCCを使ってみると良いでしょう。

OSとしてOSXを選択したのなら、
[XCode](https://developer.apple.com/xcode/)
をAppleの開発者サイトから入手してセットアップしてClangを使うと良いでしょう。

OSとしてWindowsを選択してしまったのなら、Visual Studioを使うのが懸命でしょう。
MinGWやCygwinを必要に迫られもしないのにWindowsで使うのは玄人か愚者かどちらかでしょう。
Visual Studioでは初歩的なサンプルコードをいちいちIDEでビルドしていては面倒ですが、
[コマンドラインツール](http://msdn.microsoft.com/ja-jp/library/ms235639.aspx)
もセットアップされますから、学習の初歩はそれを使えば良いでしょう。

GNU/Linuxの場合はセットアップしたデスクトップ環境に標準の端末エミュレーターを起動し、
debian系（[debian](http://packages.debian.org/search?keywords=g%2B%2B)、[Ubuntu](http://packages.ubuntu.com/search?keywords=g%2B%2B)、Mintなど）なら`apt install g++`、
redhat系（[Fedora](https://apps.fedoraproject.org/packages/s/g%252B%252B)など）なら`yum install gcc-c++`、
[OpenSUSE](http://software.opensuse.org/package/gcc-c++)なら`zypper in gcc-c++`
などなど、OS標準のパッケージマネージャーで"g++"をインストールすれば、
必要なものは芋づる式に自動的にセットアップが済むでしょう。

コンパイラーの使い分けや、挙動の違いは、少しC++の基礎や学習用の開発環境に慣れてからで良いでしょう。

### コンパイラーが準備できたなら、コンパイルしてみましょう！

コンパイラーのセットアップができたなら、
[基礎/最小のC++実行可能プログラム](../基礎/最小のC++実行可能プログラム.md)
や
[基礎/main関数の戻り値とシェル上での利用](..基礎//main関数の戻り値とシェル上での利用.md)
など、早速コンパイルして試してみましょう。

最も単純には、コンパイラーに応じてそれぞれ、

```bash
GCC   : `g++ source-file.cxx`
Clang : `clang++ source-file.cxx`
MSVC++: `cl.exe source-file.cxx`
```

の様に、コンパイラーのコマンドにソースコードを書いたテキストファイルを放り投げれば、
"a.out"または"a.exe"といった実行可能ファイルにコンパイルしてくれます。

もし、出力ファイル名をまじめに名付けてあげたい時には、
`g++ source-file.cxx -o executable-file`
の様に、`-o`オプションで出力ファイル名を付けてあげましょう。

[GCC]: http://gcc.gnu.org/
[Clang]: http://clang.llvm.org/
[MSVC++]: http://www.visualstudio.com/
[W:GCC]: http://ja.wikipedia.org/wiki/GNU%E3%82%B3%E3%83%B3%E3%83%91%E3%82%A4%E3%83%A9%E3%82%B3%E3%83%AC%E3%82%AF%E3%82%B7%E3%83%A7%E3%83%B3
[W:Clang]: http://ja.wikipedia.org/wiki/Clang
[W:MSVC++]: http://ja.wikipedia.org/wiki/Microsoft_Visual_C%2B%2B
