class Rustunnel < Formula
  desc "Self-hosted secure tunnel client — expose local services through a public server"
  homepage "https://github.com/joaoh82/rustunnel"
  version "0.3.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.3.5/rustunnel-v0.3.5-aarch64-apple-darwin.tar.gz"
      sha256 "e2b229bc8fabb6bd1a0b60ea4ad93e9ccdbb255af5dd0ac945d173ce624db3e0"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.3.5/rustunnel-v0.3.5-x86_64-apple-darwin.tar.gz"
      sha256 "a3859c60744c095287c481bd8a2d6cb6b7e9a44103c650327ec952392b1f643c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.3.5/rustunnel-v0.3.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2dd58f2a070319a09bdfb64f9eb7b7e641cbb6fa8509826cc722ed0ee4eefc61"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.3.5/rustunnel-v0.3.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6b3ef64501ef97dcf710a66331b8be3e2e799493f7d81e6372c8f052d9810b0c"
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
