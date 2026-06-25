import re
import sys

def main():
    try:
        with open('index.html', 'r', encoding='utf-8') as f:
            idx = f.read()

        with open('destination.html', 'r', encoding='utf-8') as f:
            dest = f.read()

        # Extract pieces from index.html
        head_match = re.search(r'<head>.*?</head>', idx, re.DOTALL)
        if not head_match: return
        head = head_match.group(0)

        nav_match = re.search(r'<!-- NAVBAR OVERLAY -->.*?<!-- MODERN NAVBAR END -->', idx, re.DOTALL)
        if nav_match:
            nav = nav_match.group(0)
        else:
            nav_match = re.search(r'<nav class="modern-navbar.*?</nav>\s*<div class="nav-overlay.*?></div>', idx, re.DOTALL)
            if not nav_match:
                nav_match = re.search(r'<nav class="modern-navbar.*?</script>\s*<!-- MODERN NAVBAR END -->', idx, re.DOTALL)
            nav = nav_match.group(0) if nav_match else ""

        wa_match = re.search(r'<!-- ============================================================\s*WHATSAPP CTA.*?<!-- WHATSAPP END -->', idx, re.DOTALL)
        wa = wa_match.group(0) if wa_match else ""

        foot_match = re.search(r'<!-- ============================================================\s*FOOTER.*?<!-- FOOTER END -->', idx, re.DOTALL)
        if foot_match:
            foot = foot_match.group(0)
        else:
            foot_match = re.search(r'<!-- ============================================================\s*FOOTER.*', idx, re.DOTALL)
            foot = foot_match.group(0).split('<!-- loader -->')[0] if foot_match else ""

        # Update destination.html
        # Replace head
        dest = re.sub(r'<head>.*?</head>', head, dest, flags=re.DOTALL)

        # Replace navbar
        dest = re.sub(r'<!-- MODERN NAVBAR START -->.*?<!-- MODERN NAVBAR END -->', nav, dest, flags=re.DOTALL)

        # Replace Whatsapp
        dest = re.sub(r'<!-- Whatsapp code start -->.*?<!-- Whatsapp code end -->', wa, dest, flags=re.DOTALL)

        # Replace Footer
        dest = re.sub(r'<!-- Footer start -->.*?<!-- FOOTER code fully end here -->', foot, dest, flags=re.DOTALL)

        # Remove the inline background from the body tag
        dest = re.sub(r'<body[^>]*>', '<body>\n<!-- NAVBAR OVERLAY -->\n<div class="nav-overlay" id="nav-overlay"></div>', dest, count=1)

        # Update the cards to use the new dest-card style
        # From: <div class="project-wrap mouse-animate"> ... <a href="wa.me..." class="img" style="background-image: url(images/mirissa.jpg);" target="_blank"> ... <div class="text p-4"> <h3><a href="#">Mirissa</a></h3> <p class="location">...</p> <p>...</p> <ul>...</ul> </div> </div>
        # To: dest-card format.
        
        # We will write out the modified file
        with open('destination.html', 'w', encoding='utf-8') as f:
            f.write(dest)
            
        print("Successfully updated destination.html!")
    except Exception as e:
        print(f"Error: {e}")

if __name__ == "__main__":
    main()
