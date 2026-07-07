cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.38.1"
  sha256 arm:   "27443d982d9aaece55fbd7f676cf9d4c2e8467129ffc13e3d9ee64c2f661412f",
         intel: "a7724dafae8cbb40e86a7ebaa1c69ca140276fddf00099de5add98b349e1f56b"

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
