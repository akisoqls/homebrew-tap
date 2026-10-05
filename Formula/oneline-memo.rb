# このファイルは oneline-memo の scripts/release.sh が生成します。手で編集しない。
class OnelineMemo < Formula
  desc "CLI for oneline memo (1lm)"
  homepage "https://1lm.akisoqls.com"
  version "0.1.11"

  on_macos do
    on_arm do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.11/1lm-0.1.11-aarch64-apple-darwin.tar.gz"
      sha256 "c0de68bc70df8cf03f4bd70f9cc1671e5faf36083a4586c2bcf09d61f67c4d86"
    end
    on_intel do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.11/1lm-0.1.11-x86_64-apple-darwin.tar.gz"
      sha256 "5053577cb3720e8706062c20ab08b78d4ac8668c724dc107da8b966dbc838402"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.11/1lm-0.1.11-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3a323bb4a7bb7b686a78ceec8f93e9d8c5f0631a96be8cd84ed219e6a801d2b8"
    end
    on_intel do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.11/1lm-0.1.11-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0143b6fdb7d98272c6b0841d4c56b51d776def08810689d8df87b52fe7fca2a3"
    end
  end

  def install
    bin.install "1lm"
  end

  test do
    assert_match "1lm #{version}", shell_output("#{bin}/1lm version")
  end
end
