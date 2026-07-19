cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.63.4"
  sha256 arm:   "b054f9c73738d585eab5ab641245307e284cf4f9b995ddb9bd2678c78f27ce00",
         intel: "0b3aea78baef5c384b8125756acb7e8defdd8d76dd19e98f145fbea6c5ddc6f8"

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
