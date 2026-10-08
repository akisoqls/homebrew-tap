# このファイルは oneline-memo の scripts/release.sh が生成します。手で編集しない。
class OnelineMemo < Formula
  desc "CLI for oneline memo (1lm)"
  homepage "https://1lm.akisoqls.com"
  version "0.1.18"

  on_macos do
    on_arm do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.18/1lm-0.1.18-aarch64-apple-darwin.tar.gz"
      sha256 "31c6af5b89144d9e73266240d720251c67437b25edf9389da7aa47e6a53b132c"
    end
    on_intel do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.18/1lm-0.1.18-x86_64-apple-darwin.tar.gz"
      sha256 "b854ca7de2f1a5a40e3c7e201dd835f4b7e569b990b8629f3ee14cd52c5c316d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.18/1lm-0.1.18-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7807130d2dd80139cf93e588505327b71d360c14faace557785e0a203ab57905"
    end
    on_intel do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.18/1lm-0.1.18-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bb5d14705e282201effa2539ad412fc7c57b94f9a205e62d2fea5df34058c856"
    end
  end

  def install
    bin.install "1lm"
  end

  test do
    assert_match "1lm #{version}", shell_output("#{bin}/1lm version")
  end
end
