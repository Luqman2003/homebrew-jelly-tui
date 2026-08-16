class JellyTui < Formula
  desc "Terminal Jellyfin client"
  homepage "https://github.com/Luqman2003/jelly-tui"
  url "https://github.com/Luqman2003/jelly-tui/releases/download/v1.1.1/jelly-tui-1.1.1.jar"
  sha256 "46941d53523cb1e91f700bfa55281f0e7d3ba3fd8ecf80651be96bf246ff55af"

  depends_on "openjdk@21"
  depends_on "mpv"

  def install
    libexec.install "jelly-tui-1.1.1.jar" => "jelly-tui.jar"
    (bin/"jelly-tui").write <<~EOS
      #!/bin/bash
      exec "#{Formula["openjdk@21"].opt_bin}/java" -jar "#{libexec}/jelly-tui.jar" ""
    EOS
  end
end
