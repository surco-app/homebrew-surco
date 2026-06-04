cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.1.11"
  sha256 arm:   "1999d7282a0c65210d148c95d531ff10e9eb48d738054d1ca011ca04ec26a943",
         intel: "e5bcbae95fb3772c97b3f3ceeb6476a69c4e6171246ddace054369eca4d6501e"

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
