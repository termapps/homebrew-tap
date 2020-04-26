class Enquirer < Formula
  version "0.3.1"
  desc "Command Line Utility for Stylish Interactive Prompts"
  homepage "https://github.com/termapps/enquirer"

  if OS.mac?
    url "https://github.com/termapps/enquirer/releases/download/v#{version}/enquirer-v#{version}-x86_64-apple-darwin.zip"
    sha256 "c9dfd509c512dd117704859e56171efc4d70ea9ae498460a332bbd6375b11df2" # mac
  elsif OS.linux?
    url "https://github.com/termapps/enquirer/releases/download/v#{version}/enquirer-v#{version}-x86_64-unknown-linux-gnu.zip"
    sha256 "a056726680c17fe28745b168b28b4538950dc80897ec81a3570c332a0dd2dd0e" # linux
  end

  def install
    bin.install "enquirer"
    man1.install "enquirer.1"
  end

  test do
    system "#{bin}/enquirer", "--version"
  end
end
