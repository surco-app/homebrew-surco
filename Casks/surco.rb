cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "1.33.0"
  sha256 arm:   "bd1b17ad7e5e20f502582db50ccb888f1f81dea551cb925fd7425ed94c0d6661",
         intel: "c9dae16c886c4872601fed73603301de4b66ae5fc9a0e75e22f5eac4f0685cda"

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
