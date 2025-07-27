class Publisher < Formula
  version "0.1.12"
  desc "Tool to publish & distribute CLI tools"
  homepage "https://github.com/termapps/publisher"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/termapps/publisher/releases/download/v#{version}/publisher-v#{version}-aarch64-apple-darwin.zip"
      sha256 "fe79f3736f61ef0dc818ece359a04b60e5eabbf7212e5d02ec85c5873d890d50\n"
    else
      url "https://github.com/termapps/publisher/releases/download/v#{version}/publisher-v#{version}-x86_64-apple-darwin.zip"
      sha256 "c554c0546f778b8a309dc367517fc9dce746a09b16957c5b773988981ab1bc3b\n"
    end
  elsif OS.linux?
     url "https://github.com/termapps/publisher/releases/download/v#{version}/publisher-v#{version}-x86_64-unknown-linux-gnu.zip"
     sha256 "d6bd904ce5ba43c2131ded756031bcbece1f081740ef65ac96f565bd7ca6bd01\n"
  end

  def install
    bin.install "publisher"
  end

  test do
    system "#{bin}/publisher --version"
  end
end
