# このファイルは oneline-memo の scripts/release.sh が生成します。手で編集しない。
class OnelineMemo < Formula
  desc "CLI for oneline memo (1lm)"
  homepage "https://1lm.akisoqls.com"
  version "0.1.12"

  on_macos do
    on_arm do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.12/1lm-0.1.12-aarch64-apple-darwin.tar.gz"
      sha256 "8c48ab6532f6932de8b5da725c559d315162769ea11a85b7e06faed6f88de5a0"
    end
    on_intel do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.12/1lm-0.1.12-x86_64-apple-darwin.tar.gz"
      sha256 "829ec159a7dfc1ef1712aab6f980521e5b4d2a28d73c9440ece8cf1d93343c12"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.12/1lm-0.1.12-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d4e6b7afb2fbaa37ea03e7f23bd15973090a32d952898a5c8e8e992e7bf14f52"
    end
    on_intel do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.12/1lm-0.1.12-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "24ee894cbc8a7095a0e29469bd00b983a76d2fda53c1bc5a4594be0151a967b2"
    end
  end

  def install
    bin.install "1lm"
  end

  test do
    assert_match "1lm #{version}", shell_output("#{bin}/1lm version")
  end
end
