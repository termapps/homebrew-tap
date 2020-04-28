class Enquirer < Formula
  version "0.4.0"
  desc "Command Line Utility for Stylish Interactive Prompts"
  homepage "https://github.com/termapps/enquirer"

  if OS.mac?
    url "https://github.com/termapps/enquirer/releases/download/v#{version}/enquirer-v#{version}-x86_64-apple-darwin.zip"
    sha256 "1567eaf5f7d9b0d11bb96b6f957054e013a0fea94dbd4159accedc168160cc00" # mac
  elsif OS.linux?
    url "https://github.com/termapps/enquirer/releases/download/v#{version}/enquirer-v#{version}-x86_64-unknown-linux-gnu.zip"
    sha256 "59d8ee01f995edd7c2f640d68dea59e8d1337f675768c012c0897b3701495591" # linux
  end

  def install
    bin.install "enquirer"
    man1.install "enquirer.1"
  end

  test do
    system "#{bin}/enquirer", "--version"
  end
end
