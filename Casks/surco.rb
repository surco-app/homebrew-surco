cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1"
  sha256 arm:   "4d33254fb842caba60f7f0d61687bbdfc9f9f86f0351c4a508eb0f41bb7eb030",
         intel: "9fc2febd313f1693a7489bfe5e33cf1c2b0d40562047a71e87b9e7c8edff0458"

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
