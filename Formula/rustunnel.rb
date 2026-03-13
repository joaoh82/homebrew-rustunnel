class Rustunnel < Formula
  desc "Self-hosted secure tunnel client — expose local services through a public server"
  homepage "https://github.com/joaoh82/rustunnel"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.2.0/rustunnel-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "494b9ca58b33023f32f81894f8876fafe68186785401a8793cd35b67734e3d28"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.2.0/rustunnel-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "f5f31e9e5c2d69b71e5824340fabba3217fc576d0066ee3e5b455a306032d483"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.2.0/rustunnel-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8e09eb690e517c7af4992bcd3b5711d64ae5e66a6730167773a97ebb2378bb13"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.2.0/rustunnel-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b448a47ff5abdf9e46ce58685f79c532ae4ac76edfcd955b369a02a5709d8bfb"
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
