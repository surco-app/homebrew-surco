cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.71.0"
  sha256 arm:   "3c9d19dc9920a8528cd0b4fe9b8c5947efe1314204fe75ed61da4aa983cb4c8a",
         intel: "b769ee6c3b1d9a62182620a9923080b865a7c9c6cecf739728f13115e996b412"

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
