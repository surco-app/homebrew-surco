cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.31.0"
  sha256 arm:   "8510197b56cdee7a04968efa94a8f176ac0b46d965311720d42d408d4891f3df",
         intel: "6b361b2d86af578390a1adeb079795d7793075a6381ce9557ca966cf325d6881"

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
