class Rustunnel < Formula
  desc "Self-hosted secure tunnel client — expose local services through a public server"
  homepage "https://github.com/joaoh82/rustunnel"
  version "0.4.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.11/rustunnel-v0.4.11-aarch64-apple-darwin.tar.gz"
      sha256 "49da3d63a718ebe0229e4513f3377c7c91e0d5870d9fe82122daf2888825e289"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.11/rustunnel-v0.4.11-x86_64-apple-darwin.tar.gz"
      sha256 "11ec0f9cf47e5e460d5643d44f0d1bc3d5d00da65e98d9bcb58d15cf42594c73"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.11/rustunnel-v0.4.11-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "56c854b05aab877aedfaf0ee7fece25cda1466f64b0195b891629526d2886d6d"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.11/rustunnel-v0.4.11-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "424d64fc5fa062043ac8a4e69ea560489954d181665597140b46f845a94f5395"
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
