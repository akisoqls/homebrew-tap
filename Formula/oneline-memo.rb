# このファイルは oneline-memo の scripts/release.sh が生成します。手で編集しない。
class OnelineMemo < Formula
  desc "CLI for oneline memo (1lm)"
  homepage "https://1lm.akisoqls.com"
  version "0.1.9"

  on_macos do
    on_arm do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.9/1lm-0.1.9-aarch64-apple-darwin.tar.gz"
      sha256 "bd28e546c1c5de8d5cdb2095a66fce484a4b7d7dc3eee0c7b77d8f1f871620d4"
    end
    on_intel do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.9/1lm-0.1.9-x86_64-apple-darwin.tar.gz"
      sha256 "114132c09b26592934d69881bdeee224e3cb9564e60abff19362bdb781c8bb93"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.9/1lm-0.1.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7fae187d1c8484c077df1e462fb3d00825b428a83869ceb426a74cf756e4546a"
    end
    on_intel do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.9/1lm-0.1.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "025b967c340e2ede5f105f85f49910b3440e4973a15bc941115b09f742aff5f2"
    end
  end

  def install
    bin.install "1lm"
  end

  test do
    assert_match "1lm #{version}", shell_output("#{bin}/1lm version")
  end
end
