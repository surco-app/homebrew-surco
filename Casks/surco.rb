cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "1.2.2"
  sha256 arm:   "e79eeaf90ba6cf524c4b3460ba93c25adb43e899df709c8e9a7fb7896dad6f97",
         intel: "59efb67c769bb7ba11245ef97b18ac155ab24b6205a1df83d9da0b00ff9ec605"

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
