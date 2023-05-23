class Gcta < Formula
    desc "Go Code Test Analyzer"
    homepage "https://github.com/radurobot/go-code-test-analyzer"
    version "0.1.1"
    
    if OS.linux?
      url "https://github.com/radurobot/go-code-test-analyzer/releases/download/v0.1.1/gcta-linux-amd64", using: :nounzip
      sha256 "1ee4765034efc74bcf93998152e8d9e755b65f46c18801b21104cb4ff54ed6ba"
    elsif OS.mac? && Hardware::CPU.arm?
      url "https://github.com/radurobot/go-code-test-analyzer/releases/download/v0.1.1/gcta-darwin-arm64", using: :nounzip
      sha256 "d541d8dff74211e572c89a417bafc7aa5f60d3d2cb13a0a3837173ab80207902"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://github.com/radurobot/go-code-test-analyzer/releases/download/v0.1.1/gcta-darwin-amd64", using: :nounzip
      sha256 "284533cdee753e7c5d8a9de24e73cec120f2251ce94ab8afbd18bbf68246e8b5"
    end
  
    def install
        if OS.linux?
            mv "gcta-linux-amd64", "gcta"
        elsif OS.mac? && Hardware::CPU.arm?
            mv "gcta-darwin-arm64", "gcta"
        elsif OS.mac? && Hardware::CPU.intel?
            mv "gcta-darwin-amd64", "gcta"
        end
        bin.install "gcta"
    end
  
    test do
      system "#{bin}/gcta", "--version"
    end
  end
  