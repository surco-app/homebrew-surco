cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.14.1"
  sha256 arm:   "3047d7fdb0d197fcbb102284a7c257ed90791d98c717fc7ca4c90dce79a1451f",
         intel: "d8dbdee8d7b5f5d9a86b666749cc44b63203f234298e7d29030dcced5d623a69"

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
