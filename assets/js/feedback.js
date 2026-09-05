document.addEventListener("DOMContentLoaded", function () {
    const configElement = document.getElementById("feedback-config");
    if (!configElement) return; // Ensure the config exists before proceeding
  
    const feedbackOptions = JSON.parse(configElement.dataset.feedbackOptions || "[]");
  
    // If no feedback options exist, do nothing
    if (feedbackOptions.length === 0) return;
  
    // Select all headings with an ID
    document.querySelectorAll("h1[id], h2[id], h3[id], h4[id], h5[id], h6[id]").forEach(heading => {
        const sectionId = heading.id;
        const sectionName = heading.textContent.trim();
  
        // Create feedback button
        const feedbackButton = document.createElement("span");
        feedbackButton.textContent = " Feedback ";
        feedbackButton.classList.add("feedback");
        feedbackButton.style.cursor = "pointer";
        feedbackButton.style.marginLeft = "10px";
        feedbackButton.style.position = "relative";
  
        // Create the dropdown container
        const dropdown = document.createElement("div");
        dropdown.classList.add("feedback-dropdown");
        dropdown.style.position = "absolute";
        dropdown.style.background = "white";
        dropdown.style.border = "1px solid #ccc";
        dropdown.style.padding = "5px";
        dropdown.style.display = "none";
        dropdown.style.boxShadow = "2px 2px 5px rgba(0,0,0,0.2)";
        dropdown.style.zIndex = "1000";
        dropdown.style.minWidth = "150px";
  
        // Generate feedback options dynamically
        feedbackOptions.forEach(option => {
            let feedbackUrl = option.form;
            let feedbackLabel = option.type;
  
            // Prepare parameters
            const separator = feedbackUrl.includes("?") ? "&" : "?";
            const params = [];
  
            if (option.sectionid) {
                params.push(`${option.sectionid}=${encodeURIComponent(sectionName)}`);
            }
            if (option.pageid) {
                params.push(`${option.pageid}=${encodeURIComponent(document.title)}`);
            }
  
            // Append parameters to the URL
            if (params.length > 0) {
                feedbackUrl += separator + params.join("&");
            }
  
            // Create feedback menu item
            const feedbackOption = document.createElement("a");
            feedbackOption.href = feedbackUrl;
            feedbackOption.target = "_blank";
            feedbackOption.innerText = feedbackLabel;
            feedbackOption.style.display = "block";
            feedbackOption.style.padding = "5px";
            feedbackOption.style.textDecoration = "none";
            feedbackOption.style.color = "black";
  
            dropdown.appendChild(feedbackOption);
        });
  
        // Toggle dropdown visibility
        feedbackButton.addEventListener("click", function (event) {
            event.stopPropagation();
            dropdown.style.display = dropdown.style.display === "block" ? "none" : "block";
        });
  
        // Hide dropdown when clicking elsewhere
        document.addEventListener("click", function () {
            dropdown.style.display = "none";
        });
  
        // Append dropdown to feedback button and button to heading
        feedbackButton.appendChild(dropdown);
        heading.appendChild(feedbackButton);
    });
  });
  