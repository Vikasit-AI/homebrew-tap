class VikasitCode < Formula
  desc "Terminal-native AI coding assistant powered by Vikasit AI"
  homepage "https://vikasit.ai"
  version "2.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Vikasit-AI/releases/releases/download/v2.0.2/vikasit-code-darwin-arm64.zip"
      sha256 "aea5f318b990520a963a62104fed4e826c46c35ca14c3c4d6968407bde381b62"
    end
    on_intel do
      url "https://github.com/Vikasit-AI/releases/releases/download/v2.0.2/vikasit-code-darwin-x64.zip"
      sha256 "ec5a8e503da372d4ef7d7d5862a954326378730c6b255d940b454c267188a6bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vikasit-AI/releases/releases/download/v2.0.2/vikasit-code-linux-arm64.tar.gz"
      sha256 "55b19786740366e40a4e8dba0bfaad858db40acf65034c8825e3ae8d4ae82a99"
    end
    on_intel do
      url "https://github.com/Vikasit-AI/releases/releases/download/v2.0.2/vikasit-code-linux-x64.tar.gz"
      sha256 "120b1ad96f28d997a34edf68ac09f5bc48e5210e9b013c8b80ba0a4b171cce06"
    end
  end

  def install
    bin.install "vikasit"
  end

  test do
    assert_match "vikasit", shell_output("#{bin}/vikasit --version")
  end
end
