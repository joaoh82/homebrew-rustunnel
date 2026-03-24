class Rustunnel < Formula
  desc "Self-hosted secure tunnel client — expose local services through a public server"
  homepage "https://github.com/joaoh82/rustunnel"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.1/rustunnel-v0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "ef76d067f08b20b45967401facf20b311033897f2c5209151581bb325a5865f3"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.1/rustunnel-v0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "df833ba66090432a5a3f23d77d3e25fdbe2900c25cdd3746de8ec1b2414e6488"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.1/rustunnel-v0.4.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "09fc38592bf38b7eb441804abc6fef31d323c4eea5243af65ee17f621356f5d9"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.1/rustunnel-v0.4.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a31d98706766b8e012c546877cda95d6bbb8c6ffe53cd8c8bd564279cb5c5ad7"
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
