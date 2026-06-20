cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.20.1"
  sha256 arm:   "e50cd54e120f16620706c983f87b9cf0b4b43489953092325e7c489a17b92043",
         intel: "5e61ddadd5fd39ab2fc64c0a42fce4da0413dd90ff31f9a40fb18b0debf9c86e"

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
