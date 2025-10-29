# Microsoft Clarity — Google Tag Manager Tag

This tag helps you easily connect **Microsoft Clarity** with your website using **Google Tag Manager (GTM)**.  
It lets you send user interaction data to Clarity, add custom events, custom tags and respect user consent automatically through **Google Consent Mode v2**.

<img width="860" height="1205" alt="image" src="https://github.com/user-attachments/assets/92996027-b2ea-483b-a482-aa37dd38cf8e" />


## What this tag does

This tag loads your Clarity project on your website and allows you to:

- Track how users interact with your site through Clarity.
- Send custom events (for example, logins, signups, or purchases).
- Add extra information about users or sessions to help you analyze behavior.
- Respect users’ cookie and privacy choices automatically.

---

## Clarity Project ID

Enter your **Clarity Project ID** here.  
You can find this ID in your [Microsoft Clarity dashboard](https://clarity.microsoft.com/).

Example:  
`44uxxx69x5`

This connects your website to the right project in Clarity.

---

## ⚙️ Advanced Options

### Add Custom Events
Use this option to send a **custom event** to Clarity each time the tag is triggered.  
You can name the event however you want, for example `login`, `signup`, or `purchase`.

This helps you see specific actions inside Clarity’s dashboard.

---

### Add Custom Tags
You can add **custom tags** (simple key–value pairs) that give more context to your sessions.  
Tags help you filter and group recordings later in Clarity.

Example:
- Key: `plan`
- Value: `premium`

So when a user is on the Premium plan, all their recordings will include this tag in Clarity.

---

### Add Custom Identifiers
If you want to link sessions to a specific user, page, or session ID, you can use this section.  
These identifiers make it easier to find relevant sessions, especially for testing or logged-in users.

| Field | Example | Description |
|--------|----------|-------------|
| **User ID** | `monakane@contoso.com` | Identifies the user (can be anonymized) |
| **Session ID** | `custom-session-123` | Identifies a specific visit or session |
| **Page ID** | `custom-page-123` | Identifies a specific page or area |
| **Friendly Name** | `Mona` | Optional nickname or label |

*(Note: Avoid sending personally identifiable information unless it’s anonymized.)*

---

## Privacy Settings

### Specify if cookies should be set
This setting controls how Clarity handles cookies and user consent.

#### 🧠 Option 1: **Consent Mode**
Choose this if your site uses **Google Consent Mode v2**.  
Clarity will automatically follow the user’s consent choices for:
- **Analytics cookies**
- **Advertising cookies**

This means Clarity will only record sessions or set cookies once the user has given consent.

#### ✋ Option 2: **Custom Consent Values**
If you manage consent manually (not through Google), you can set the preferences yourself:
- **Analytics (analytics_storage)** → granted / denied  
- **Advertising (ad_storage)** → granted / denied  

This option gives you full manual control.

---

## 🎯 More Settings

### Prioritize specific sessions for recording
If you only want Clarity to record certain important sessions (for example, after a button click or form submission), you can use this option.

You can write the reason or event name (for example: `button click`, `checkout`), and those sessions will be marked as high priority for recording in Clarity.

---

## 💡 How to use it in GTM

1. Go to **Tags → New → Tag Configuration → Microsoft Clarity (Luratic)**  
2. Enter your **Clarity Project ID**.  
3. (Optional) Enable **Advanced Options** to send events, tags, or identifiers.  
4. Under **Privacy**, choose whether to use **Consent Mode** or your own consent settings.  
5. Choose a **Trigger** (for example, “All Pages” or a specific event).  
6. Save and publish your container.

---


## Need support

- [Brais Calvo](https://www.linkedin.com/in/braiscalvo/)  
- [Txema Sánchez](https://www.linkedin.com/in/txemasm/)  
