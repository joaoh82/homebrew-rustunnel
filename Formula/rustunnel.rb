class Rustunnel < Formula
  desc "Self-hosted secure tunnel client — expose local services through a public server"
  homepage "https://github.com/joaoh82/rustunnel"
  version "0.4.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.14/rustunnel-v0.4.14-aarch64-apple-darwin.tar.gz"
      sha256 "d6599e4a556bc5c405adba10296c52e831861b8250639824f9c9ab27497060c6"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.14/rustunnel-v0.4.14-x86_64-apple-darwin.tar.gz"
      sha256 "df8da745066be690002e3d8e9afe9e3ec548f67f382a33fc03974120c1f426df"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.14/rustunnel-v0.4.14-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "630a97302cada247e47308668a1dce776cfb441529200deeb08cf02ad24a5e53"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.14/rustunnel-v0.4.14-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dd147d71905471e87f40ebf1a235a91de5d6d32ea9627e95758c01a811fdb67d"
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
