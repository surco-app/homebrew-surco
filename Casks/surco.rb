cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.76.2"
  sha256 arm:   "963447b460b0fa51ace5abbaac404a15a7ab17cae4eb13777dbd122d6636f1d0",
         intel: "b19cf91dd0e52c1135aea46e4d1ce37df7353f92792bfd838eb1e49e3f07ab92"

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
