// Add motion only when the user permits it. HTML stays readable without this script.
if (!window.matchMedia('(prefers-reduced-motion: reduce)').matches) {
  document.documentElement.classList.add('motion');
  const observer = new IntersectionObserver((entries) => {
    for (const entry of entries) {
      if (entry.isIntersecting) {
        entry.target.classList.add('visible');
        observer.unobserve(entry.target);
      }
    }
  }, { threshold: 0.15 });
  document.querySelectorAll('.reveal, .tagline h2 span').forEach((element) => observer.observe(element));
}
