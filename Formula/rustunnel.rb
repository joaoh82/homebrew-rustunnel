class Rustunnel < Formula
  desc "Self-hosted secure tunnel client — expose local services through a public server"
  homepage "https://github.com/joaoh82/rustunnel"
  version "0.3.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.3.4/rustunnel-v0.3.4-aarch64-apple-darwin.tar.gz"
      sha256 "436175b919a4195bfe3c450f06e38302ed0824fdc7479241557c9dfafdcccb45"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.3.4/rustunnel-v0.3.4-x86_64-apple-darwin.tar.gz"
      sha256 "794bcabcf943e9e2ffdedb9062e30504dff1b7b8e2d73bece1ab0aa085377b64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.3.4/rustunnel-v0.3.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9aa2ed68fe89829a6325f77447063bebf5f4d50b218b9171de39c893870333ec"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.3.4/rustunnel-v0.3.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "230963e99b1b88b1ea515b4597b01bffe8bddb79db4533174546693f335a539c"
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
