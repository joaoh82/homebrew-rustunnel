class Rustunnel < Formula
  desc "Self-hosted secure tunnel client — expose local services through a public server"
  homepage "https://github.com/joaoh82/rustunnel"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.1.0/rustunnel-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "5955c5c103d12452e7c432fe0e9d0c0fd193584f7af33a0d80dceaac53881858"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.1.0/rustunnel-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "15151c12f4ede8c6be66a69b2117745fcf5dc7a7ae820a850593c0c0694a1b66"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.1.0/rustunnel-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "06a887846b9aac7979cc468e67e1a39d831b1b4f600705055a23e0fdc73a3e42"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.1.0/rustunnel-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d15e44939f07b3b142cc2fd85521416a955685faf0d9ccabe485015e65087fe9"
    end
  end

  def install
    bin.install "rustunnel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rustunnel --version")
  end
end
