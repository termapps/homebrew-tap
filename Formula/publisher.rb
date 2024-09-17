class Publisher < Formula
  version "0.1.8"
  desc "Tool to publish & distribute CLI tools"
  homepage "https://github.com/termapps/publisher"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/termapps/publisher/releases/download/v#{version}/publisher-v#{version}-aarch64-apple-darwin.zip"
      sha256 "ffbdad1d6823a891112665c5d7cbe02520c1e700077d659aa97ac02f03aaa7fd"
    else
      url "https://github.com/termapps/publisher/releases/download/v#{version}/publisher-v#{version}-x86_64-apple-darwin.zip"
      sha256 "333f33504876ec4beff6bd6fb71b0a64bec5a9671aa362fb59e2deeaf232e1d8"
    end
  elsif OS.linux?
     url "https://github.com/termapps/publisher/releases/download/v#{version}/publisher-v#{version}-x86_64-unknown-linux-gnu.zip"
     sha256 "d212fb2d604ba500dab47121cf8fc2f7c2c4bd69b7300994e994358443f28611"
  end

  def install
    bin.install "publisher"
  end

  test do
    system "#{bin}/publisher --version"
  end
end
