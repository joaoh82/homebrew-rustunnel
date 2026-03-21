class Rustunnel < Formula
  desc "Self-hosted secure tunnel client — expose local services through a public server"
  homepage "https://github.com/joaoh82/rustunnel"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.3.1/rustunnel-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "29c8590a539c36eeccbdf79a01d190f31277caa11811faa3776b4fa95c7c94ad"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.3.1/rustunnel-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "b37954af2d62710bb13aabee5d3af38d6d35bf3ba1c46bd87b6f0e548e26c388"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.3.1/rustunnel-v0.3.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "65c61aaaf79954ce28472a8fcbef69a4b87f0c2decf5e47d0ed45cac8fda0b69"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.3.1/rustunnel-v0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "48c02965a1bdf52795a8677c3e4b826fc0d1bb12dc7afb8e64231e47b828e681"
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
