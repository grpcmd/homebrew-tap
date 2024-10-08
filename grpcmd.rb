# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Grpcmd < Formula
  desc "A simple, easy-to-use, and developer-friendly CLI tool for gRPC."
  homepage "https://github.com/grpcmd/grpcmd"
  version "0.2.1"

  on_macos do
    on_intel do
      url "https://github.com/grpcmd/grpcmd/releases/download/v0.2.1/grpcmd_0.2.1_darwin_amd64.tar.gz"
      sha256 "e079568064f68bd950e211d5a4d188e4837f9e003457eab86a6fa6b08882b5dc"

      def install
        bin.install "grpc"
        (bash_completion/"grpc").write `#{bin}/grpc completion bash`
        (fish_completion/"grpc.fish").write `#{bin}/grpc completion fish`
        (zsh_completion/"_grpc").write `#{bin}/grpc completion zsh`
      end
    end
    on_arm do
      url "https://github.com/grpcmd/grpcmd/releases/download/v0.2.1/grpcmd_0.2.1_darwin_arm64.tar.gz"
      sha256 "c243c4c69b7b59a529a119634e1acd767c6a0d7ed9da11560f38779355487314"

      def install
        bin.install "grpc"
        (bash_completion/"grpc").write `#{bin}/grpc completion bash`
        (fish_completion/"grpc.fish").write `#{bin}/grpc completion fish`
        (zsh_completion/"_grpc").write `#{bin}/grpc completion zsh`
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/grpcmd/grpcmd/releases/download/v0.2.1/grpcmd_0.2.1_linux_amd64.tar.gz"
        sha256 "e7bffe5766b77d9211672d6b54f6977f0cf27dc24e23557e6555c333eda9372e"

        def install
          bin.install "grpc"
          (bash_completion/"grpc").write `#{bin}/grpc completion bash`
          (fish_completion/"grpc.fish").write `#{bin}/grpc completion fish`
          (zsh_completion/"_grpc").write `#{bin}/grpc completion zsh`
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/grpcmd/grpcmd/releases/download/v0.2.1/grpcmd_0.2.1_linux_arm64.tar.gz"
        sha256 "b4e9c99f1db84d0306dc6d3bea74429c0cce81e80949f7f2f8cbe41ae97b9392"

        def install
          bin.install "grpc"
          (bash_completion/"grpc").write `#{bin}/grpc completion bash`
          (fish_completion/"grpc.fish").write `#{bin}/grpc completion fish`
          (zsh_completion/"_grpc").write `#{bin}/grpc completion zsh`
        end
      end
    end
  end
end
