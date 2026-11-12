cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "1.34.0"
  sha256 arm:   "6d5a79a940f925a92e6130e1abf869d0ddc053b79a43aa7eb8e8f4c3978cbfc5",
         intel: "c2823c3f125a4b53602b7893b235a320bf9ed43c1eb98982a21e7a34f84f87a4"

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
