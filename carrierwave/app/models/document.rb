require "virus_scanner"

class Document < ActiveRecord::Base
  mount_uploader :attachment, AttachmentUploader

  def store_attachment!
    super()
    response = ::VirusScanner::File.scan_url(id,
      'http://fineprintnyc.com/images/blog/history-of-logos/google/google-logo.png')
  end
end
