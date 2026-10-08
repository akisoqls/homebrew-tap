# このファイルは oneline-memo の scripts/release.sh が生成します。手で編集しない。
class OnelineMemo < Formula
  desc "CLI for oneline memo (1lm)"
  homepage "https://1lm.akisoqls.com"
  version "0.1.19"

  on_macos do
    on_arm do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.19/1lm-0.1.19-aarch64-apple-darwin.tar.gz"
      sha256 "9fed9b898fbf0e178cad41aff4f10efd24ab491a16defc96bac458024e683d32"
    end
    on_intel do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.19/1lm-0.1.19-x86_64-apple-darwin.tar.gz"
      sha256 "ae76efa8d94bddb7041d477533ee9160d1b8e0ad8d254cd4d2c6275efb2c7994"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.19/1lm-0.1.19-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ecd7d2c3007328c0ab60c9e826e6f6fa53174b7405ce94e4b6111d07f277f899"
    end
    on_intel do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.19/1lm-0.1.19-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fc2f4107eda8dff332140d1b980100e3383e1fdb99c836466f38bbd74791afb9"
    end
  end

  def install
    bin.install "1lm"
  end

  test do
    assert_match "1lm #{version}", shell_output("#{bin}/1lm version")
  end
end
