class Rustunnel < Formula
  desc "Self-hosted secure tunnel client — expose local services through a public server"
  homepage "https://github.com/joaoh82/rustunnel"
  version "0.8.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.8.5/rustunnel-v0.8.5-aarch64-apple-darwin.tar.gz"
      sha256 "78d75e08de8ba914ea56360e5d5cd1fb876a5859c1ba8d39fecd2afcc684bd27"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.8.5/rustunnel-v0.8.5-x86_64-apple-darwin.tar.gz"
      sha256 "c467cb83ca73f187d25c59e90d43fd251886d9b71c2c8c103e36356da18049fe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.8.5/rustunnel-v0.8.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a59420b470d6fa1d66b50365881119f3a3d110bc4104bfb360b5c9dd7967db4f"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.8.5/rustunnel-v0.8.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "80c040ce2b9f51827fcfd4d0f6ac8a124f8b20aa0a203237494cefe2d0159962"
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
