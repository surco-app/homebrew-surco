cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.5.3"
  sha256 arm:   "340e01d0476c9f457ae188045a53036282c5b5c28687d8320d00193606205c86",
         intel: "d4941dee7ebb7b7b172d9d1cf785c5ebdc188b7b2457eabd052473cee64ececd"

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
