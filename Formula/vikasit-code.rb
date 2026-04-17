class VikasitCode < Formula
  desc "Vikasit Code — AI coding agent for the terminal"
  homepage "https://vikasit.ai"
  version "2.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Vikasit-AI/releases/releases/download/v#{version}/vikasit-code-darwin-arm64.zip"
      sha256 "0c492d436c87f6de7af0a7dfbee332bf1e95374cfab02bb09e8737bd87195dcc"
    end
    on_intel do
      url "https://github.com/Vikasit-AI/releases/releases/download/v#{version}/vikasit-code-darwin-x64.zip"
      sha256 "57e732af1d055796a48421a4b9ff1dadf6ddfbbd38ba9a5fc1e2e3fd403410e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vikasit-AI/releases/releases/download/v#{version}/vikasit-code-linux-arm64.tar.gz"
      sha256 "131ccd3fbecebbe6f238abf9f826cbdb75711ac5673c98c54bc2e85b0930bbad"
    end
    on_intel do
      url "https://github.com/Vikasit-AI/releases/releases/download/v#{version}/vikasit-code-linux-x64.tar.gz"
      sha256 "eb46e46cd614ef10616e86c84d2befe7fbb8a0ef4305da83f575b8c209a46f5e"
    end
  end

  def install
    bin.install "vikasit"
  end

  test do
    system "#{bin}/vikasit", "--version"
  end
end
