class Rustunnel < Formula
  desc "Self-hosted secure tunnel client — expose local services through a public server"
  homepage "https://github.com/joaoh82/rustunnel"
  version "0.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.8.1/rustunnel-v0.8.1-aarch64-apple-darwin.tar.gz"
      sha256 "f0a01bab7d49a16e517eb9947ee6099c96dda3cf72d61da702b19d54d14cb0ac"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.8.1/rustunnel-v0.8.1-x86_64-apple-darwin.tar.gz"
      sha256 "efe63a0f7dfbc5c1d6a261833ffec30eee6964a6684da473d87faec05fa43240"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.8.1/rustunnel-v0.8.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ce1f44fe0297e31315a6aebba6f823da18037a711422e7db5c85f5a10ae07cae"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.8.1/rustunnel-v0.8.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0c93df88f0da84b526f35499e4978bc725f1fb5f09cc1f1b97daeb5aec39e67a"
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
