cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.99.2"
  sha256 arm:   "7c98946a026a3fa155243aa2aac048e6cd9711ec1b1e97cf5fcf3e01eaccb429",
         intel: "6f640c3b374ebdc8d2d00b65dd207a28bb804aab6bad88456ed3ebb73daaaaf6"

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
