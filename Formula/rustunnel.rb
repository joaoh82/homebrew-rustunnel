class Rustunnel < Formula
  desc "Self-hosted secure tunnel client — expose local services through a public server"
  homepage "https://github.com/joaoh82/rustunnel"
  version "0.7.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.7.3/rustunnel-v0.7.3-aarch64-apple-darwin.tar.gz"
      sha256 "095bcd4d2ec70db955824dce8dec10767d512c7d70de1e583e85a22060ffe751"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.7.3/rustunnel-v0.7.3-x86_64-apple-darwin.tar.gz"
      sha256 "c8d77c4831cb7f8bed6c7d491ebedfae5a80e3dfb91e2e910f848eee860f4071"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.7.3/rustunnel-v0.7.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "308353e34957323918bd65be3d763cc94b7150f951188b6ee1d2bb1183391d3a"
    end

    on_intel do
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.7.3/rustunnel-v0.7.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b1486c9607fbb1ada1249f5aec2ff91235b086787d192c3c121019733629712a"
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
