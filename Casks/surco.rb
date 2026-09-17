cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.98.2"
  sha256 arm:   "92a2ff3f8e3c82d91fc4431d2334b89c9d76c10eaaef958a1e4110f889a97206",
         intel: "1436cfbde949a8f4da3cd88708f11b9e48907a57be99279511d9f8c5adeaf8f9"

  url "https://github.com/surco-app/surco-releases/releases/download/v#{version}/Surco-#{version}-#{arch}.dmg"
  name "Surco"
  desc "Audio track organizer for DJs"
  homepage "https://github.com/surco-app/surco-releases"

  livecheck do
    url "https://github.com/surco-app/surco-releases"
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :big_sur

  app "Surco.app"

  zap trash: [
    "~/Library/Application Support/Surco",
    "~/Library/Caches/com.vigosan.surco",
    "~/Library/Caches/com.vigosan.surco.ShipIt",
    "~/Library/Logs/Surco",
    "~/Library/Preferences/com.vigosan.surco.plist",
    "~/Library/Saved Application State/com.vigosan.surco.savedState",
  ]
end
