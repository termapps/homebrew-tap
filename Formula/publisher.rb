class Publisher < Formula
  version "0.0.3"
  desc "Tool to publish & distribute CLI tools"
  homepage "https://github.com/termapps/publisher"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/termapps/publisher/releases/download/v#{version}/publisher-v#{version}-aarch64-apple-darwin.zip"
      sha256 "d439173f77aac3ba231c6d819ea6fcb12b0db175ce5d0261973576c8700ab137"
    else
      url "https://github.com/termapps/publisher/releases/download/v#{version}/publisher-v#{version}-x86_64-apple-darwin.zip"
      sha256 "c3b0b7da7ff2096b34cfab839c5e6a29dcc1852570345b479412366644ad51b9"
    end
  elsif OS.linux?
     url "https://github.com/termapps/publisher/releases/download/v#{version}/publisher-v#{version}-x86_64-unknown-linux-gnu.zip"
     sha256 "b23e6657c19ccf0cd751bd85f8d3b026ec5bebdad34aa3dba712679711893705"
  end

  def install
    bin.install "publisher"
  end

  test do
    system "#{bin}/publisher --version"
  end
end
