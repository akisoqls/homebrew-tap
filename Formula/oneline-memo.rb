# このファイルは oneline-memo の scripts/release.sh が生成します。手で編集しない。
class OnelineMemo < Formula
  desc "CLI for oneline memo (1lm)"
  homepage "https://1lm.akisoqls.com"
  version "0.1.10"

  on_macos do
    on_arm do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.10/1lm-0.1.10-aarch64-apple-darwin.tar.gz"
      sha256 "acc475fda440d0501add4f41246dabe89f0238f01a0611a3b838b22042f091e6"
    end
    on_intel do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.10/1lm-0.1.10-x86_64-apple-darwin.tar.gz"
      sha256 "d21acee725ba66546ef564e0a35e689aef39e19de4d070ac031c7da2664bef77"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.10/1lm-0.1.10-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "72a2e6403f6c50d5908d08fbe362e26386c6fb740ba65a30ebd3b45f4cbff8c6"
    end
    on_intel do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.10/1lm-0.1.10-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ff356c072028989db51aa4a52098826ba9c51b25e62096408c811c29afa12de5"
    end
  end

  def install
    bin.install "1lm"
  end

  test do
    assert_match "1lm #{version}", shell_output("#{bin}/1lm version")
  end
end
