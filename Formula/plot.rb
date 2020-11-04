class Plot < Formula
  version "0.0.1"
  desc "Command Line Utility for Stylish Interactive Charts"
  homepage "https://github.com/termapps/plot"

  if OS.mac?
    url "https://github.com/termapps/plot/releases/download/v#{version}/plot-v#{version}-x86_64-apple-darwin.zip"
    sha256 "5ed6475a2905bed8a880e6c94c095cfa71160ef748f8e02f9f1a832057e17e0f" # mac
  elsif OS.linux?
    url "https://github.com/termapps/plot/releases/download/v#{version}/plot-v#{version}-x86_64-unknown-linux-gnu.zip"
    sha256 "b906bd9708f9e24c538bfe64c125d5dfa27a397b4e5f096c5956569b2c63ab7b" # linux
  end

  def install
    bin.install "plot"
    man1.install "plot.1"
  end

  test do
    system "#{bin}/plot", "--version"
  end
end
