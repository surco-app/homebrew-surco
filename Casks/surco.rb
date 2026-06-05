cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.3.1"
  sha256 arm:   "171f5726f54b7deb32935505026610c77cb50c173ac98fd56427c54a85a58051",
         intel: "f3be2635dc743a464552da1737c743426e89fe64408912f21fa74023372498aa"

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
