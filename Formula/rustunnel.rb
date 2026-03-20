class Rustunnel < Formula
  desc "Self-hosted secure tunnel client — expose local services through a public server"
  homepage "https://github.com/joaoh82/rustunnel"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.3.0/rustunnel-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "22b68685498ff922293a0819560809b370b61e4ea9ecad97bca0f7693772fcbb"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.3.0/rustunnel-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "a1701748cd6afb50fb2b6f0334153d167eb599d3e0de2a27a07000c868d8db11"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.3.0/rustunnel-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5aead585b1442557de52ff33f9ed616736af776486f1a1f51e5c1bdba595bd3d"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.3.0/rustunnel-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f9b3c675c273265f890f9b9ab6aa95cd0c2310406866f59357a091f74292863b"
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
