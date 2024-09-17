class Publisher < Formula
  version "0.1.9"
  desc "Tool to publish & distribute CLI tools"
  homepage "https://github.com/termapps/publisher"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/termapps/publisher/releases/download/v#{version}/publisher-v#{version}-aarch64-apple-darwin.zip"
      sha256 "3eac47853faee43c4156a03a3673b41f724e8a6a9feefa5b87b1e473fcba0aa6"
    else
      url "https://github.com/termapps/publisher/releases/download/v#{version}/publisher-v#{version}-x86_64-apple-darwin.zip"
      sha256 "4657b2abd9f33f447b40e5b11c266197ec68b2fbc75a192ea2893010af7f3c23"
    end
  elsif OS.linux?
     url "https://github.com/termapps/publisher/releases/download/v#{version}/publisher-v#{version}-x86_64-unknown-linux-gnu.zip"
     sha256 "f9cb6b0295dcb7f8f93ac6de2bb6ff0b20d550b746c5c58f0f61420272100e8d"
  end

  def install
    bin.install "publisher"
  end

  test do
    system "#{bin}/publisher --version"
  end
end
