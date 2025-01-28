# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pachanger < Formula
  desc "pachanger is a tool to change the package name of Go source code."
  homepage "https://github.com/pyama86/pachanger"
  version "0.0.14"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pyama86/pachanger/releases/download/v0.0.14/pachanger_0.0.14_darwin_amd64.tar.gz"
      sha256 "f32bea07462d0dd28bdf8b1c624a4387d85ac317ced53f6a7ac542222426fc21"

      def install
        bin.install Dir['pachanger']
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pyama86/pachanger/releases/download/v0.0.14/pachanger_0.0.14_darwin_arm64.tar.gz"
      sha256 "9b7c4b9caada68ac3a814ba44ee9408d2a15ef5612ce62b42b735c2bcad5ab1c"

      def install
        bin.install Dir['pachanger']
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pyama86/pachanger/releases/download/v0.0.14/pachanger_0.0.14_linux_amd64.tar.gz"
        sha256 "c106e916a9e2015c75219e01b9d091e771759bffb52b6a466abda0e60e19b08f"

        def install
          bin.install Dir['pachanger']
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pyama86/pachanger/releases/download/v0.0.14/pachanger_0.0.14_linux_arm64.tar.gz"
        sha256 "858063636084a35fc669adacb9ed7b9bc3658c3cc165894ba7ec62f46f96d7cf"

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
