cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "1.35.0"
  sha256 arm:   "6cb1dbe944602dfafffab1e129c6436440d55d340ee22cb1fb5f5e471a74e930",
         intel: "b2dfb4f03a40c0e0731be40a5799cc0d32dad0aa582f376fa4eb5d09f09c649c"

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
