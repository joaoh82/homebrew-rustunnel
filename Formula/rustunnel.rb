class Rustunnel < Formula
  desc "Self-hosted secure tunnel client — expose local services through a public server"
  homepage "https://github.com/joaoh82/rustunnel"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.7.1/rustunnel-v0.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "dfebdd058f3ac8df23a06f4ab828a1273ced6f92fe7b81448c9a92effb6ebfc9"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.7.1/rustunnel-v0.7.1-x86_64-apple-darwin.tar.gz"
      sha256 "a69b3cee58268d20ba56387a887306840941ef3b81f693618eaa8c1d03a8ed6d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.7.1/rustunnel-v0.7.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2007f2d3fbc24e33f06498c132ea946ce4029d899644a8868f324773f38c5b74"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.7.1/rustunnel-v0.7.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "643f47f28a063ac3277f9400e89b9712d3304f765e924c0901efaefec5c4090d"
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
