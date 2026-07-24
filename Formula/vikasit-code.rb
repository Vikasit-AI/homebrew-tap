# typed: false
# frozen_string_literal: true
class VikasitCode < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/Vikasit-AI/vikasit-code"
  version "2.2.1"
  depends_on "ripgrep"
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Vikasit-AI/releases/releases/download/v2.2.1/vikasit-code-darwin-x64.zip"
      sha256 "60299734da73bf5222a67121b8fa0cff5aaaef565f4ae4f44d4b8440ad0de877"
      def install; bin.install "vikasit"; end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Vikasit-AI/releases/releases/download/v2.2.1/vikasit-code-darwin-arm64.zip"
      sha256 "4bac37bc9257c87b62c49161290f95114c454cc7089d2fd337fc6e7ad0321e06"
      def install; bin.install "vikasit"; end
    end
  end
  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/Vikasit-AI/releases/releases/download/v2.2.1/vikasit-code-linux-x64.tar.gz"
      sha256 "1005ded3a7e2dc345de9a2fec8215357eeaea4034cf16fcaab917ef34ee8c8ac"
      def install; bin.install "vikasit"; end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/Vikasit-AI/releases/releases/download/v2.2.1/vikasit-code-linux-arm64.tar.gz"
      sha256 "32c4a220d5e633c29387b66cef069a825921e6a5d262d09630a738108d161614"
      def install; bin.install "vikasit"; end
    end
  end
end
