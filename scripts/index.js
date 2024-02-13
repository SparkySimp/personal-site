// Set Bootstrap dark/light mode
// according to the browser's preference
document.onload = function(e) {
    if (window.matchMedia('(prefers-color-scheme: dark)').matches) {
        // set the data-bs-theme attribute to dark
        document.documentElement.setAttribute('data-bs-theme', 'dark');
    } else {
        // set the data-bs-theme attribute to light
        document.documentElement.setAttribute('data-bs-theme', 'light');
    }
}

