cask "underlings" do
  version "1.2.1"
  sha256 "91c429e57181c6b326d85f535d13ae53e32dab25ef7b435e17a85f5e04aa4abd"

  url "https://github.com/TheNightProject/underlings/releases/download/v#{version}/Underlings-#{version}-arm64.zip",
      verified: "github.com/TheNightProject/underlings/"
  name "Underlings"
  desc "Merge requests, tickets and a team of Claude Code agents in a little 3D office"
  homepage "https://github.com/TheNightProject/underlings"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64

  app "Underlings.app"

  # The app is not notarised by Apple yet, so macOS would refuse to open it while it is quarantined.
  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/Underlings.app"]
  end

  uninstall quit: "com.thenightproject.underlings"

  zap trash: [
    "~/.config/underlings",
    "~/.local/state/underlings",
    "~/Library/Application Support/Underlings",
    "~/Library/Logs/Underlings",
  ]

  caveats <<~EOS
    Underlings runs every agent as Claude Code on your account, so install Claude Code and sign in:
      claude auth login
  EOS
end
