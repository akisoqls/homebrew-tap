# このファイルは oneline-memo の scripts/release.sh が生成します。手で編集しない。
class OnelineMemo < Formula
  desc "CLI for oneline memo (1lm)"
  homepage "https://oneline-memo.akisoqls.deno.net"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.1/1lm-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "c88d4e72bc6e45a47c4a10e0295af59c5d283cdc825cf6f0951b7310da2cbbb7"
    end
    on_intel do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.1/1lm-0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "b542e064a055cf0612be471c6eae986193f4223de46805507e60e4ecdc7777b7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.1/1lm-0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "40c335315f2e92059c04a94d78293860576fd2f1ea6b83f8b3ada8a4dc2e1734"
    end
    on_intel do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.1/1lm-0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "308f73e5ab68d37d370ad9f77c5da271ace16182b2642d38ef6b4302ed2b888c"
    end
  end

  def install
    bin.install "1lm"
  end

  test do
    assert_match "1lm #{version}", shell_output("#{bin}/1lm version")
  end
end
