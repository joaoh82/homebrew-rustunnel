class Rustunnel < Formula
  desc "Self-hosted secure tunnel client — expose local services through a public server"
  homepage "https://github.com/joaoh82/rustunnel"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.5.1/rustunnel-v0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "478be3ba81e4f887eb2f0b45258eb93b7330c5e5fb0679511d280274d733f49f"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.5.1/rustunnel-v0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "2dba8ebd4f48591188ff6c77d118f05a1c88ad7048c67c7e9497d3543fd65a41"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.5.1/rustunnel-v0.5.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b3c7effef6b1a7f59ecc375177a491f69f340091e964b9f1d0137d75126b17d5"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.5.1/rustunnel-v0.5.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3486bf73601cfef1c5d9ed8e439ab387c5f9ea9b579d08a9845fc3497d35e158"
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
