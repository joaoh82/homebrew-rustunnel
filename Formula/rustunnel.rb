class Rustunnel < Formula
  desc "Self-hosted secure tunnel client — expose local services through a public server"
  homepage "https://github.com/joaoh82/rustunnel"
  version "0.4.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.6/rustunnel-v0.4.6-aarch64-apple-darwin.tar.gz"
      sha256 "ea38afe85e703f1634a72dd22f0a7d46d75527f84c022aeb2748095c046c9ef7"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.6/rustunnel-v0.4.6-x86_64-apple-darwin.tar.gz"
      sha256 "2bef2aba3a710632ceeb34ff3cbea549558ab2db8e3731fe46138d5c0c5d0673"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.6/rustunnel-v0.4.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5406dcd6336e6ed7bd2adab90a1233e67c45890852c21cd6087c4491b8878173"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.6/rustunnel-v0.4.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8880f03bc4ad83f2fdeed5e0a535edc9be08339b6c12e17aa14e71842fb663a9"
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
