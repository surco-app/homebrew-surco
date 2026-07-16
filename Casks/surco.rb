cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.61.1"
  sha256 arm:   "262e5e5daf6556a199666e74a1c130b28d4d5472cf27ec7c07625842a5a6e2ca",
         intel: "e9ca9b4cc8c66d474dc7e468a9bded9210d534af13d4ac6ee54a42ea7571aa7d"

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
