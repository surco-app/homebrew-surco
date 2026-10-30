cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "1.18.0"
  sha256 arm:   "d8f2ba0c88c8ed6fb3f0f2a2d4e64b9d1d620b202e08ce8446ebbc10d6bde4a1",
         intel: "035093598453d34c4644f0aa10062035e00e9a5025b98f8309a18ca765956cd0"

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
