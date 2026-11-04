cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "1.23.0"
  sha256 arm:   "ae7bc5a131e4c10c4359c480a3e134a44c4f3efe9b40dd3fab6be3f12ac2c2ae",
         intel: "dfce4a1707be6b80f39730cc3fde9abce5a1bf7dba3d537fae0f637986beac34"

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
