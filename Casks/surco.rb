cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.5.2"
  sha256 arm:   "7fbf4ba79425a92e496fa6437fcbc1f5d7cae7069f88bcced770ca25922342b4",
         intel: "35045670056d9092ee2f86ffaf550e5f7a1fac8ec4c5c83455beac7e9aed5810"

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
