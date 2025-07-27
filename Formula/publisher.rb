class Publisher < Formula
  version "0.1.13"
  desc "Tool to publish & distribute CLI tools"
  homepage "https://github.com/termapps/publisher"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/termapps/publisher/releases/download/v#{version}/publisher-v#{version}-aarch64-apple-darwin.zip"
      sha256 "29f881a9a1d1c075b99b3b8a3ac3a9fa84a8d466927b92129ff2573c07ddbeab"
    else
      url "https://github.com/termapps/publisher/releases/download/v#{version}/publisher-v#{version}-x86_64-apple-darwin.zip"
      sha256 "9479f00717be9c294804a847e0df92d3a58fef2fc8cf08b62acc408c863fa344"
    end
  elsif OS.linux?
     url "https://github.com/termapps/publisher/releases/download/v#{version}/publisher-v#{version}-x86_64-unknown-linux-gnu.zip"
     sha256 "f3f372638d4bc504632d3cef8f6510263b2a882263a680b5458e0f98e97d23d6"
  end

  def install
    bin.install "publisher"
  end

  test do
    system "#{bin}/publisher --version"
  end
end
