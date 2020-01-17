class Enquirer < Formula
  version "0.2.0"
  desc "Command Line Utility for Stylish Interactive Prompts"
  homepage "https://github.com/termapps/enquirer"

  if OS.mac?
    url "https://github.com/termapps/enquirer/releases/download/v#{version}/enquirer-v#{version}-x86_64-apple-darwin.zip"
    sha256 "87e3503e2fbe4d6d7793c26ad114f036fbe4fe384ed5d894469af48d6d5f6714" # mac
  elsif OS.linux?
    url "https://github.com/termapps/enquirer/releases/download/v#{version}/enquirer-v#{version}-x86_64-unknown-linux-gnu.zip"
    sha256 "8ba8d87a52378171f432ae2ccc4f04c7b078888585bc2e447c2f124e5b21cd91" # linux
  end

  def install
    bin.install "enquirer"
    man1.install "enquirer.1"
  end

  test do
    system "#{bin}/enquirer", "--version"
  end
end
