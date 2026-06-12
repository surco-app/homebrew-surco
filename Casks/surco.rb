cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.12.0"
  sha256 arm:   "7be4ffa826a2a12ed731467222e97fd95a9745cb34eedcf507e21aae0d7b16f3",
         intel: "74fcdf2b5895580c095dc96bcefed7790a718d3cdc4488c5ba2fa511eda5cbc3"

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
