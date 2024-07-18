class Publisher < Formula
  version "0.1.3"
  desc "Tool to publish & distribute CLI tools"
  homepage "https://github.com/termapps/publisher"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/termapps/publisher/releases/download/v#{version}/publisher-v#{version}-aarch64-apple-darwin.zip"
      sha256 "1774a31137c6e11bced0eea93d58d36732a65f16e78b8b1840fb1d72dce7cb7e"
    else
      url "https://github.com/termapps/publisher/releases/download/v#{version}/publisher-v#{version}-x86_64-apple-darwin.zip"
      sha256 "20fba08ac657f2dfdc7bf6acbbafad99a10157e84ee8355b7cafa7bf11b718f3"
    end
  elsif OS.linux?
     url "https://github.com/termapps/publisher/releases/download/v#{version}/publisher-v#{version}-x86_64-unknown-linux-gnu.zip"
     sha256 "7e8471a919bbab089685d7651341cb081ff96553e0a612cd28b71745bfea6538"
  end

  def install
    bin.install "publisher"
  end

  test do
    system "#{bin}/publisher --version"
  end
end
