cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "1.36.0"
  sha256 arm:   "6e62cd4de60e2af67d5e3a1daa8a361f1a0c2a23695ec721a55fe27ce73e83f9",
         intel: "b7cb04db8077f5dd2269c0bd72ab5619076af2867925887d641d48f8638e2e65"

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
