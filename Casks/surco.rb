cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.75.2"
  sha256 arm:   "3d2344a0936659ceebfd4f9d064ef6e14d74a3374db0a72b9460e3fd40b32194",
         intel: "20b1b3d4887b73e442636d3a954a7f8d30b4726c53b1cfb975e01b80c126bd82"

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
