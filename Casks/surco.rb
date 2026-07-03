cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.35.1"
  sha256 arm:   "34ae031f928e65e8b5daa5ca6aae7e6244c5f376d0caa8520e0db63c20516c32",
         intel: "1fa48067854f9a36c86a241d5fa93bde424d05b7272151f588fbfaddcc2c510f"

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
