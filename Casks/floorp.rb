cask "floorp" do
  version "10.5.0"
  sha256 "4f921b2f9f54bd65f6715bc8aeb4234b91ff3201b2db824337c231b7bcacd91f"

  # url "https://github.com/Floorp-Projects/Floorp/releases/download/v#{version}/floorp-macOS-Univerasal.dmg",
  url "https://github.com/Floorp-Projects/Floorp/releases/download/Pre2-v10.5.0/floorp-macOS-Univerasal.dmg", #this url is just for specific version (10.5.0)!
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
