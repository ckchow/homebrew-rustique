class Rustique < Formula
  desc "Vintage Story mod manager in rust"
  homepage "https://github.com/Tekunogosu/Rustique"
  url "https://github.com/Tekunogosu/Rustique/archive/refs/tags/v0.5.9.tar.gz"
  sha256 "ce450a649032e4c13e966619ffeec85029514cb72e02767d71d3532b49973133"
  license "MIT"

  depends_on "rustup" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test rustique`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system bin/"program", "do", "something"`.
    system bin/rustique, help
  end
end
