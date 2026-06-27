cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.24.1"
  sha256 arm:   "f6c7fc7dd58fc599fc523bcd704a2ec0385d6eef6d2efeda89da6e7f9d3ac34e",
         intel: "a20d660872b132b9a834af7f96bf3dc5ec5cfa54968a5eefe7f909c215d9228e"

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
