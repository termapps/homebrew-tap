class Publisher < Formula
  version "0.1.2"
  desc "Tool to publish & distribute CLI tools"
  homepage "https://github.com/termapps/publisher"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/termapps/publisher/releases/download/v#{version}/publisher-v#{version}-aarch64-apple-darwin.zip"
      sha256 "74ddf25479e9f1dc201380c4efb76d13acd1bd7a916d3e6064ac2d88250acb00"
    else
      url "https://github.com/termapps/publisher/releases/download/v#{version}/publisher-v#{version}-x86_64-apple-darwin.zip"
      sha256 "67ed59bec3d6c187a806ce1da9475a9665c4d3afe6cb76f395fa6b01ef4f6f22"
    end
  elsif OS.linux?
     url "https://github.com/termapps/publisher/releases/download/v#{version}/publisher-v#{version}-x86_64-unknown-linux-gnu.zip"
     sha256 "441f7fdd42051df62bad440916ad98ff87156340a951f121adc15eb29c20b926"
  end

  def install
    bin.install "publisher"
  end

  test do
    system "#{bin}/publisher --version"
  end
end
