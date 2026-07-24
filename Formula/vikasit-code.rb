# typed: false
# frozen_string_literal: true
class VikasitCode < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/Vikasit-AI/vikasit-code"
  version "2.2.2"
  depends_on "ripgrep"
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Vikasit-AI/releases/releases/download/v2.2.2/vikasit-code-darwin-x64.zip"
      sha256 "7d8bf48232756fdc428457e700e876d2bc3535c145a57c2fa362b87eaac89992"
      def install; bin.install "vikasit"; end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Vikasit-AI/releases/releases/download/v2.2.2/vikasit-code-darwin-arm64.zip"
      sha256 "4cf5d35ebf8b306faf8823e88678071d772b4d039b97fae7076b5edd43b9f0aa"
      def install; bin.install "vikasit"; end
    end
  end
  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/Vikasit-AI/releases/releases/download/v2.2.2/vikasit-code-linux-x64.tar.gz"
      sha256 "9ef020f42d4b335a00b7cfdfe99b1dcf40cc0fe37e0f2c9a4f43b28f926f45ee"
      def install; bin.install "vikasit"; end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/Vikasit-AI/releases/releases/download/v2.2.2/vikasit-code-linux-arm64.tar.gz"
      sha256 "e0ad9ce58cfa9e77de142ce36847c967413b45a70c1f816e3ee4cdc2e64e6210"
      def install; bin.install "vikasit"; end
    end
  end
end
