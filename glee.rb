# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Glee < Formula
  desc "CLI tool to manage Git's local exclude patterns"
  homepage "https://github.com/vpukhanov/glee"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/vpukhanov/glee/releases/download/v1.1.0/glee_1.1.0_Darwin_x86_64.zip"
      sha256 "c6450ce36a3bc94f91ccb2e677d8968157de11b4c4283bb91c9b644647f430bf"

      def install
        bin.install "glee"
      end
    end
    on_arm do
      url "https://github.com/vpukhanov/glee/releases/download/v1.1.0/glee_1.1.0_Darwin_arm64.zip"
      sha256 "e011c885c73bf070f2e5168389b5e43ca10f1c3cb265b209f6e477a47d449194"

      def install
        bin.install "glee"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/vpukhanov/glee/releases/download/v1.1.0/glee_1.1.0_Linux_x86_64.tar.gz"
        sha256 "4151d4e7301b19e0023c49fbc37ba0b8049ccb08ce93e62b66c2af7a57f35a83"

        def install
          bin.install "glee"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/vpukhanov/glee/releases/download/v1.1.0/glee_1.1.0_Linux_arm64.tar.gz"
        sha256 "c3e58e0879e16ef78e73fead6c91b238c7a9a74664d15f8b761fdf6e22126f88"

        def install
          bin.install "glee"
        end
      end
    end
  end

  test do
    system "#{bin}/glee version"
  end
end