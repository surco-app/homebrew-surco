cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.22.1"
  sha256 arm:   "f2c173a542c7f3ddd478284875a40d717e77b2b9c152faeeb8fa77116822eed0",
         intel: "ec8a07b226f18ea86a6275d8f888f380afbbe1fcc0884be25d2072870f42694e"

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
