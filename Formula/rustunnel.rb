class Rustunnel < Formula
  desc "Self-hosted secure tunnel client — expose local services through a public server"
  homepage "https://github.com/joaoh82/rustunnel"
  version "0.4.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.16/rustunnel-v0.4.16-aarch64-apple-darwin.tar.gz"
      sha256 "7aaa35e2da822f91a4b174578a5043f042eb3c9c79f7f6c61b4ba65fe20f8728"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.16/rustunnel-v0.4.16-x86_64-apple-darwin.tar.gz"
      sha256 "0b02fa5fd64403096253be5ca2202afcdec27e20d6fad80edd4f35f580fb9c4b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.16/rustunnel-v0.4.16-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4d339bd9fa26ad61757b452909f48d99ae758ab78967b7b5f5d874a3cf27dd32"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.16/rustunnel-v0.4.16-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "85369bd41eb7c251c8767559e74ea098e5ed2ba233d93b1e2f470547695a5840"
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
