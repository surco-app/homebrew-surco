cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.2.2"
  sha256 arm:   "7731237e4968d5c321a24c5b16c2e7d52e800fc6d0b6382b6d8cb89354fea996",
         intel: "468c76a9126e2ef17debb07fceda7fe7f221082d2fc84522a7e9e6d047ecd3ec"

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
