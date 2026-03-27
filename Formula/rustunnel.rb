class Rustunnel < Formula
  desc "Self-hosted secure tunnel client — expose local services through a public server"
  homepage "https://github.com/joaoh82/rustunnel"
  version "0.4.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.3/rustunnel-v0.4.3-aarch64-apple-darwin.tar.gz"
      sha256 "ee5c9d5450fc81696defad01b4ea91cfc8db6d8cffd4006b8dbd13725041939b"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.3/rustunnel-v0.4.3-x86_64-apple-darwin.tar.gz"
      sha256 "fc7ceffb5ebab5b254afde4559325f7dcaabcdd1742e2454a34ef8723b9e8f31"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.3/rustunnel-v0.4.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "961689900c49e9caaf0aa29e9d035473a8ed6de89d15703a258e5594265732b4"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.3/rustunnel-v0.4.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "47611a982db36d6b3bea5d68fdf773a566b8e21f2cea011e1a5073466fa2081d"
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
