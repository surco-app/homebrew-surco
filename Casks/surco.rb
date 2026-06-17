cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.16.0"
  sha256 arm:   "ba06fb8f345b6dbd1c41a4df8e40ef362f1a172a013968aef1945ac1fb8002f4",
         intel: "f8b402526d890c256a07ead9b4240ae5d05b30b88b83146924325d2d622019ad"

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
