class Nextflow < Formula
  desc "Data-driven computational pipelines"
  homepage "https://www.nextflow.io/"
  # doi "10.6084/m9.figshare.1254958"
  # tag "bioinformatics"

  url "https://www.nextflow.io/releases/v0.23.3/nextflow"
  version "0.23.3"
  sha256 "ffe1c314962ff97ebf47b0567883e152522acfbf6fd5800200b1a7a0ca2896d2"
  head "https://github.com/nextflow-io/nextflow.git"

  bottle :unneeded

  depends_on :java => "1.7+"

  def install
    bin.install "nextflow"
  end

  test do
    system bin/"nextflow", "-download"
    output = pipe_output("#{bin}/nextflow -q run -", "println 'hello'").chomp
    assert_equal "hello", output
  end
end
