class G8n < Formula
  desc "Type-safe environment struct generator for Go"
  homepage "https://github.com/reglyph/g8n"
  url "https://github.com/reglyph/g8n/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "1d5feee7b6bfe35bbe5272c82e6c8ce9ce9faf4f647859b51a3848af33f7191a"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(output: bin/"g8n", ldflags: "-s -w -X main.ver=#{version}")
  end

  test do
    system "#{bin}/g8n", "-version"
  end
end