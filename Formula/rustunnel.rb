class Rustunnel < Formula
  desc "Self-hosted secure tunnel client — expose local services through a public server"
  homepage "https://github.com/joaoh82/rustunnel"
  version "0.4.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.18/rustunnel-v0.4.18-aarch64-apple-darwin.tar.gz"
      sha256 "1138d581097ea92e4ea1857eab768de574d6a0fef0f6f5b2538cab6bee79b7bb"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.18/rustunnel-v0.4.18-x86_64-apple-darwin.tar.gz"
      sha256 "3dbb938d67f90cd8cc551ad5ae7c8f4968de51bd2d2873c22bb286c71e4c5d8f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.18/rustunnel-v0.4.18-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "59534448400515c07639fa370aed15279faebc5891f3074187ecfd17d3f0a57b"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.18/rustunnel-v0.4.18-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "433e02eb96fbe7bdddcaa1dcce6a3959c12f91b90700b41e4cfb590f24a4eda6"
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
