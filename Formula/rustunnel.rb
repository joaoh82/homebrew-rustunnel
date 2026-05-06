class Rustunnel < Formula
  desc "Self-hosted secure tunnel client — expose local services through a public server"
  homepage "https://github.com/joaoh82/rustunnel"
  version "0.7.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.7.8/rustunnel-v0.7.8-aarch64-apple-darwin.tar.gz"
      sha256 "2be2fe0f5a47f8476e80c6af6bf4402795cf0b3b088caea92803c23c26de0d27"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.7.8/rustunnel-v0.7.8-x86_64-apple-darwin.tar.gz"
      sha256 "b97c4b0d58046aeb0d20bdcb36820e9d63de63611c6a12edf56b679fac979f9c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.7.8/rustunnel-v0.7.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cc52385325734f2a9278750f14feac9da08004eee68c1609f7acaa48e0ee8700"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.7.8/rustunnel-v0.7.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "39570bb66a3666eddcf952fb3fcc87ac4f75e4dc58d5b181bdfdfe3d9db18481"
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
