class Prx < Formula
  desc "Agent-native Unix tools for AI coding agents"
  homepage "https://github.com/civitas-io/prx"
  version "0.6.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/civitas-io/prx/releases/download/v0.6.2/prx-aarch64-apple-darwin.tar.gz"
      sha256 "11be264388bec6cfc28752f6b1a3b5c388a2d6ccb45aecea1f83d4eaba26ef79"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/civitas-io/prx/releases/download/v0.6.2/prx-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6d4578e84bb222e27544710cfdc091a388c9af57cdcf9182383ed181a3d63307"
    end
    on_arm do
      url "https://github.com/civitas-io/prx/releases/download/v0.6.2/prx-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "76a8493ad720ee043d9c0141d90e82974b8a61df92da37a18a79b01e0f5fba6e"
    end
  end

  def install
    bin.install "prx"
  end

  test do
    assert_match "prx", shell_output("#{bin}/prx --version")
  end
end
