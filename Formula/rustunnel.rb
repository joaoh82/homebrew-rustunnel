class Rustunnel < Formula
  desc "Self-hosted secure tunnel client — expose local services through a public server"
  homepage "https://github.com/joaoh82/rustunnel"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.3.3/rustunnel-v0.3.3-aarch64-apple-darwin.tar.gz"
      sha256 "3e0a952f9236a6b4c8bf1cfcd3140bc18d78e4c4710a1d592d849481f844ae8b"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.3.3/rustunnel-v0.3.3-x86_64-apple-darwin.tar.gz"
      sha256 "9439a07bdf86ceef190d5305a1362fcf98ac65cd48fb3aaad1fec3b567cf56c6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.3.3/rustunnel-v0.3.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2676d7af30bdbb0583ee34aa9a972a5f6af2ecb52712283d2c2c1f493f65f3d7"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.3.3/rustunnel-v0.3.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9b1561cc9a30b4b9dc9d4ea26b7dae5f4181e0dfcd69da69d6c3c990d29e7efe"
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
