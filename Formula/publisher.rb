class Publisher < Formula
  version "0.1.14"
  desc "Tool to publish & distribute CLI tools"
  homepage "https://github.com/termapps/publisher"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/termapps/publisher/releases/download/v#{version}/publisher-v#{version}-aarch64-apple-darwin.zip"
      sha256 "7c033ac90e174f8e3c75f884032c1a37a9bde16b31028ff9698f83e7591c2241"
    else
      url "https://github.com/termapps/publisher/releases/download/v#{version}/publisher-v#{version}-x86_64-apple-darwin.zip"
      sha256 "ff7ed5f13d794c7e157ffe0aa6bd67d02d49d4aa7a087ca2d778db89c343b8a3"
    end
  elsif OS.linux?
     url "https://github.com/termapps/publisher/releases/download/v#{version}/publisher-v#{version}-x86_64-unknown-linux-gnu.zip"
     sha256 "59bba724afdfdc9f1ef948c5076d6c8960fbc2b2f29bc2abc26d3ecf1ecd497c"
  end

  def install
    bin.install "publisher"
  end

  test do
    system "#{bin}/publisher --version"
  end
end
