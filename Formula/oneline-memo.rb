# このファイルは oneline-memo の scripts/release.sh が生成します。手で編集しない。
class OnelineMemo < Formula
  desc "CLI for oneline memo (1lm)"
  homepage "https://1lm.akisoqls.com"
  version "0.1.7"

  on_macos do
    on_arm do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.7/1lm-0.1.7-aarch64-apple-darwin.tar.gz"
      sha256 "ba8db34d3accb5c7710dc97f1c64b30060003a465dcbac43ae3c42e758e7d83d"
    end
    on_intel do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.7/1lm-0.1.7-x86_64-apple-darwin.tar.gz"
      sha256 "00772701a51a02feb2bbcfb92197b995abdfd82eb55eaa47bb44cc3f645aff98"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.7/1lm-0.1.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f7b3cd1478e01c4aebef1b002e39c786e1600e3f721a0fcc2a322ca7af26c3dd"
    end
    on_intel do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.7/1lm-0.1.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3bff797b160dee2f5bbbc8c8064c3ebc4afc0b10340225520ffd65146b12f6ec"
    end
  end

  def install
    bin.install "1lm"
  end

  test do
    assert_match "1lm #{version}", shell_output("#{bin}/1lm version")
  end
end
