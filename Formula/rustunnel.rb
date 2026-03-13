class Rustunnel < Formula
  desc "Self-hosted secure tunnel client — expose local services through a public server"
  homepage "https://github.com/joaoh82/rustunnel"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.2.2/rustunnel-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "17404cbdb75352ee7cc27ceb18d241fb9efc87babe6a71fcbbcc512e78f54610"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.2.2/rustunnel-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "a27f9be14ba3cdece4aa546c20805eb9b21de5a6a2f72791ce3dd62998d291f4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.2.2/rustunnel-v0.2.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4c832902559d0960f64e10858eefaef16974db04a903d72d34edf01aefb0fc66"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.2.2/rustunnel-v0.2.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c8a7c8cfec95b8a8665d98afb2a79d2a49ca3bf1ff5d7116e530fb4833259b00"
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
