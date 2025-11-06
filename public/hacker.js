;(() => {
  // Terminal cursor effect
  function addTerminalCursor() {
    const brand = document.querySelector(".navbar-brand")
    if (brand && !brand.querySelector(".cursor")) {
      const cursor = document.createElement("span")
      cursor.className = "cursor"
      cursor.textContent = "_"
      cursor.style.animation = "blink 1s infinite"
      brand.appendChild(cursor)
    }
  }

  // Matrix rain effect (optional, can be enabled)
  function createMatrixRain() {
    const canvas = document.createElement("canvas")
    canvas.id = "matrix-bg"
    canvas.style.position = "fixed"
    canvas.style.top = "0"
    canvas.style.left = "0"
    canvas.style.width = "100%"
    canvas.style.height = "100%"
    canvas.style.zIndex = "-1"
    canvas.style.opacity = "0.1"
    canvas.style.pointerEvents = "none"

    document.body.insertBefore(canvas, document.body.firstChild)

    const ctx = canvas.getContext("2d")
    canvas.width = window.innerWidth
    canvas.height = window.innerHeight

    const chars = "01アイウエオカキクケコサシスセソタチツテトナニヌネノハヒフヘホマミムメモヤユヨラリルレロワヲン"
    const fontSize = 14
    const columns = canvas.width / fontSize
    const drops = Array(Math.floor(columns)).fill(1)

    function draw() {
      ctx.fillStyle = "rgba(10, 14, 26, 0.05)"
      ctx.fillRect(0, 0, canvas.width, canvas.height)

      ctx.fillStyle = "#00ff88"
      ctx.font = fontSize + "px monospace"

      for (let i = 0; i < drops.length; i++) {
        const text = chars[Math.floor(Math.random() * chars.length)]
        ctx.fillText(text, i * fontSize, drops[i] * fontSize)

        if (drops[i] * fontSize > canvas.height && Math.random() > 0.975) {
          drops[i] = 0
        }
        drops[i]++
      }
    }

    setInterval(draw, 33)

    window.addEventListener("resize", () => {
      canvas.width = window.innerWidth
      canvas.height = window.innerHeight
    })
  }

  // Smooth scroll
  function initSmoothScroll() {
    document.querySelectorAll('a[href^="#"]').forEach((anchor) => {
      anchor.addEventListener("click", function (e) {
        const href = this.getAttribute("href")
        if (href !== "#") {
          e.preventDefault()
          const target = document.querySelector(href)
          if (target) {
            target.scrollIntoView({ behavior: "smooth" })
          }
        }
      })
    })
  }

  // Add typing effect to new posts
  function addTypingEffect() {
    const composer = document.querySelector('[component="composer"]')
    if (composer) {
      const textarea = composer.querySelector("textarea")
      if (textarea) {
        textarea.addEventListener("focus", function () {
          this.style.borderColor = "#00ff88"
          this.style.boxShadow = "0 0 20px rgba(0, 255, 136, 0.4)"
        })

        textarea.addEventListener("blur", function () {
          this.style.borderColor = ""
          this.style.boxShadow = ""
        })
      }
    }
  }

  // Notification sound (optional)
  function playNotificationSound() {
    // Create a simple beep sound using Web Audio API
    const audioContext = new (window.AudioContext || window.webkitAudioContext)()
    const oscillator = audioContext.createOscillator()
    const gainNode = audioContext.createGain()

    oscillator.connect(gainNode)
    gainNode.connect(audioContext.destination)

    oscillator.frequency.value = 800
    oscillator.type = "sine"

    gainNode.gain.setValueAtTime(0.3, audioContext.currentTime)
    gainNode.gain.exponentialRampToValueAtTime(0.01, audioContext.currentTime + 0.1)

    oscillator.start(audioContext.currentTime)
    oscillator.stop(audioContext.currentTime + 0.1)
  }

  // Initialize on page load
  function init() {
    addTerminalCursor()
    initSmoothScroll()
    addTypingEffect()

    // Uncomment to enable matrix rain effect
    // createMatrixRain();

    // Listen for new notifications
    window.addEventListener("action:notification.received", () => {
      // Uncomment to enable notification sound
      // playNotificationSound();
    })

    // Add glow effect to buttons on hover
    document.querySelectorAll(".btn").forEach((btn) => {
      btn.addEventListener("mouseenter", function () {
        this.style.transform = "translateY(-2px)"
      })

      btn.addEventListener("mouseleave", function () {
        this.style.transform = ""
      })
    })
  }

  // Wait for DOM and NodeBB to be ready
  if (document.readyState === "loading") {
    document.addEventListener("DOMContentLoaded", init)
  } else {
    init()
  }

  // Re-initialize on page navigation (for NodeBB's AJAX navigation)
  window.addEventListener("action:ajaxify.end", init)
})()
