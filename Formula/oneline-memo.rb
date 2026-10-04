# このファイルは oneline-memo の scripts/release.sh が生成します。手で編集しない。
class OnelineMemo < Formula
  desc "CLI for oneline memo (1lm)"
  homepage "https://1lm.akisoqls.com"
  version "0.1.6"

  on_macos do
    on_arm do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.6/1lm-0.1.6-aarch64-apple-darwin.tar.gz"
      sha256 "912b5a2ac0b72e6a2233219bea21e068ae942614f90b33c14f534c2c8697a303"
    end
    on_intel do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.6/1lm-0.1.6-x86_64-apple-darwin.tar.gz"
      sha256 "6be0878eedae812095a311b6fecd5b441b8715af71e7f073117d03b0b8a121e2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.6/1lm-0.1.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dd253c6f908b00d0515a77ed6ee10f72965782b5004eefd5fb00354b322c2163"
    end
    on_intel do
      url "https://github.com/akisoqls/homebrew-tap/releases/download/v0.1.6/1lm-0.1.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b474bcda4a950fb6705b7efdb4427d21a866a0cdeeb6f2644287764165c4f8af"
    end
  end

  def install
    bin.install "1lm"
  end

  test do
    assert_match "1lm #{version}", shell_output("#{bin}/1lm version")
  end
end
