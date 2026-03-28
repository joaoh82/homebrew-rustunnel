class Rustunnel < Formula
  desc "Self-hosted secure tunnel client — expose local services through a public server"
  homepage "https://github.com/joaoh82/rustunnel"
  version "0.4.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.4/rustunnel-v0.4.4-aarch64-apple-darwin.tar.gz"
      sha256 "4bbae5b02845f5f5a8e49b93ce0c82e50b0aea9339c56caad6e0ded008338aee"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.4/rustunnel-v0.4.4-x86_64-apple-darwin.tar.gz"
      sha256 "e22b8e20363163abf0c041a25cce7aebcaad32da481e8a5c1f19ba9837bd516e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.4/rustunnel-v0.4.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3ffa15961e7f6c73a9bc869adfd1b3d3fa79de9c841e7914ae3334d51dae56ea"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.4/rustunnel-v0.4.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "149c6852d29ae51af22daad4e69aaa84a6152b96b4b3995424ac6ab8256b1e7e"
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
