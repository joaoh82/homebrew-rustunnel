class Rustunnel < Formula
  desc "Self-hosted secure tunnel client — expose local services through a public server"
  homepage "https://github.com/joaoh82/rustunnel"
  version "0.4.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.19/rustunnel-v0.4.19-aarch64-apple-darwin.tar.gz"
      sha256 "fd570180971efa35098d43a3f53ed6e2c663738bc2595e9c9a1a1f40f8c8994a"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.19/rustunnel-v0.4.19-x86_64-apple-darwin.tar.gz"
      sha256 "35aa8ecea26a78826d354736aafe9db28f6d070d7d69190023852b4195e4c2a6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.19/rustunnel-v0.4.19-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "54686c058df16ed1f9d0c247948e64602f8124e473ebf8272ec0c018a6755e12"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.19/rustunnel-v0.4.19-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "49e4c1f2e99712fd823c21ce19866f21d45eba61c7bb4773198b181fe026f3ea"
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
