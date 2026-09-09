# このファイルは oneline-memo の scripts/release.sh が生成します。手で編集しない。
class OnelineMemo < Formula
  desc "CLI for oneline memo (1lm)"
  homepage "https://oneline-memo.akisoqls.deno.net"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.2/1lm-0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "a1c6cba59c41368d31f2b0ae60a88435a4db97a522341c7610cb2e2f9d3217e5"
    end
    on_intel do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.2/1lm-0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "179e84fe4ce119d9c5d3ebf5942c85799e174c134526a109a542a8a0bdce3dd4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.2/1lm-0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "86bf3dca80bf931eabec9936b544b0c665611141959b40802995c1f05e795023"
    end
    on_intel do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.2/1lm-0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4f5e8d4d6dd57784ea064ce4c9b663ddcd8af760c08a19387e955c9e89fd74a9"
    end
  end

  def install
    bin.install "1lm"
  end

  test do
    assert_match "1lm #{version}", shell_output("#{bin}/1lm version")
  end
end
