# このファイルは oneline-memo の scripts/release.sh が生成します。手で編集しない。
class OnelineMemo < Formula
  desc "CLI for oneline memo (1lm)"
  homepage "https://1lm.akisoqls.com"
  version "0.1.15"

  on_macos do
    on_arm do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.15/1lm-0.1.15-aarch64-apple-darwin.tar.gz"
      sha256 "ed5918e0f66b8fdf2ad4f8b2fd2d3b4bcc98b2d140e818a044201c92146096e7"
    end
    on_intel do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.15/1lm-0.1.15-x86_64-apple-darwin.tar.gz"
      sha256 "1691ae7e16ec2460861fc133c53e20bbb926286f37ec797c413d5d52763bcceb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.15/1lm-0.1.15-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "45ecd350cc466ff4dc0efab1641de738c84db6ffa7679c0ba97e3344e6cc2e1f"
    end
    on_intel do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.15/1lm-0.1.15-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d3ab477d0196392d41ba1800d8938a4ecf423ef2da9ab54bafb38eeaee90ed0e"
    end
  end

  def install
    bin.install "1lm"
  end

  test do
    assert_match "1lm #{version}", shell_output("#{bin}/1lm version")
  end
end
