class Rustunnel < Formula
  desc "Self-hosted secure tunnel client — expose local services through a public server"
  homepage "https://github.com/joaoh82/rustunnel"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.5.0/rustunnel-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "e9a3315624bc1b1af7d0d8cd0759c39ddde7a717d69e5ee4a2b473691e776de5"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.5.0/rustunnel-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "ee1f7538aa031ed6f98e06506506f4be50ea5d461e8ab6a219088880459587e2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.5.0/rustunnel-v0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f94f3ec361d2fcdd1ae35e0d3b9ca76b59149642f92320925a70bda9787dcbaf"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.5.0/rustunnel-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9f6536f167aef2a7eecc9098e5084114a6ce5e527a3b73e14281c0b27bd85cbb"
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
