class Zklense < Formula
  desc "A command-line tool for profiling, building, and deploying zero-knowledge proofs built with Noir for Solana Blockchain"
  homepage "https://github.com/jinali98/zk-lense"
  version "0.1.3"
  license "MIT OR Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/jinali98/zk-lense/releases/download/v0.1.4/zklense-x86_64-apple-darwin.tar.gz"
      sha256 "9a62b521802ee16104bba33abd0729fa1e66c6ab39959eba117c6285a5ecbfdb"
    end

    on_arm do
      url "https://github.com/jinali98/zk-lense/releases/download/v0.1.4/zklense-aarch64-apple-darwin.tar.gz"
      sha256 "16a108de3403c2d865c6a91fcc6d230fc17e9caea6917866b36df6825c772062"
    end
  end

  def install
    bin.install "zklense"
  end

  test do
    system "#{bin}/zklense", "--version"
  end
end
