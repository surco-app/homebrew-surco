cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "1.45.0"
  sha256 arm:   "dba7de9f156e105cc63d74c125ad96cb3e5c4ca2be467359bacadef28c3b9502",
         intel: "15546e21a7d040af58aa9d4d4ca43d4eb5e4f11959e15e95003b8df3f70fe328"

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
