class Zklense < Formula
  desc "A command-line tool for profiling, building, and deploying zero-knowledge proofs built with Noir for Solana Blockchain"
  homepage "https://github.com/jinali98/zk-lense"
  version "0.1.3"
  license "MIT OR Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/jinali98/zk-lense/releases/download/v0.1.3/zklense-x86_64-apple-darwin.tar.gz"
      sha256 "552a743546346e28cf66332cdf131afe2982bb60ec1dc1296f52d4463397b234"
    end

    on_arm do
      url "https://github.com/jinali98/zk-lense/releases/download/v0.1.3/zklense-aarch64-apple-darwin.tar.gz"
      sha256 "4da54dcb8e2cbb283968fa79c333000eb5b3b862f0acbabbcfdde4a4633b53ba"
    end
  end

  def install
    bin.install "zklense"
  end

  test do
    system "#{bin}/zklense", "--version"
  end
end
