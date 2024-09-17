class Publisher < Formula
  version "0.1.6"
  desc "Tool to publish & distribute CLI tools"
  homepage "https://github.com/termapps/publisher"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/termapps/publisher/releases/download/v#{version}/publisher-v#{version}-aarch64-apple-darwin.zip"
      sha256 "1ba61d9c735e28b76c1845fe9ff38b9e02ea489b63998208efd8e4e57aa9875c"
    else
      url "https://github.com/termapps/publisher/releases/download/v#{version}/publisher-v#{version}-x86_64-apple-darwin.zip"
      sha256 "8618249b570f94f9c4023b4ae1fe660997074f6cb1e3afad60d3113871ff4f96"
    end
  elsif OS.linux?
     url "https://github.com/termapps/publisher/releases/download/v#{version}/publisher-v#{version}-x86_64-unknown-linux-gnu.zip"
     sha256 "593346067c1e3db8efa4b7ebd5474183e5f5aff0b06b27bd49e1d7b4683204c3"
  end

  def install
    bin.install "publisher"
  end

  test do
    system "#{bin}/publisher --version"
  end
end
