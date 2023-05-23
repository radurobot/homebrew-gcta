class Gcta < Formula
    desc "Go Code Test Analyzer"
    homepage "https://github.com/radurobot/go-code-test-analyzer"
    version "0.1.0"
    gcta-darwin-amd64: ad128e26c41520e85cbbb052e478ef9279301c975935ca17fa2d8ccb505fc380
    gcta-linux-amd64: c0d993b2884c61811deae2c40e4fbc8a44fb27bb4bc93e2e8189bf29eed4e8a2
    gcta-darwin-arm64: d33396b846056f7cfb89cd6b804436981b9b36db50eed87ad2662bfd9842c55b
    
    if OS.linux?
      url "https://github.com/radurobot/go-code-test-analyzer/releases/download/v0.1.0/gcta-linux-amd64"
      sha256 "c0d993b2884c61811deae2c40e4fbc8a44fb27bb4bc93e2e8189bf29eed4e8a2"
    elsif OS.mac? && Hardware::CPU.arm?
      url "https://github.com/radurobot/go-code-test-analyzer/releases/download/v0.1.0/gcta-darwin-arm64"
      sha256 "d33396b846056f7cfb89cd6b804436981b9b36db50eed87ad2662bfd9842c55b"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://github.com/radurobot/go-code-test-analyzer/releases/download/v0.1.0/gcta-darwin-amd64"
      sha256 "ad128e26c41520e85cbbb052e478ef9279301c975935ca17fa2d8ccb505fc380"
    end
  
    def install
      bin.install "gcta"
    end
  
    test do
      system "#{bin}/gcta", "--version"
    end
  end
  