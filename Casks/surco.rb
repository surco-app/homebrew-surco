cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.15.0"
  sha256 arm:   "4cce80c929ff1978cbac9fda2b83541f960714ccae336b2b77ab9cbd19b11a28",
         intel: "44d1124f4c4397b8ce5e9550f8233052edca00ac80779153ea972be61bb73b2b"

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
