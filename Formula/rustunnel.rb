class Rustunnel < Formula
  desc "Self-hosted secure tunnel client — expose local services through a public server"
  homepage "https://github.com/joaoh82/rustunnel"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.6.0/rustunnel-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "f835d79834c002b0a682b0ed33b7dd101cbf70d48bf76a7f93c2361c6e597e21"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.6.0/rustunnel-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "cd98a16258776ca6ee482f6a912ec93c146e1b5b12a2d0fa5437d3c744c0c3d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.6.0/rustunnel-v0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "13a478dcad39607da1723f449ce60ec0dad13fb22b606ce73048314ae8dfa2bd"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.6.0/rustunnel-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "080b435bc95cba6bb793a446b21a1ca908c5afc05b6ddb6d5bd0a61d7d7b35dd"
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
