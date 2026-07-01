cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.30.0"
  sha256 arm:   "9a7e7af22c2105cf81a4f70cfb01fe7f420eaa0d10a0309eb9b88e3daa296fae",
         intel: "39e705eaf820684a8d3a05d76b747040dd0c7fe5395fc2a1b77e3d7219759bf8"

  url "https://github.com/vigosan/surco-releases/releases/download/v#{version}/Surco-#{version}-#{arch}.dmg"
  name "Surco"
  desc "Audio track organizer for DJs"
  homepage "https://github.com/vigosan/surco-releases"

  auto_updates true
  depends_on macos: :big_sur

  app "Surco.app"

  zap trash: [
    "~/Library/Application Support/Surco",
    "~/Library/Logs/Surco",
    "~/Library/Preferences/com.vigosan.surco.plist",
    "~/Library/Saved Application State/com.vigosan.surco.savedState",
  ]
end
