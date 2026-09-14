# このファイルは oneline-memo の scripts/release.sh が生成します。手で編集しない。
class OnelineMemo < Formula
  desc "CLI for oneline memo (1lm)"
  homepage "https://1lm.akisoqls.com"
  version "0.1.5"

  on_macos do
    on_arm do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.5/1lm-0.1.5-aarch64-apple-darwin.tar.gz"
      sha256 "e77c99b018b2fd03953f8cec83a2bdb1682a1eaa7f06213a3fd0168498094d97"
    end
    on_intel do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.5/1lm-0.1.5-x86_64-apple-darwin.tar.gz"
      sha256 "6d9975c223d85ac75273f9e5adf6c262fd122313e558f35d8d08ae308031777a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.5/1lm-0.1.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4332ee7421e339e89b32a0220f216c96e43df2eaf863aef75fd0eb9a33a62725"
    end
    on_intel do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.5/1lm-0.1.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "51a3d07a34c69627724dd549877ceafeee409da005e6c61f9156d4f996135c65"
    end
  end

  def install
    bin.install "1lm"
  end

  test do
    assert_match "1lm #{version}", shell_output("#{bin}/1lm version")
  end
end
