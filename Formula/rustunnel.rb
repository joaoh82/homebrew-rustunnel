class Rustunnel < Formula
  desc "Self-hosted secure tunnel client — expose local services through a public server"
  homepage "https://github.com/joaoh82/rustunnel"
  version "0.8.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.8.3/rustunnel-v0.8.3-aarch64-apple-darwin.tar.gz"
      sha256 "9145f36d68e668a960bccdd543d31bdd2d2f4e09ef2ed56d79e4ce5af7efcdb7"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.8.3/rustunnel-v0.8.3-x86_64-apple-darwin.tar.gz"
      sha256 "b81555bfcb39963cd1442a37bebb373e693ab990c14f6719ce325f3dda878c82"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.8.3/rustunnel-v0.8.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6f631dd3cf4726003b90619430444705b50df4d93ea89e5fd6d57796c50b4740"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.8.3/rustunnel-v0.8.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2525ba13233fd4a74018954130827588e03568b8aec525059b0d4b7837e80f46"
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
