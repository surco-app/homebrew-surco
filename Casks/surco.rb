cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "1.18.5"
  sha256 arm:   "294f5a1d7a48439f4769ccbb88a2ccf3d2c9f6647a5545bfd1a31bfcae5a1291",
         intel: "c67076682a4fd81933daf3d645a94295eef639d4ecf498ee2229f3af6e1ce047"

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
