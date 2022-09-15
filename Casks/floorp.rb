cask "floorp" do
  version "10.3.0"
  sha256 "8ab291233091cbb1f9062c197dd4166fa2b96cc1f63fb224fcd007bb469df8b7"

  url "https://github.com/Floorp-Projects/Floorp/releases/download/v#{version}/floorp-macOS-Univerasal.dmg",
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
