cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.94.1"
  sha256 arm:   "31403fe278c952e04738cc63f35b4fb6916bd2f40ac43ce58d45567d4c28e302",
         intel: "9d4ab96086f2d6e6d769a0cf103edd5c55b0f51c4cbd8b7e7234795dc588f25c"

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
