cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "1.4.0"
  sha256 arm:   "3ab8e97b1c7c5c05ed2509d296e94ad2a5a840b68ce92e9d2a45634f2b4c35af",
         intel: "709197a57b9f8b274b32e58c993a4145f90fa66ef26c5e5890a14e4531f41f6a"

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
