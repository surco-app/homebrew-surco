cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.95.3"
  sha256 arm:   "922055604d72196e8ae7d8a63550ae76d54e28d48672e31beb663458bf6a958f",
         intel: "2e4f2343fe37cbc38c6a7974dd8b6c77eca2c5b37eeade7d1537f3e9b8d9e820"

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
