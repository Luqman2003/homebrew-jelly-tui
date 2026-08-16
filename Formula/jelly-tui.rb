class JellyTui < Formula
  desc "Terminal Jellyfin client"
  homepage "https://github.com/Luqman2003/jelly-tui"
  url "https://github.com/Luqman2003/jelly-tui/releases/download/v1.0.0/jelly-tui-1.0.0.jar"
  sha256 "c4e64c5a50dbfabbaee4fe1a802a78f05657b83301066725b7b4434911fdac03"

  depends_on "openjdk@21"
  depends_on "mpv"

  def install
    libexec.install "jelly-tui-1.0.0.jar" => "jelly-tui.jar"
    (bin/"jelly-tui").write <<~EOS
      #!/bin/bash
      exec "#{Formula["openjdk@21"].opt_bin}/java" -jar "#{libexec}/jelly-tui.jar" "$@"
    EOS
  end
end