cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.19.0"
  sha256 arm:   "59a9732756863ad135249c5dff9892abc9adfea0941aca1222a4fe4035aed0d2",
         intel: "e961670a9d83b99215c955726ec89b56146eec19ace28d5ac7937902901b1420"

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
