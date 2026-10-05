# このファイルは oneline-memo の scripts/release.sh が生成します。手で編集しない。
class OnelineMemo < Formula
  desc "CLI for oneline memo (1lm)"
  homepage "https://1lm.akisoqls.com"
  version "0.1.13"

  on_macos do
    on_arm do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.13/1lm-0.1.13-aarch64-apple-darwin.tar.gz"
      sha256 "41b003ff58010d9d80351c43da70535bbba7737bb6ae9af3dcad8834bb0791f1"
    end
    on_intel do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.13/1lm-0.1.13-x86_64-apple-darwin.tar.gz"
      sha256 "d186d158655a351566fda18bb90e502e4ba2878f4b0de618881698844d0f57a0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.13/1lm-0.1.13-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "620652f0ad93f332b6edab45cb18e33092509870459a3ca11d0488e4a0c601f9"
    end
    on_intel do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.13/1lm-0.1.13-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c0faf955dc5a128d0889de6eba7e848c54b1d227a47acbada8fb218469ae2598"
    end
  end

  def install
    bin.install "1lm"
  end

  test do
    assert_match "1lm #{version}", shell_output("#{bin}/1lm version")
  end
end
