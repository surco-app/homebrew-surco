cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.26.0"
  sha256 arm:   "64d9c33266c2588f81f08d9de309eacaaf80f0397a5099052f0c217470b01e7e",
         intel: "8d77e569661e981a4bdb61e16c5acded39f8b6568dceda84532c9f06adf15135"

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
