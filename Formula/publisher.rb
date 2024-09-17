class Publisher < Formula
  version "0.1.7"
  desc "Tool to publish & distribute CLI tools"
  homepage "https://github.com/termapps/publisher"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/termapps/publisher/releases/download/v#{version}/publisher-v#{version}-aarch64-apple-darwin.zip"
      sha256 "a86a1b36e3d5088cb2add00ca1853e91695c267ccd239023c6eacaac1191ad1e"
    else
      url "https://github.com/termapps/publisher/releases/download/v#{version}/publisher-v#{version}-x86_64-apple-darwin.zip"
      sha256 "206b8f9808dd7169aa9c8fd732c5509e56669bff4641c1d838908623fd854604"
    end
  elsif OS.linux?
     url "https://github.com/termapps/publisher/releases/download/v#{version}/publisher-v#{version}-x86_64-unknown-linux-gnu.zip"
     sha256 "1a85a6d0fdedb39065da34ecfafc281584710632cde9e98a4481f964098c62ad"
  end

  def install
    bin.install "publisher"
  end

  test do
    system "#{bin}/publisher --version"
  end
end
