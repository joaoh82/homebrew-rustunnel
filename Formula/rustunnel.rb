class Rustunnel < Formula
  desc "Self-hosted secure tunnel client — expose local services through a public server"
  homepage "https://github.com/joaoh82/rustunnel"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.2.3/rustunnel-v0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "8ce7eaaed9b4e4bd8d9097e7b29253339e03fc2cc1bb728ea7085678e819e568"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.2.3/rustunnel-v0.2.3-x86_64-apple-darwin.tar.gz"
      sha256 "9f7335c447fde1eb178e19af1c63c2ff3025b0bc3aac3687fd6db96716a2ff74"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.2.3/rustunnel-v0.2.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cd5a446fcafa863986a6e8164ab3f58d5e24d2b82eca552d329d45952b38b8e6"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.2.3/rustunnel-v0.2.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ff67b413d6c26b07aaf397eae83a9238876e691c15caf548eb56fb00b56ff164"
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
