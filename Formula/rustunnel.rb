class Rustunnel < Formula
  desc "Self-hosted secure tunnel client — expose local services through a public server"
  homepage "https://github.com/joaoh82/rustunnel"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.3.2/rustunnel-v0.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "0461a82cffe41d7c5bad285dde6b07196ef8d959a98e6e941c37d6309439a9f0"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.3.2/rustunnel-v0.3.2-x86_64-apple-darwin.tar.gz"
      sha256 "fcbc761ae3a070b05b55e59654cc5cf081ad6e1cd35b312e33feda4c7871beef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.3.2/rustunnel-v0.3.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fdb66344b7817b760fd2f248280ec67b8369ab504d32c9530c070138c791b387"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.3.2/rustunnel-v0.3.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5c2929e8435fbd52d6d636eebc68c69ad082f89c40741be13382f145ac82d1a3"
    end
  end

  def install
    bin.install "rustunnel"
    bin.install "rustunnel-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rustunnel --version")
  end
end
