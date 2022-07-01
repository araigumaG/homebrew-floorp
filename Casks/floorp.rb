cask "floorp" do
  version "10.1.0"
  sha256 "39789255fe2fd3ab472f9af5d240246baf37e498697e472774138bf5da082502"

  url "https://github.com/Floorp-Projects/Floorp/releases/download/v#{version}/floorp-macOS-Intel.dmg",
      verified: "github.com/Floorp-Projects"
  name "Floorp browser"
  desc "Firefox based browser with excellent privacy"
  homepage "https://floorp.ablaze.one/"

  auto_updates true

  app "Floorp.app"

  zap trash: [
    # "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.floorp.sfl*",
    "~/Library/Application Support/Floorp",
    "~/Library/Caches/Floorp",
    "~/Library/Preferences/org.mozilla.floorp.plist",
  ]
end
