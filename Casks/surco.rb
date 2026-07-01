cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.28.1"
  sha256 arm:   "c031c0401234118d0de3d02b0bda881fc11e91d9a4ffc176d2e8a631e246cfa2",
         intel: "aff34a42ab5a54a52191d9892ff3126efdc71ee2a20991fd8bc312b61c292397"

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
