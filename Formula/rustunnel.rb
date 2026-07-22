class Rustunnel < Formula
  desc "Self-hosted secure tunnel client — expose local services through a public server"
  homepage "https://github.com/joaoh82/rustunnel"
  version "0.8.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.8.2/rustunnel-v0.8.2-aarch64-apple-darwin.tar.gz"
      sha256 "6352291cf1a9e2b78f295ff37df9e0b9a7daca115589e09fa5d5df99571b8cf0"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.8.2/rustunnel-v0.8.2-x86_64-apple-darwin.tar.gz"
      sha256 "ed2a6879af529297c893a52dda3495e55b66199d58bbb592cf479e812326fccf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.8.2/rustunnel-v0.8.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cb3e305417a2e6c2d051dd506b06c1c8deaecd527960855c56ed8ac8061eb865"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.8.2/rustunnel-v0.8.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a73c1a769c74c489dc88d4c9d880f83e7b0fb8211ad21763fb316547ec25abcf"
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
