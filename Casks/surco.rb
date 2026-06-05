cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.3.0"
  sha256 arm:   "d13486ff15a18db8333236887897d9300e59d7602844c167b936a6cf2254ad5f",
         intel: "860c9a693b91d812e6aad04ab19234e91715ef29c712069b713a51033c7033c9"

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
