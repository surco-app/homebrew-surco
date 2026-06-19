cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.18.2"
  sha256 arm:   "4c7ecd2a702195a3002782dd6251f00e9cd2cf5aed8b76e5f008590e82a71dea",
         intel: "d1317ab35928dfb4767981c26c393784ad0b747933023b5421bc38eca6d6e7a0"

  url "https://github.com/vigosan/surco-releases/releases/download/v#{version}/Surco-#{version}-#{arch}.dmg"
  name "Surco"
  desc "Audio track organizer for DJs"
  homepage "https://github.com/vigosan/surco-releases"

  auto_updates true
  depends_on macos: :big_sur

  app "Surco.app"

  zap trash: [
    "~/Library/Application Support/Surco",
    "~/Library/Logs/Surco",
    "~/Library/Preferences/com.vigosan.surco.plist",
    "~/Library/Saved Application State/com.vigosan.surco.savedState",
  ]
end
