# このファイルは oneline-memo の scripts/release.sh が生成します。手で編集しない。
class OnelineMemo < Formula
  desc "CLI for oneline memo (1lm)"
  homepage "https://oneline-memo.akisoqls.deno.net"
  version "0.1.4"

  on_macos do
    on_arm do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.4/1lm-0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "095ad8d97e64317fa4fb51abba436a02b20069069443c18cd6d769da99f300e1"
    end
    on_intel do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.4/1lm-0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "a8d0e614bae4ab2d3c0810e66659c644682d4382d8beb3c36ef679d8342c79b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.4/1lm-0.1.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ade73cf5a85348b0062b873666d02c29fdce7091c3731a1ad921c841e5a1f199"
    end
    on_intel do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.4/1lm-0.1.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "57e0111a3331859e07d9e0307bd35078870e1208f182e59d57bdf73f933fe3f3"
    end
  end

  def install
    bin.install "1lm"
  end

  test do
    assert_match "1lm #{version}", shell_output("#{bin}/1lm version")
  end
end
