class Rustunnel < Formula
  desc "Self-hosted secure tunnel client — expose local services through a public server"
  homepage "https://github.com/joaoh82/rustunnel"
  version "0.3.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.3.6/rustunnel-v0.3.6-aarch64-apple-darwin.tar.gz"
      sha256 "980090c34348085ff86d7aa6fc82fdee70aeb3fe157b82d9638162851fc3bd9b"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.3.6/rustunnel-v0.3.6-x86_64-apple-darwin.tar.gz"
      sha256 "ac2f19c47d6ee34b8286dff209b1f3f4b117b853d83471fe994d82425f4e2872"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.3.6/rustunnel-v0.3.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ad0d9eca83aa7aee37e803425260f32216bc81e21f79ccb3970ceca06deb55c0"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.3.6/rustunnel-v0.3.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "385e843772cb563e4aa123bf1d0372f1cf01be648dd545a00723d24917af1787"
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
