# このファイルは oneline-memo の scripts/release.sh が生成します。手で編集しない。
class OnelineMemo < Formula
  desc "CLI for oneline memo (1lm)"
  homepage "https://oneline-memo.akisoqls.deno.net"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.0/1lm-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "63560e62bdec860bb146b313fd66aab5c2ccda3856f97e017f0890a202825d53"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.0/1lm-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "154d08721ee832a9d83bf9ba93ae7ab3bc7f68bd6e22b8d53262a6972aaf4edb"
    end
  end

  def install
    bin.install "1lm"
  end

  test do
    assert_match "1lm #{version}", shell_output("#{bin}/1lm version")
  end
end
