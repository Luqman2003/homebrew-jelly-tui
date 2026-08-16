class JellyTui < Formula
  desc "Terminal Jellyfin client"
  homepage "https://github.com/Luqman2003/jelly-tui"
  url "https://github.com/Luqman2003/jelly-tui/releases/download/v1.0.0/jelly-tui-1.0.0.jar"
  sha256 "f5c84927b82e01603bda612025df114f28f84d84d8d20e59fde7fe37afb5066d"

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