class Crude < Formula
  version "0.1.0"
  desc "Migration toolkit for databases"
  homepage "https://github.com/termapps/crude"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/termapps/crude/releases/download/v#{version}/crude-v#{version}-aarch64-apple-darwin.zip"
      sha256 "dc7543ed097f418948bac39739232110117867db420fd901d8912e01e1aef8b3"
    else
      url "https://github.com/termapps/crude/releases/download/v#{version}/crude-v#{version}-x86_64-apple-darwin.zip"
      sha256 "d7a25aa144379f39637978bfc99a4247e9f87373bee2cf0c135e628efed251c3"
    end
  elsif OS.linux?
     url "https://github.com/termapps/crude/releases/download/v#{version}/crude-v#{version}-x86_64-unknown-linux-gnu.zip"
     sha256 "39c3b500da83383cd49062bd03a8e5aeab671791cab0735c0c81ea5952954fcd"
  end

  def install
    bin.install "crude"
  end

  test do
    system "#{bin}/crude --version"
  end
end
