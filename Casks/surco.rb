cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.84.2"
  sha256 arm:   "be111e53220a6716f218242eb80de2e3668386c737dadd6721325cba6cb72e4c",
         intel: "1c5a2ab5f30fb053f9127a734006cddd38c5ebe79580e14ebe51d5f8b3cfbeb9"

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
