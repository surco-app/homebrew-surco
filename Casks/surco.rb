cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.6.1"
  sha256 arm:   "f1076bb25db701c24502839ddd9aac2806dd186cdb27bec97377b61250df7872",
         intel: "2f88af728a755c09235f26f9652071e0ffcac436d421eecb71ab73a90ec26708"

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
