cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.33.1"
  sha256 arm:   "c56d3b529e7943c3871348d9417a4db6f34dec1cd49c98ca542f1fb0870c3685",
         intel: "d540be66bcc7863bbb62ff6a950dc2e7ab9c36f2818a58adb298a512ab2d19d5"

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
