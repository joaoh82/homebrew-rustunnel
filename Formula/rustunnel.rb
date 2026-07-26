class Rustunnel < Formula
  desc "Self-hosted secure tunnel client — expose local services through a public server"
  homepage "https://github.com/joaoh82/rustunnel"
  version "0.8.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.8.4/rustunnel-v0.8.4-aarch64-apple-darwin.tar.gz"
      sha256 "c8cf1892fbff19b03b20d31ff59e040e2e820c9023c080697342cd6ce03481a7"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.8.4/rustunnel-v0.8.4-x86_64-apple-darwin.tar.gz"
      sha256 "db0f7098ea53856945bb5d02ca3cb07e2e81c4bdaef37db9cf07228d9aaf74a7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.8.4/rustunnel-v0.8.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f936ad6ef50e269dfe0d21dfd09255bf281c9d182427883bfc4d7f17eaa5b898"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.8.4/rustunnel-v0.8.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4322d4c0152f33c9cde42c85ff4bc5077357d3ac6ac0ac106c966ae7865cadbb"
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
