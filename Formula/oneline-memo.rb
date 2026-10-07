# このファイルは oneline-memo の scripts/release.sh が生成します。手で編集しない。
class OnelineMemo < Formula
  desc "CLI for oneline memo (1lm)"
  homepage "https://1lm.akisoqls.com"
  version "0.1.14"

  on_macos do
    on_arm do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.14/1lm-0.1.14-aarch64-apple-darwin.tar.gz"
      sha256 "5801f214baf73260240e79daa86a1b3f672a69a331f6412c9c9d251728826539"
    end
    on_intel do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.14/1lm-0.1.14-x86_64-apple-darwin.tar.gz"
      sha256 "db2824997b195d891dcfe45440f972433c2abbfd5833d8d90a00747c19a18140"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.14/1lm-0.1.14-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "422b958211be913dd1d80a017b73cbd2e43cc080bdbfce383eb8c672584c9027"
    end
    on_intel do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.14/1lm-0.1.14-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2d6cd7eaa7934726e0f56e3b531cac9ae909fd05faa54f3b20aeed68c91c8c2c"
    end
  end

  def install
    bin.install "1lm"
  end

  test do
    assert_match "1lm #{version}", shell_output("#{bin}/1lm version")
  end
end
