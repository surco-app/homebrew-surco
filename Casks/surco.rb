cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.61.0"
  sha256 arm:   "0ccb84b07993851c8f7b465bf3663d6349ccd981e4a7f9cb98f9a692f50b1a89",
         intel: "35e265e3a3bddf9ca374fa6dd112d7cbf22c5a3b346668d5a191eb9f1b5dee8f"

  url "https://github.com/surco-app/surco-releases/releases/download/v#{version}/Surco-#{version}-#{arch}.dmg"
  name "Surco"
  desc "Audio track organizer for DJs"
  homepage "https://github.com/surco-app/surco-releases"

  livecheck do
    url "https://github.com/surco-app/surco-releases"
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :big_sur

  app "Surco.app"

  zap trash: [
    "~/Library/Application Support/Surco",
    "~/Library/Caches/com.vigosan.surco",
    "~/Library/Caches/com.vigosan.surco.ShipIt",
    "~/Library/Logs/Surco",
    "~/Library/Preferences/com.vigosan.surco.plist",
    "~/Library/Saved Application State/com.vigosan.surco.savedState",
  ]
end
