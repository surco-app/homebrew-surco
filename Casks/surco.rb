cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.23.0"
  sha256 arm:   "b1509da4ddc8dc529992fd8f24e82c9334b23c229fa17a77802b37bc23d0f7b5",
         intel: "e53e2fb17928d096f668c3f1932d28d50846571b38cde28ba294a12e288d2cd3"

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
