class Rustunnel < Formula
  desc "Self-hosted secure tunnel client — expose local services through a public server"
  homepage "https://github.com/joaoh82/rustunnel"
  version "0.4.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.13/rustunnel-v0.4.13-aarch64-apple-darwin.tar.gz"
      sha256 "9b668908743d835a16fbd80efdcd96777d641adf949810b349a158d62817f9ec"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.13/rustunnel-v0.4.13-x86_64-apple-darwin.tar.gz"
      sha256 "cc62d95c5ae007f61d1f9847f4d19c2517c3171455501d7620c3f7ab2d651aed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.13/rustunnel-v0.4.13-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "43e54876502c298a6745a6ddd47a2e52cbceafa9f2089794541f83c2e4b4fd65"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.13/rustunnel-v0.4.13-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2f1a6acc616be172dd1f02bb1ff3d21c20f5ae85eed88159400c4e5bf2ed797f"
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
