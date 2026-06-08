cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.6.2"
  sha256 arm:   "5fba29c22868482ff02a13974c333b1eb2df931a3006b3bf47ab4778ec32f3d8",
         intel: "54375605274560f48bcae4e206fd79e3a2a94d6bce239034df58d7e2cf861517"

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
