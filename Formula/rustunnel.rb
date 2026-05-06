class Rustunnel < Formula
  desc "Self-hosted secure tunnel client — expose local services through a public server"
  homepage "https://github.com/joaoh82/rustunnel"
  version "0.7.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.7.5/rustunnel-v0.7.5-aarch64-apple-darwin.tar.gz"
      sha256 "2456f5ce9bef26c0c1cd2eebe85143a80a7c629e5b86a005d550731b1b13b5e5"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.7.5/rustunnel-v0.7.5-x86_64-apple-darwin.tar.gz"
      sha256 "dd736381f7341ab5cd3042e095630e6ac812b167406a2b6995e4101ccff48741"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.7.5/rustunnel-v0.7.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2656e2c562fe5964e6941d6113051292378a37f29268276eebbaa1e748ccab5f"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.7.5/rustunnel-v0.7.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e13827bae8934cf71292760966848b491d20655fcc71a0aecc62a34147c16233"
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
