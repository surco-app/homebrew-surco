cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.99.3"
  sha256 arm:   "61296546e0ec3ebc8f67162e1d45f7fdf712ac5e90402c0d009f7ad4716d1da6",
         intel: "7197c886b23d7321f0ed35bdc4d150cb1195a5bf9959d58a8898d72c4e8aba4b"

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
