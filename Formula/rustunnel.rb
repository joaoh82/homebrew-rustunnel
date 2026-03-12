class Rustunnel < Formula
    desc "Open-source tunnel service written in Rust that exposes local services running behind NAT/firewalls to the public internet through a relay server"
    homepage "https://github.com/joaoh82/rustunnel"
    version "0.1.0"
  
    if OS.mac? && Hardware::CPU.arm?
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.1.0/rustunnel-aarch64-apple-darwin.tar.gz"
      sha256 "YOUR_SHA256_HERE"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.1.0/rustunnel-x86_64-apple-darwin.tar.gz"
      sha256 "YOUR_SHA256_HERE"
    elsif OS.linux?
      url "https://github.com/joaoh82/rustunnel/releases/download/v0.1.0/rustunnel-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "YOUR_SHA256_HERE"
    end
  
    def install
      bin.install "rustunnel"
    end
  
    test do
      assert_match "rustunnel", shell_output("#{bin}/rustunnel --version")
    end
  end