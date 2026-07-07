cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.38.2"
  sha256 arm:   "7c9a9129cac7c74348f554b35b0b36061d2511aafeb87a17c2baeabc7d4281ed",
         intel: "e62fcee9a8c8d547fe719d7008a1b1486cd6dd18fbd86ccc450760b59853e877"

  url "https://github.com/vigosan/surco-releases/releases/download/v#{version}/Surco-#{version}-#{arch}.dmg"
  name "Surco"
  desc "Audio track organizer for DJs"
  homepage "https://github.com/vigosan/surco-releases"

  livecheck do
    url "https://github.com/vigosan/surco-releases"
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
