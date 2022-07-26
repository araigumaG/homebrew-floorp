cask "floorp" do
  version "10.2.0"
  sha256 "9a4abdd39ead06533ce5b0ba58690fbf00008aef05b6f164e9404332efa5cd3e"

  url "https://github.com/Floorp-Projects/Floorp/releases/download/v#{version}/floorp-macOS-Intel.dmg",
      verified: "github.com/Floorp-Projects"
  name "Floorp browser"
  desc "Firefox based browser with excellent privacy"
  homepage "https://floorp.ablaze.one/"

  # auto_updates true

  app "Floorp.app"

  zap trash: [
    # "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.floorp.sfl*",
    "~/Library/Application Support/Floorp",
    "~/Library/Caches/Floorp",
    "~/Library/Preferences/org.mozilla.floorp.plist",
  ]
end
