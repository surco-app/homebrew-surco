cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.99.4"
  sha256 arm:   "3533f95dbd736272f45d3de26bf6aa8f8c5da21b07696933ba2d8a94f98d52fc",
         intel: "ad3124e39c616b4cb8dc311f8063730982f3adfe8f06f3faefe529a155cb1673"

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
