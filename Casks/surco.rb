cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.67.0"
  sha256 arm:   "451a26ed7ddeb8de94e3c77b0a92833cfc14e895ca0c31d300a6867615a47949",
         intel: "e1fb34b53448f6ed6acc760b22d21bba67e0ef6d0b1ff61591ed405cb96929b2"

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
