# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pachanger < Formula
  desc "pachanger is a tool to change the package name of Go source code."
  homepage "https://github.com/pyama86/pachanger"
  version "0.0.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pyama86/pachanger/releases/download/v0.0.2/pachanger_0.0.2_darwin_amd64.tar.gz"
      sha256 "f38ca397fd58f4178fab860c6f057a8c30ac5d0a22867ad839e2a35cf48d989c"

      def install
        bin.install Dir['pachanger']
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pyama86/pachanger/releases/download/v0.0.2/pachanger_0.0.2_darwin_arm64.tar.gz"
      sha256 "2111d0850902ef8bc038df47a6d4fefcc1b071ee750c0d7d019d65d754d80049"

      def install
        bin.install Dir['pachanger']
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pyama86/pachanger/releases/download/v0.0.2/pachanger_0.0.2_linux_amd64.tar.gz"
        sha256 "8d71e0697a35ccd16898125e4a886f2ac6cd4eac453d6327262a2e3c6e87aed4"

        def install
          bin.install Dir['pachanger']
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pyama86/pachanger/releases/download/v0.0.2/pachanger_0.0.2_linux_arm64.tar.gz"
        sha256 "09b14f1c7996c1e6337bf8e0520443771604de2546cf6c433e5a6bab993050af"

        def install
          bin.install Dir['pachanger']
        end
      end
    end
  end

  test do
    system "#{bin}/pachanger"
  end
end
