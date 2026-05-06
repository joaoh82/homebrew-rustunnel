class Rustunnel < Formula
  desc "Self-hosted secure tunnel client — expose local services through a public server"
  homepage "https://github.com/joaoh82/rustunnel"
  version "0.7.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.7.7/rustunnel-v0.7.7-aarch64-apple-darwin.tar.gz"
      sha256 "695aab4fc19f9c7267a49a7c1809bc20fb9e3186b71bc814fc6585836a5bae58"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.7.7/rustunnel-v0.7.7-x86_64-apple-darwin.tar.gz"
      sha256 "ab1d9975c6858d1eb0c8f6fba8498c3cc43cc12f96eb9cc4d8935ca222bb07fd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.7.7/rustunnel-v0.7.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fa93d6b7562e71f100ef694d2946583aefbc192ef91d1bedf8c8f55b8fd885c2"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.7.7/rustunnel-v0.7.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c135737a2c07d33be1273d33e7d604d06ba62d95f1f25545e22e92f3f9c109df"
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
