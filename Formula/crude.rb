class Crude < Formula
  version "0.1.1"
  desc "Migration toolkit for databases"
  homepage "https://github.com/termapps/crude"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/termapps/crude/releases/download/v#{version}/crude-v#{version}-aarch64-apple-darwin.zip"
      sha256 "7a05314093a6385f499d907a3b860b995877daae517564c180f6c7ea7c68827b"
    else
      url "https://github.com/termapps/crude/releases/download/v#{version}/crude-v#{version}-x86_64-apple-darwin.zip"
      sha256 "8a170e3a0f7c99da2de433a3f2816862d6763d17233f662d72bfe6f57fd4253b"
    end
  elsif OS.linux?
     url "https://github.com/termapps/crude/releases/download/v#{version}/crude-v#{version}-x86_64-unknown-linux-gnu.zip"
     sha256 "b3238d3649b0692aff8a955a4752d5fe925c9d32d4ec43ee0e9a86917a84748b"
  end

  def install
    bin.install "crude"
  end

  test do
    system "#{bin}/crude --version"
  end
end
