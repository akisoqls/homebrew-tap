# このファイルは oneline-memo の scripts/release.sh が生成します。手で編集しない。
class OnelineMemo < Formula
  desc "CLI for oneline memo (1lm)"
  homepage "https://1lm.akisoqls.com"
  version "0.1.17"

  on_macos do
    on_arm do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.17/1lm-0.1.17-aarch64-apple-darwin.tar.gz"
      sha256 "d7862d6fb4fe1a37841a7240d2a736b5ebc147d4b0a572c6a045ce2305a3282f"
    end
    on_intel do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.17/1lm-0.1.17-x86_64-apple-darwin.tar.gz"
      sha256 "e35178d5d651fc68ca360ed06ffc885b5d7fb91cdd9c5ee278e644e402bd2ea7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.17/1lm-0.1.17-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8f23f601e1348dd3837b18518970fe2a9d731421bb094085444917c306716cc3"
    end
    on_intel do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.17/1lm-0.1.17-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "219a2d22410b8147a5e1fe43011640f112b5f8916fd49480b814688724775c0a"
    end
  end

  def install
    bin.install "1lm"
  end

  test do
    assert_match "1lm #{version}", shell_output("#{bin}/1lm version")
  end
end
