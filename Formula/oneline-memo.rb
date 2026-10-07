# このファイルは oneline-memo の scripts/release.sh が生成します。手で編集しない。
class OnelineMemo < Formula
  desc "CLI for oneline memo (1lm)"
  homepage "https://1lm.akisoqls.com"
  version "0.1.16"

  on_macos do
    on_arm do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.16/1lm-0.1.16-aarch64-apple-darwin.tar.gz"
      sha256 "2ee55d927c585a7d968de42a6da5bd8f6af15c6af3cf0030f82b335dabc1a99e"
    end
    on_intel do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.16/1lm-0.1.16-x86_64-apple-darwin.tar.gz"
      sha256 "a27673e5d86c4e5d503e820888b0eae9e48df9b3c899a0c5224bf766c755d85b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.16/1lm-0.1.16-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e12363c2f0b83ad2f6673c0d9db51542200e440f5aaf54b5055c7864415ac2c7"
    end
    on_intel do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.16/1lm-0.1.16-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "16166e3043fb437d7835e720d635b0859c8d99480daa8bf64a2ae17f34c07efc"
    end
  end

  def install
    bin.install "1lm"
  end

  test do
    assert_match "1lm #{version}", shell_output("#{bin}/1lm version")
  end
end
