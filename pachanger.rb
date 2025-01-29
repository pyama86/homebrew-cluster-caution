# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pachanger < Formula
  desc "pachanger is a tool to change the package name of Go source code."
  homepage "https://github.com/pyama86/pachanger"
  version "0.0.15"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pyama86/pachanger/releases/download/v0.0.15/pachanger_0.0.15_darwin_amd64.tar.gz"
      sha256 "178529d92aa653e13a409efdeccd59c3e136ac070e8787907252465ed9dfe674"

      def install
        bin.install Dir['pachanger']
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pyama86/pachanger/releases/download/v0.0.15/pachanger_0.0.15_darwin_arm64.tar.gz"
      sha256 "d9fb7fb6bdc72afb8c1b1ac1eb90bc0a8b424237e749162bd82df8c62784b3c5"

      def install
        bin.install Dir['pachanger']
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pyama86/pachanger/releases/download/v0.0.15/pachanger_0.0.15_linux_amd64.tar.gz"
        sha256 "1a8e316121f018fd37143cd4fe33a7d7d27ed6a80f587bbef6dc4aba5ab2116b"

        def install
          bin.install Dir['pachanger']
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pyama86/pachanger/releases/download/v0.0.15/pachanger_0.0.15_linux_arm64.tar.gz"
        sha256 "dd115dc4084228446557e19060890f7439664c685119b60adbb5c57be019328c"

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
