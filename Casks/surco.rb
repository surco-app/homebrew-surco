cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.86.7"
  sha256 arm:   "d7fd2a661c0e6af25de4b8e5a6aaefb8df3db3ae59d21cf54d4e0336813b79fd",
         intel: "a866eabdc4a833bd180ba27cb6031bcd95f339a2592a11574ded4678c47f7819"

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
