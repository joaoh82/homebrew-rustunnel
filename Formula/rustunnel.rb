class Rustunnel < Formula
  desc "Self-hosted secure tunnel client — expose local services through a public server"
  homepage "https://github.com/joaoh82/rustunnel"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.0/rustunnel-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "b3b6e0100635101e991f658bbf08b9faa3689f64ce210d659e37ed188fdde961"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.0/rustunnel-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "7754503f592e44d297eb8452797acc04c4fbc02e2b49a9f0dfabc1ee85938cc7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.0/rustunnel-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f92753b6af2b013251ccde04ccc1bca8b0378c058044ff5cdb27b8938eee9110"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.0/rustunnel-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "410c0da1a2658a2ef60fec5fc3d395098cba1b8112f2e7544e1544c308ac1c00"
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
