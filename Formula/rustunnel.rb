class Rustunnel < Formula
  desc "Self-hosted secure tunnel client — expose local services through a public server"
  homepage "https://github.com/joaoh82/rustunnel"
  version "0.4.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.8/rustunnel-v0.4.8-aarch64-apple-darwin.tar.gz"
      sha256 "b63fa0e898690a82d85d85402732c8d1aaeda556d66c57c1d6b09d7319d878ad"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.8/rustunnel-v0.4.8-x86_64-apple-darwin.tar.gz"
      sha256 "393eae6f7698b6c84cbcf564d5f7c352115f2e060ae5f47f90a10847b4f5be66"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.8/rustunnel-v0.4.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c67f31827346ac1994f01a21fcd42e48e0ce414f26f1ea9364e9564bb8b54c1f"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.8/rustunnel-v0.4.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a03f4a5930040730e4d8872aeef0527eaf2bcab3030c85c95ceb6568948660e5"
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
