cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.8.0"
  sha256 arm:   "7d8521a873e2845e15ee5777daf98c98d899c79b87638be52ba33b12323d03e9",
         intel: "0641576803cee3aeff8d3fa3cdb11ea5d966e1603ebe380c1f642d190a438e30"

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
