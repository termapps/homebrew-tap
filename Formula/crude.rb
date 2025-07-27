class Crude < Formula
  version "0.1.2"
  desc "Migration toolkit for databases"
  homepage "https://github.com/termapps/crude"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/termapps/crude/releases/download/v#{version}/crude-v#{version}-aarch64-apple-darwin.zip"
      sha256 "91c0dba9a63c7d15c148784b5889c80f2626b1c0f42153ec8bf070633b905c67"
    else
      url "https://github.com/termapps/crude/releases/download/v#{version}/crude-v#{version}-x86_64-apple-darwin.zip"
      sha256 "1d24e8f2ec600b544f3acda8004a21810b302fbdb8588e6e64c240a9d7a494a2"
    end
  elsif OS.linux?
     url "https://github.com/termapps/crude/releases/download/v#{version}/crude-v#{version}-x86_64-unknown-linux-gnu.zip"
     sha256 "3a743186b5e71fddbbec532037942c6c81d0d1bfd9351f0f1bc05c7c193ec5ea"
  end

  def install
    bin.install "crude"
  end

  test do
    system "#{bin}/crude --version"
  end
end
