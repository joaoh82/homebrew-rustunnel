class Rustunnel < Formula
  desc "Self-hosted secure tunnel client — expose local services through a public server"
  homepage "https://github.com/joaoh82/rustunnel"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.8.0/rustunnel-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "517c447984fe84b58f547c7ee6618d8acdc8d1558f6fa6fc9aaef450e3096ab2"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.8.0/rustunnel-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "69d87aa7394877b8fc11ab5ffea906da326e1da5b3b07fba9bc6a44609751e20"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.8.0/rustunnel-v0.8.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fc96616001dd0929519a1c01d2bb2e81fcceded78bc7b6d0af9eb37d9acf4d9e"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.8.0/rustunnel-v0.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "91f546dec35d457d206662719674d833895bfc5bd131017398b5e376d92c2617"
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
