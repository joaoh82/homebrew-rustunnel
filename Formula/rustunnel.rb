class Rustunnel < Formula
  desc "Self-hosted secure tunnel client — expose local services through a public server"
  homepage "https://github.com/joaoh82/rustunnel"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.7.0/rustunnel-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "63d7af1410739d85e6d53437eb5a71191762bfc1bfc7947f7908aaeab7cabc6e"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.7.0/rustunnel-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "89f4318251ffcd1eb8c87a287184ad8ccdd37e481c21bb0b141f633e396b656c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.7.0/rustunnel-v0.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f5706960b685a57512341be826063a1898c918db63049586a57bf8d22e42ed03"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.7.0/rustunnel-v0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c2299b430743a3ff71475f18f5589376cf2ba6c7f3e49dc1f555d258d4d853e2"
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
