class Rustunnel < Formula
  desc "Self-hosted secure tunnel client — expose local services through a public server"
  homepage "https://github.com/joaoh82/rustunnel"
  version "0.4.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.9/rustunnel-v0.4.9-aarch64-apple-darwin.tar.gz"
      sha256 "d08974cb40129f9e4203580e76cce78c66e45e083410d106ed676489e2eaf5ff"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.9/rustunnel-v0.4.9-x86_64-apple-darwin.tar.gz"
      sha256 "7e99633d95cb792dd48f332d414e49a67a3b2c6e986fa409c243c2784fa482ea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.9/rustunnel-v0.4.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6bb8b2cfc588c847821eba82198963b25ba80331a3428aa438619ebc68495e8a"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.4.9/rustunnel-v0.4.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dc008d63a7f2fc7aea948fed2f955723338757825e6b532b1db8f3062b156e7a"
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
