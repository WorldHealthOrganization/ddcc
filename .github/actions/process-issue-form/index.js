const core = require('@actions/core');

/**
 * Safely extract form data from GitHub issue body using regex patterns
 * This approach is immune to shell injection since no shell commands are executed
 */
function extractFormData() {
  try {
    const issueBody = core.getInput('issue-body');
    const githubRepository = core.getInput('github-repository');
    
    // Define extraction patterns for each field
    const patterns = {
      mode: /^### Release Mode\s*\n(.*?)(?=\n### |$)/m,
      status: /^### Release Status\s*\n(.*?)(?=\n### |$)/m,
      sequence: /^### Sequence Name\s*\n(.*?)(?=\n### |$)/m,
      description: /^### Description of the Release\s*\n(.*?)(?=\n### |$)/m,
      changes: /^### Link to Changes\s*\n(.*?)(?=\n### |$)/m,
      title: /^### Title \(for first release only\)\s*\n(.*?)(?=\n### |$)/m,
      category: /^### Category \(for first release only\)\s*\n(.*?)(?=\n### |$)/m,
      introduction: /^### Introduction \(for first release only\)\s*\n(.*?)(?=\n### |$)/m
    };
    
    // Extract each field safely
    const extractedData = {};
    for (const [key, pattern] of Object.entries(patterns)) {
      const match = issueBody.match(pattern);
      extractedData[key] = match ? match[1].trim() : '';
    }
    
    // Check if this is a first release
    const firstRelease = issueBody.includes('Yes, this is the first release') ? 'true' : 'false';
    extractedData['first-release'] = firstRelease;
    
    // Generate CI build URL
    const ciBuildUrl = `http://worldhealthorganization.github.io/${githubRepository}`;
    extractedData['ci-build-url'] = ciBuildUrl;
    
    // Set outputs - these are safe since they're set via the GitHub Actions API
    for (const [key, value] of Object.entries(extractedData)) {
      core.setOutput(key, value);
      console.log(`${key}: ${value}`);
    }
    
    console.log('Form data extracted successfully');
    
  } catch (error) {
    core.setFailed(`Action failed with error: ${error.message}`);
  }
}

extractFormData();