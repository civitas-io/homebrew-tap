class Prx < Formula
  desc "Agent-native Unix tools for AI coding agents"
  homepage "https://github.com/civitas-io/prx"
  version "0.6.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/civitas-io/prx/releases/download/v0.6.4/prx-aarch64-apple-darwin.tar.gz"
      sha256 "9b149e3752aa7b265ee0c6aaa1effcd1524556a126b5601d43cd0997143fc979"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/civitas-io/prx/releases/download/v0.6.4/prx-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0d9f6b1ddc71b1c9d1f7c5a74c46aff744cefc688d21abc2be66bc56b0e3fb10"
    end
    on_arm do
      url "https://github.com/civitas-io/prx/releases/download/v0.6.4/prx-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "03208f4c32ca3a072600f04960be0bcb8591ce95a89ea2da7f6f1e7a3332e49b"
    end
  end

  def install
    bin.install "prx"
  end

  test do
    assert_match "prx", shell_output("#{bin}/prx --version")
  end
end
