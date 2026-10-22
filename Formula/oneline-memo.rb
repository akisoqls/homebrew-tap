# このファイルは oneline-memo の scripts/release.sh が生成します。手で編集しない。
class OnelineMemo < Formula
  desc "CLI for oneline memo (1lm)"
  homepage "https://1lm.akisoqls.com"
  version "0.1.20"

  on_macos do
    on_arm do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.20/1lm-0.1.20-aarch64-apple-darwin.tar.gz"
      sha256 "5705ffe57549b4dcc746bc1ebde5d68cad7be846912a45d83a14297bf06dacdc"
    end
    on_intel do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.20/1lm-0.1.20-x86_64-apple-darwin.tar.gz"
      sha256 "01b0916b3137aa632ec17801fe5d4857642dc4096f23f14a396f2c829240e0a5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.20/1lm-0.1.20-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ab75a39fb11a9ae1feec040857b31dccbaaea39b28843154ac5e321bf98b26f7"
    end
    on_intel do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.20/1lm-0.1.20-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "191d5e4de846c10962744d46b4711ed22ceab91cde92d7818841f9546ddd51dc"
    end
  end

  def install
    bin.install "1lm"
  end

  test do
    assert_match "1lm #{version}", shell_output("#{bin}/1lm version")
  end
end
