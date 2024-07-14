class Publisher < Formula
  version "0.1.1"
  desc "Tool to publish & distribute CLI tools"
  homepage "https://github.com/termapps/publisher"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/termapps/publisher/releases/download/v#{version}/publisher-v#{version}-aarch64-apple-darwin.zip"
      sha256 "ad30afe3a2ddf3598b24237c89fc7f2b222a2156ba712431d88f5a189266d6a0"
    else
      url "https://github.com/termapps/publisher/releases/download/v#{version}/publisher-v#{version}-x86_64-apple-darwin.zip"
      sha256 "d03aded501fb69d22ea3b5177806a56423fd7061079fc49fca2272d2183a43a2"
    end
  elsif OS.linux?
     url "https://github.com/termapps/publisher/releases/download/v#{version}/publisher-v#{version}-x86_64-unknown-linux-gnu.zip"
     sha256 "e879ec8e0dfc16322d939c926bd11c6f0eb8a0b70ce76ad6879b2f10fc68c557"
  end

  def install
    bin.install "publisher"
  end

  test do
    system "#{bin}/publisher --version"
  end
end
