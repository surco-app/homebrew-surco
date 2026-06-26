cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.24.0"
  sha256 arm:   "2f4d43df7e8e5b8dd3f7b418c20edb6ad8d498437cdc2e66382fb301c6c4f8f7",
         intel: "a2bc90c21a1afc61d89c393555da08b0c0616d076560307b3b387a1f587139b4"

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
