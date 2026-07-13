cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.53.0"
  sha256 arm:   "c0595851ce89a453bbb59e8fadc99b843a7919dfe09330faeea1598b179c91ec",
         intel: "e5eeb20bbb26e82748f8b5b7c9730ffacaac3aa6f3ddd93ceb3ff7e04447262c"

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
