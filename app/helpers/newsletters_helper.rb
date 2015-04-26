module NewslettersHelper
  def image_block(image, message)
    image_block = '<table align="right"border="0" cellpadding="0"cellspacing="0" class="mcnCaptionBottomContent"style="border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;"width="282"><tbody><tr><td align="center" class="mcnCaptionBottomImageContent"style="padding: 0 9px 9px 9px;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;"valign="top"><img alt=""class="mcnImage" src="' + image + '"style="max-width: 720px;border: 0;outline: none;text-decoration: none;-ms-interpolation-mode: bicubic;vertical-align: bottom;"width="264"></td></tr><tr><td class="mcnTextContent"style="padding: 0 9px 0 9px;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #606060;font-family: Helvetica;font-size: 11px;line-height: 125%;text-align: left;"valign="top"width="264"><span style="line-height:20.7999992370605px">' + message + '</span></td></tr></tbody></table>'
    return image_block
  end

  def table_row(images)
    table_row = '<table border="0" cellpadding="0"cellspacing="0" class="mcnCaptionBlock"style="border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;"width="100%"><tbody class="mcnCaptionBlockOuter"><tr><td class="mcnCaptionBlockInner" style="padding: 9px;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;"valign="top">' + images + '</td></tr></tbody></table>'
    return table_row
  end
end
