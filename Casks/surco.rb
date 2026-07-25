cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.74.0"
  sha256 arm:   "f5e26c26981dc882f75b5ebad518ded3de059f9facf9bd226fc034aea463c12e",
         intel: "a519daee1f8461a58680b666f05580c4a6ba22e3fcba6f3f2a3d45fa4d353dfb"

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
