cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.25.0"
  sha256 arm:   "477256f811fad4140c333de4a13fd723cbfff88679ad9cb55f55960d5e573002",
         intel: "af80a88f84a618e1303e664e6ef0a65f069cfedde3c8464e3122f29a8d80aed5"

  url "https://github.com/vigosan/surco-releases/releases/download/v#{version}/Surco-#{version}-#{arch}.dmg"
  name "Surco"
  desc "Audio track organizer for DJs"
  homepage "https://github.com/vigosan/surco-releases"

  auto_updates true
  depends_on macos: :big_sur

  app "Surco.app"

  zap trash: [
    "~/Library/Application Support/Surco",
    "~/Library/Logs/Surco",
    "~/Library/Preferences/com.vigosan.surco.plist",
    "~/Library/Saved Application State/com.vigosan.surco.savedState",
  ]
end
