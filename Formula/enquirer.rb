class Enquirer < Formula
  version "0.5.0"
  desc "Command Line Utility for Stylish Interactive Prompts"
  homepage "https://github.com/termapps/enquirer"

  if OS.mac?
    url "https://github.com/termapps/enquirer/releases/download/v#{version}/enquirer-v#{version}-x86_64-apple-darwin.zip"
    sha256 "e27b132aae63a1971f9c3b3e183783fcfa805a1530be8b08da2e856466ef19c9" # mac
  elsif OS.linux?
    url "https://github.com/termapps/enquirer/releases/download/v#{version}/enquirer-v#{version}-x86_64-unknown-linux-gnu.zip"
    sha256 "76aa80343f3b653d7ebbdbcc75db8910ad42e46755a585f6eebf539f7d6fb70d" # linux
  end

  def install
    bin.install "enquirer"
    man1.install "enquirer.1"
  end

  test do
    system "#{bin}/enquirer", "--version"
  end
end
