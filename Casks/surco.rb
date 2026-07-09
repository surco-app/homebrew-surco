cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.43.1"
  sha256 arm:   "d7bb9dcfbecc88ffa1e66cebcceeff3698b9350eb55a9a28fab03dc40f5f025c",
         intel: "f75a74a7277b08cbd34c43bd75e84a551cda71c3329738d2e8bf795839dd0551"

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
