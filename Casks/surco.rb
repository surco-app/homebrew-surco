cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.61.3"
  sha256 arm:   "8b909d54e756d4026c38c1d5f2459d3e28cdd193ffbe07ec5e86d27e08aa31f9",
         intel: "97523cba6ae2213730001c34c4aebcb7dd89fc6cf56633c5ee082dd32044bca4"

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
