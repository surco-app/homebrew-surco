cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.49.1"
  sha256 arm:   "3d87f77cbb45a82ebfd523986c584e1d9ff5d572873a9b3f3e71e6ef94b17477",
         intel: "6f6d9a1f726eabd4e89d557a2f7d1a80cbf4d738b312ed1bc509695d7fa8ce39"

  url "https://github.com/vigosan/surco-releases/releases/download/v#{version}/Surco-#{version}-#{arch}.dmg"
  name "Surco"
  desc "Audio track organizer for DJs"
  homepage "https://github.com/vigosan/surco-releases"

  livecheck do
    url "https://github.com/vigosan/surco-releases"
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
