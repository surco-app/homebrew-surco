cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "1.11.2"
  sha256 arm:   "39ff8c4cc39592f422869c64f4577809e097ee3c20e995c72c2dc81eb7ce3d35",
         intel: "a6da9470ee85003ddac179b977883ed91f4990fc4ea5e15f51b5fe111a10a56b"

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
