class Rustunnel < Formula
  desc "Self-hosted secure tunnel client — expose local services through a public server"
  homepage "https://github.com/joaoh82/rustunnel"
  version "0.4.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.10/rustunnel-v0.4.10-aarch64-apple-darwin.tar.gz"
      sha256 "12385fab4a89a0f7c9d57b2e83958cd7d07c1335d4d635ab237bafa3b70cfdcb"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.10/rustunnel-v0.4.10-x86_64-apple-darwin.tar.gz"
      sha256 "eca02bd095b401670e28a51b2b6a2ff780f500c677ae75139f1896e0c9ee40b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.10/rustunnel-v0.4.10-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "da48582a6257cf247feedfe44b5ffc05f42f0b97204f3297656f2431e8b99350"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.10/rustunnel-v0.4.10-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "99fbd487de68328327a0938a830ebf44e3ff9c1fe9450f7733239e267eba2203"
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
