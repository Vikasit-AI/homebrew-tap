class VikasitCode < Formula
  desc "Vikasit Code — AI coding agent for the terminal"
  homepage "https://vikasit.ai"
  version "2.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Vikasit-AI/releases/releases/download/v#{version}/vikasit-code-darwin-arm64.zip"
      sha256 "2d0520dfe76baf1a8c71c69f2738e6a8002f01f6c8459827424ed0eaa43cd1b5"
    end
    on_intel do
      url "https://github.com/Vikasit-AI/releases/releases/download/v#{version}/vikasit-code-darwin-x64.zip"
      sha256 "d5226cccb741a7111420046f46546c2fe90750b309f6d5baea9177b6110b81d0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vikasit-AI/releases/releases/download/v#{version}/vikasit-code-linux-arm64.tar.gz"
      sha256 "848508335279d4d53f9bf4c68f6d58f1e0d28b613bf301834489433cf765108e"
    end
    on_intel do
      url "https://github.com/Vikasit-AI/releases/releases/download/v#{version}/vikasit-code-linux-x64.tar.gz"
      sha256 "57a8e36b53cd9b21b4c0ff481a17b934739268b352a5afa6843355f398e77f08"
    end
  end

  def install
    bin.install "vikasit"
  end

  test do
    system "#{bin}/vikasit", "--version"
  end
end
