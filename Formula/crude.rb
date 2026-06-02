class Crude < Formula
  version "0.1.5"
  desc "Migration toolkit for databases"
  homepage "https://github.com/termapps/crude"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/termapps/crude/releases/download/v#{version}/crude-v#{version}-aarch64-apple-darwin.zip"
      sha256 "f96cb71a1635f02ea2ae4a3947a1969f57b828c9208b6047e22a9d012f4c2ad3"
    else
      url "https://github.com/termapps/crude/releases/download/v#{version}/crude-v#{version}-x86_64-apple-darwin.zip"
      sha256 "31a5de40f4bfe14ada2c4a61f0845fde726a12aba367addbf46ff3ad955a641e"
    end
  elsif OS.linux?
     url "https://github.com/termapps/crude/releases/download/v#{version}/crude-v#{version}-x86_64-unknown-linux-gnu.zip"
     sha256 "511c96331f4ce02d2963e5ed4ffd782bef31f37ddafaec67c3a5df4b88469555"
  end

  def install
    bin.install "crude"
  end

  test do
    system "#{bin}/crude --version"
  end
end
