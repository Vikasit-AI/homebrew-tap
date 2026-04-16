class VikasitCode < Formula
  desc "Terminal-native AI coding assistant powered by Vikasit AI"
  homepage "https://vikasit.ai"
  version "2.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Vikasit-AI/releases/releases/download/v2.0.0/vikasit-code-darwin-arm64.zip"
      sha256 "fa549b9d02fa9d2346a56afbe37ad38aa5440134a135854effad82def5917db3"
    end
    on_intel do
      url "https://github.com/Vikasit-AI/releases/releases/download/v2.0.0/vikasit-code-darwin-x64.zip"
      sha256 "d365441be11783e0adf1fcebfab10cf91bfb3c049052e08428b78225f83d192a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vikasit-AI/releases/releases/download/v2.0.0/vikasit-code-linux-arm64.tar.gz"
      sha256 "dae3aef2911464830e105dbdb7129e8f38f00609201593957830b4c50f552322"
    end
    on_intel do
      url "https://github.com/Vikasit-AI/releases/releases/download/v2.0.0/vikasit-code-linux-x64.tar.gz"
      sha256 "3f51110cfab9c02106af31ad220dc602b6bf271b5f38e2b454967d58b0581fde"
    end
  end

  def install
    bin.install "vikasit"
  end

  test do
    assert_match "vikasit", shell_output("#{bin}/vikasit --version")
  end
end
