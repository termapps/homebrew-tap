class Crude < Formula
  version "0.1.4"
  desc "Migration toolkit for databases"
  homepage "https://github.com/termapps/crude"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/termapps/crude/releases/download/v#{version}/crude-v#{version}-aarch64-apple-darwin.zip"
      sha256 "f807c11094652e9e4aeb2de47f8506ca0f34c9d0882b70f9b31e0b658bfadaa9"
    else
      url "https://github.com/termapps/crude/releases/download/v#{version}/crude-v#{version}-x86_64-apple-darwin.zip"
      sha256 "230f3ac564e1eb132cdf172ca167814484c3ef715969af25ef4186684ef7f401"
    end
  elsif OS.linux?
     url "https://github.com/termapps/crude/releases/download/v#{version}/crude-v#{version}-x86_64-unknown-linux-gnu.zip"
     sha256 "7cd2747855e68b84fb5278f1ed702326456424afbbca49715a671f477c54e074"
  end

  def install
    bin.install "crude"
  end

  test do
    system "#{bin}/crude --version"
  end
end
