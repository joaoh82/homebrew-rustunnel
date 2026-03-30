class Rustunnel < Formula
  desc "Self-hosted secure tunnel client — expose local services through a public server"
  homepage "https://github.com/joaoh82/rustunnel"
  version "0.4.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.7/rustunnel-v0.4.7-aarch64-apple-darwin.tar.gz"
      sha256 "30190a2cc2a2abecf6a287b80023ebd8d908bfee79de76eb657ced1fbbfef2c5"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.7/rustunnel-v0.4.7-x86_64-apple-darwin.tar.gz"
      sha256 "ca318371f13acddf8c80bfda44efbf8a643990b080873d71edbc30b78fb60a58"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.7/rustunnel-v0.4.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f18e6140ccd89ae61b57f19e689738e465b1fbc3702f1eec8fde7d2c30ce936f"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.7/rustunnel-v0.4.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "622f18db71a12392901c0817c57433b00f8429214631b4040b5939ebae1f21e9"
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
