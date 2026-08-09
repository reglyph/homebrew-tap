class G8n < Formula
  desc "Type-safe environment struct generator for Go"
  homepage "https://github.com/reglyph/g8n"
  url "https://github.com/reglyph/g8n/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(output: bin/"g8n", ldflags: "-s -w -X main.ver=#{version}")
  end

  test do
    system "#{bin}/g8n", "-version"
  end
end