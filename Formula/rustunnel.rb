class Rustunnel < Formula
  desc "Self-hosted secure tunnel client — expose local services through a public server"
  homepage "https://github.com/joaoh82/rustunnel"
  version "0.4.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.5/rustunnel-v0.4.5-aarch64-apple-darwin.tar.gz"
      sha256 "f8468a5f66d9043dbb7b10d4572e08b75ff3c507619e050590c9a63cac1da32a"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.5/rustunnel-v0.4.5-x86_64-apple-darwin.tar.gz"
      sha256 "250fec6b90f97346f134f6ade24e6ec7962ef86f5b6e2b62b0f700a3dcfd6944"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.5/rustunnel-v0.4.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b10b03a99b80a79a0e6b07efca2659b8bbfe61e7c859a58294fead94b8e68296"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.5/rustunnel-v0.4.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6b73441d94be4206f189693b4570bbac9aa7f8f1c807ad58f039a7986159c250"
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
