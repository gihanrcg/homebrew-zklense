class Zklense < Formula
  desc "A command-line tool for profiling, building, and deploying zero-knowledge proofs built with Noir for Solana Blockchain"
  homepage "https://github.com/jinali98/zk-profiling-solana"
  version "0.1.2"
  license "MIT OR Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/jinali98/zk-profiling-solana/releases/download/v0.1.2/zklense-x86_64-apple-darwin.tar.gz"
      sha256 "sha256:61559ec910e6b4bb3f52b52e7ecaed6d3134c7fca7a18f96113cb21df770d08c"
    end

    on_arm do
      url "https://github.com/jinali98/zk-profiling-solana/releases/download/v0.1.2/zklense-aarch64-apple-darwin.tar.gz"
      sha256 "sha256:258e8eb7eaf788307010172c7c0c9a3d5f995f2336e8611af162fcbe13114438"
    end
  end

  def install
    bin.install "zklense"
  end

  test do
    system "#{bin}/zklense", "--version"
  end
end
