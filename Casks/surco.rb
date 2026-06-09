cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.7.0"
  sha256 arm:   "61283435c1c2aa16a93758705965be3aea8fe584a8cf00a0cdfa003110f1fcaf",
         intel: "1227ed4148e82c012df6edea111b76376ba7f0ce6f6b1623dcfd14cc623f4c46"

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
