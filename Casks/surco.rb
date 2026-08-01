cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.79.0"
  sha256 arm:   "424f3a8954e308a8e24e5b03fef5b14d8a8656e3d063afd35d97c9dd85e3dd10",
         intel: "5405bcea6d19966b74d5957d37dd0738db82b0adcf03bed28f9c44142008f6a4"

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
