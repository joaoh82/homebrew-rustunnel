class Rustunnel < Formula
  desc "Self-hosted secure tunnel client — expose local services through a public server"
  homepage "https://github.com/joaoh82/rustunnel"
  version "0.7.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.7.4/rustunnel-v0.7.4-aarch64-apple-darwin.tar.gz"
      sha256 "d42e095b2858dd4f26c067f10e57d4b294c4043d945068910a8ed79d20170af3"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.7.4/rustunnel-v0.7.4-x86_64-apple-darwin.tar.gz"
      sha256 "3f4eafd2ab5d9a1157fdae8c2dc72f39699aa8ba7c44c772839d69ba433a8225"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.7.4/rustunnel-v0.7.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "95fea663a764156efef80393de254b225b713d3ad64cf0544521d8dd65496439"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.7.4/rustunnel-v0.7.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "436ca80182e46ed990a13251f9b5b4d1031cfef6158fa2c5893115966225faac"
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
