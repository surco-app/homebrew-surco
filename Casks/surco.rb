cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.2.1"
  sha256 arm:   "52798a79ebe589164d3fa410cff0d7adad94cb4ccaadd48510559a441d953040",
         intel: "865c7d61773644afb6cbce19e8606311f47e015326f77f0a120ffd38ecdc80a9"

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
