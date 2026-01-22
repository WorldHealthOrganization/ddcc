const core = require('@actions/core');
const github = require('@actions/github');

/**
 * Safely add a label to a GitHub issue
 * This approach uses the GitHub API directly, avoiding all shell injection risks
 */
async function addIssueLabel() {
  try {
    const token = core.getInput('github-token');
    const repository = core.getInput('repository');
    const issueNumber = parseInt(core.getInput('issue-number'));
    const label = core.getInput('label');
    
    // Initialize GitHub API client
    const octokit = github.getOctokit(token);
    
    // Parse repository owner/name
    const [owner, repo] = repository.split('/');
    
    // Add label using GitHub API - completely safe from injection
    const response = await octokit.rest.issues.addLabels({
      owner,
      repo,
      issue_number: issueNumber,
      labels: [label]
    });
    
    console.log(`Label "${label}" added successfully to issue #${issueNumber}`);
    
  } catch (error) {
    core.setFailed(`Failed to add label: ${error.message}`);
  }
}

addIssueLabel();