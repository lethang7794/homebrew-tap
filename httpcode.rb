# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Httpcode < Formula
  desc "Minimal HTTP status code lookup tool support fuzzy search"
  homepage "https://github.com/lethang7794/httpcode"
  version "0.1.14"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/lethang7794/httpcode/releases/download/v0.1.14/httpcode_Darwin_x86_64.tar.gz"
      sha256 "fea03f548b05d6ced7e6f1d31c78eadfdd2ac257c60778502d696aca43801af3"

      def install
        bin.install "httpcode"
        generate_completions_from_executable(bin/"httpcode", "completion")
      end
    end
    on_arm do
      url "https://github.com/lethang7794/httpcode/releases/download/v0.1.14/httpcode_Darwin_arm64.tar.gz"
      sha256 "7a2aecc40caa000bb7dd0a1344e73d13757144369fbef4dc68c336be3cf68f5f"

      def install
        bin.install "httpcode"
        generate_completions_from_executable(bin/"httpcode", "completion")
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/lethang7794/httpcode/releases/download/v0.1.14/httpcode_Linux_x86_64.tar.gz"
        sha256 "22e0f4ad8d68f91d2ed8c89a8dd97905360f7420b4de000bf72517f063291460"

        def install
          bin.install "httpcode"
          generate_completions_from_executable(bin/"httpcode", "completion")
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/lethang7794/httpcode/releases/download/v0.1.14/httpcode_Linux_arm64.tar.gz"
        sha256 "5fe78725418d7b5139867abc6370636ba6f304d71ec0a4337f33c6b8d78bb453"

        def install
          bin.install "httpcode"
          generate_completions_from_executable(bin/"httpcode", "completion")
        end
      end
    end
  end

  test do
    system "#{bin}/httpcode --help"
    system "#{bin}/httpcode version"
  end
end
