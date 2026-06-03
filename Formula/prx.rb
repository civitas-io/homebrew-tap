class Prx < Formula
  desc "Agent-native Unix tools for AI coding agents"
  homepage "https://github.com/civitas-io/prx"
  version "0.6.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/civitas-io/prx/releases/download/v0.6.3/prx-aarch64-apple-darwin.tar.gz"
      sha256 "c365157292245c193cf807bff5174ad304e44e8e93ed5a9b4abd423fbf62563b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/civitas-io/prx/releases/download/v0.6.3/prx-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0effe88b070c5fc824652bb6b148c34f3fd24d88cd80a920f32f272c5e4da6c3"
    end
    on_arm do
      url "https://github.com/civitas-io/prx/releases/download/v0.6.3/prx-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bcfcdeec4ec13b5ca5d21c73d2a0f572d8c412180a1423f6a53170931ab0c103"
    end
  end

  def install
    bin.install "prx"
  end

  test do
    assert_match "prx", shell_output("#{bin}/prx --version")
  end
end
