*** Settings ***
Library     Email.ImapSmtp   


*** Variables ***
${GMAIL_ACCOUNT}        ACCOUNT_NAME
${GMAIL_PASSWORD}       ACCOUNT_PASSWORD
${RECIPIENT_ADDRESS}    RECIPIENT
# ${BODY_IMG1}            ${IMAGEDIR}${/}approved.png
# ${BODY_IMG2}            ${IMAGEDIR}${/}invoice.png
# ${EMAIL_BODY}     <h1>Heading</h1><p>Status: <img src='approved.png' alt='approved image'/></p>
# ...               <p>INVOICE: <img src='invoice.png' alt='invoice image'/></p>

*** Tasks ***
Sending email
    Authorize    account=shinebrightanytime@gmail.com  password=Shine@12345
    ...    smtp_server=smtp.gmail.com
    ...    imap_server=imap.gmail.com
    ...    smtp_port=587
    ...    imap_port=993
    Send Message  sender=shinebrightanytime@gmail.com
    ...           recipients=balaji0017@gmail.com
    ...           subject=Message from RPA Robot
    ...           body=RPA Robot message body
    ...    attachments=${EXECDIR}${/}TestData${/}data.json
    
TC2   
     Authorize    account=shinebrightanytime@gmail.com  password=Shine@12345
    ...    smtp_server=smtp.gmail.com
    ...    imap_server=imap.gmail.com
    ...    smtp_port=587
    ...    imap_port=993
    @{emails}      List Messages      SUBJECT "Critical"
    FOR  ${email}  IN  @{emails}
        Log  ${email}[Subject]
        Log  ${email}[From]

    END
# Sending HTML Email With Image
    # [Documentation]     Sending email with HTML content and attachment
    # Send Message
    # ...                 sender=${GMAIL_ACCOUNT}
    # ...                 recipients=${RECIPIENT_ADDRESS}
    # ...                 subject=HTML email with body images (2) plus one attachment
    # ...                 body=${EMAIL_BODY}
    # ...                 html=${TRUE}
    # ...                 images=${BODY_IMG1}, ${BODY_IMG2}
    # ...                 attachments=example.png