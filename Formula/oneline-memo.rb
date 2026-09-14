# このファイルは oneline-memo の scripts/release.sh が生成します。手で編集しない。
class OnelineMemo < Formula
  desc "CLI for oneline memo (1lm)"
  homepage "https://oneline-memo.akisoqls.deno.net"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.3/1lm-0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "4cf4e59d9e06165737c4969ea94745cec34641bdc1b57f3e72aabdb59f816f14"
    end
    on_intel do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.3/1lm-0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "6d616ebfd57fda3e982de39ea71da1fa5d21778c815cca7c97f2ba1e052b9d8d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.3/1lm-0.1.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "75e6ce9594c2402d783f4db2a815a9be8a626517b7481c706a646b0e2ce2f509"
    end
    on_intel do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.3/1lm-0.1.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8142a91085dd4da547c912c2a465fcd57360ab871568958542b45ccdba3e33cb"
    end
  end

  def install
    bin.install "1lm"
  end

  test do
    assert_match "1lm #{version}", shell_output("#{bin}/1lm version")
  end
end
