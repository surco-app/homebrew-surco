cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.34.0"
  sha256 arm:   "a2f9ce232778769e7da21366b0a2f1f5ebe723166ceb907c914c8be74c43437b",
         intel: "6379b653605cbcb7b248316270b5dbd33f39ac72fba2c2b47051efc2104c40b1"

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
