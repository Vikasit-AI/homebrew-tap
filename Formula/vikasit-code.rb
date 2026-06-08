class VikasitCode < Formula
  desc "Vikasit Code — AI coding agent for the terminal"
  homepage "https://vikasit.ai"
  version "2.0.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Vikasit-AI/releases/releases/download/v#{version}/vikasit-code-darwin-arm64.zip"
      sha256 "fdd915a0f7dbefebecef86a4fd4af89d05c913627e12475c0668f1dc8d06b3fa"
    end
    on_intel do
      url "https://github.com/Vikasit-AI/releases/releases/download/v#{version}/vikasit-code-darwin-x64.zip"
      sha256 "28b6f9f2f315e1810762aaca0ca10d1241101672c6ba74c8b3e257b465438dd6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vikasit-AI/releases/releases/download/v#{version}/vikasit-code-linux-arm64.tar.gz"
      sha256 "255e67a4299f9502e1d76c1b36f0c2036ce5bab900fdc13440d621df41bad95f"
    end
    on_intel do
      url "https://github.com/Vikasit-AI/releases/releases/download/v#{version}/vikasit-code-linux-x64.tar.gz"
      sha256 "b03ce3e372f2b8a11fc22dc760879e9304b700f46a34f70e2e7f6d0f6e8c6d47"
    end
  end

  def install
    bin.install "vikasit"
  end

  test do
    system "#{bin}/vikasit", "--version"
  end
end
