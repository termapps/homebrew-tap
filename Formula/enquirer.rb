class Enquirer < Formula
  version "0.6.0"
  desc "Command line utility for stylish interactive prompts"
  homepage "https://github.com/termapps/enquirer"

  if OS.mac?
    url "https://github.com/termapps/enquirer/releases/download/v#{version}/enquirer-v#{version}-x86_64-apple-darwin.zip"
    sha256 "13ac98c14b7bf1e804bad957827bbeb782d30d17b0ba49bed64eb7dc04f532d7" # mac
  elsif OS.linux?
    url "https://github.com/termapps/enquirer/releases/download/v#{version}/enquirer-v#{version}-x86_64-unknown-linux-gnu.zip"
    sha256 "8027a5885d888f08a607b7ec578eba5125a7f4dcdb8c9ad93c303c04d4c4501f" # linux
  end

  def install
    bin.install "enquirer"
    man1.install "enquirer.1"
  end

  test do
    system "#{bin}/enquirer", "--version"
  end
end
