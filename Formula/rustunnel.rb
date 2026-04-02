class Rustunnel < Formula
  desc "Self-hosted secure tunnel client — expose local services through a public server"
  homepage "https://github.com/joaoh82/rustunnel"
  version "0.4.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.12/rustunnel-v0.4.12-aarch64-apple-darwin.tar.gz"
      sha256 "51fec522737289d942d683b4cf4858544952bff5d0193477ff3de91a3b2c3890"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.12/rustunnel-v0.4.12-x86_64-apple-darwin.tar.gz"
      sha256 "7435778953e8e21c30238b777933f3301f77219455e3b0c035e7da99baca13a5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.12/rustunnel-v0.4.12-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "29986c193a3acfa618b095491f80a787cca8c0e54603c037f95c8c95e763b47c"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.12/rustunnel-v0.4.12-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5aeafc2da65e37abcb317ae9459189ab7291a4657cee00995ce8d64a32ba248e"
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
