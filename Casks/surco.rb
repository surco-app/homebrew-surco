cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.57.0"
  sha256 arm:   "fa01a9ca83edb0aeafa1459a8cf9598c85d59e0d94b03f2cf362ff0adf3962b9",
         intel: "b599f60ae8afbadf06fbec165390bdd9b3f8aab1883120bafc0601176f7f84fb"

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
