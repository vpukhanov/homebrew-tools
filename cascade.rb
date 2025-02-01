# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cascade < Formula
  desc "CLI tool that applies a patch across multiple git repositories"
  homepage "https://github.com/vpukhanov/cascade"
  version "1.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/vpukhanov/cascade/releases/download/v1.0.1/cascade_1.0.1_Darwin_x86_64.zip"
      sha256 "5cec40ab445e67202ddd18c1f08e1e9c8ba0cb3f41af6c261a3d6ec8d7fb4666"

      def install
        bin.install "cascade"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/vpukhanov/cascade/releases/download/v1.0.1/cascade_1.0.1_Darwin_arm64.zip"
      sha256 "c5f37ba8d9b17b05bacaf69136f7ce25d466fc53d50201bfbc2dd2ddc572492d"

      def install
        bin.install "cascade"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/vpukhanov/cascade/releases/download/v1.0.1/cascade_1.0.1_Linux_x86_64.tar.gz"
        sha256 "a5a829544ae3af594760bf40df4a1b09c22836695b25e7c8d1b0adc5dab61149"

        def install
          bin.install "cascade"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/vpukhanov/cascade/releases/download/v1.0.1/cascade_1.0.1_Linux_arm64.tar.gz"
        sha256 "ae0bfcac7c86f0d1ef355b54bc7aa1851864f5cb57558ad45d18afcbdebfdd2b"

        def install
          bin.install "cascade"
        end
      end
    end
  end

  test do
    system "#{bin}/cascade --version"
  end
end
