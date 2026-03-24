class Rustunnel < Formula
  desc "Self-hosted secure tunnel client — expose local services through a public server"
  homepage "https://github.com/joaoh82/rustunnel"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.2/rustunnel-v0.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "881aa3a04b552e38ffd40050ee9607d45bddd848434ca45ab9a4c0ebedbb3657"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.2/rustunnel-v0.4.2-x86_64-apple-darwin.tar.gz"
      sha256 "8e2167cb3583a14fd4115aaae321bf5f30e8db8de7ab4272247bf0208af6c453"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.2/rustunnel-v0.4.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1b54a6738ae1404bcf992ca873d5e88bba11daa71f9de770ad1464ceef35f928"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.2/rustunnel-v0.4.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a2631799e3aacf4ee0e60fc7c86df8b43dd6fc0d11020d846d6c5c69628df62b"
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
