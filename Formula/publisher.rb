class Publisher < Formula
  version "0.1.4"
  desc "Tool to publish & distribute CLI tools"
  homepage "https://github.com/termapps/publisher"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/termapps/publisher/releases/download/v#{version}/publisher-v#{version}-aarch64-apple-darwin.zip"
      sha256 "c51e8c63300bfa10ba4d90087a7465fadfd91a6c763ca3fddd321104188e5de9"
    else
      url "https://github.com/termapps/publisher/releases/download/v#{version}/publisher-v#{version}-x86_64-apple-darwin.zip"
      sha256 "92d4fc0c1bf1094057c45da945f787fe7ee7b7cef93ffa063d55068bab3dedb1"
    end
  elsif OS.linux?
     url "https://github.com/termapps/publisher/releases/download/v#{version}/publisher-v#{version}-x86_64-unknown-linux-gnu.zip"
     sha256 "34f8c8c5b38e326b279a0e73672b803c487e184f811ee4a524b021c64d39bb77"
  end

  def install
    bin.install "publisher"
  end

  test do
    system "#{bin}/publisher --version"
  end
end
