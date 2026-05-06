class Rustunnel < Formula
  desc "Self-hosted secure tunnel client — expose local services through a public server"
  homepage "https://github.com/joaoh82/rustunnel"
  version "0.7.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.7.6/rustunnel-v0.7.6-aarch64-apple-darwin.tar.gz"
      sha256 "d76cdf7d299d3b261fe4b86f12b99deb2f0468e3b2d01e18e7a8b14d6d1f24d7"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.7.6/rustunnel-v0.7.6-x86_64-apple-darwin.tar.gz"
      sha256 "ebb204576fdbc7ce9ef6629db9015662d5276ea12bfd02b0b83d9aed37040660"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.7.6/rustunnel-v0.7.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7fe76fe4a52bd2d4c6324758dd527f5a335ae7a4c97f05789b38215b603a7c60"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.7.6/rustunnel-v0.7.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "229d19edcf8f8edab570e3730708646561eae666cb5a287fe8acc433eaadca38"
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
