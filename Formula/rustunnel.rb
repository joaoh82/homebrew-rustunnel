class Rustunnel < Formula
  desc "Self-hosted secure tunnel client — expose local services through a public server"
  homepage "https://github.com/joaoh82/rustunnel"
  version "0.7.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.7.2/rustunnel-v0.7.2-aarch64-apple-darwin.tar.gz"
      sha256 "fa73601163d28f7840e88c590eeaed3c8642ed1e0451499dd31efb07280c0572"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.7.2/rustunnel-v0.7.2-x86_64-apple-darwin.tar.gz"
      sha256 "0aef306908ce2837ee88b587d8b57593741361711e581954b24d6b0a52ca2b49"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.7.2/rustunnel-v0.7.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "66200a5ade13755fe34fb2ecca5ec4891089634bf7248e9b356cb2829ca07c71"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.7.2/rustunnel-v0.7.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2931950e0becece14e14ab0dfe682ca05753beb3de9454d79f3f1c54786e3eae"
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
