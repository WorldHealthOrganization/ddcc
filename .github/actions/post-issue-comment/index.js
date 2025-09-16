const core = require('@actions/core');
const github = require('@actions/github');
const fs = require('fs');

/**
 * Safely post a comment to a GitHub issue
 * This approach uses the GitHub API directly, avoiding all shell injection risks
 */
async function postIssueComment() {
  try {
    const token = core.getInput('github-token');
    const repository = core.getInput('repository');
    const issueNumber = parseInt(core.getInput('issue-number'));
    const jsonFilePath = core.getInput('json-file-path');
    
    // Initialize GitHub API client
    const octokit = github.getOctokit(token);
    
    // Parse repository owner/name
    const [owner, repo] = repository.split('/');
    
    // Read JSON file content safely
    const jsonContent = fs.readFileSync(jsonFilePath, 'utf8');
    
    // Create comment body with proper escaping
    const commentBody = `publication-request.json created in the branch [release-candidate](https://github.com/${repository}/blob/release-candidate/publication-request.json) with this content:

\`\`\`json
${jsonContent}
\`\`\``;
    
    // Post comment using GitHub API - completely safe from injection
    const response = await octokit.rest.issues.createComment({
      owner,
      repo,
      issue_number: issueNumber,
      body: commentBody
    });
    
    console.log(`Comment posted successfully: ${response.data.html_url}`);
    
  } catch (error) {
    core.setFailed(`Failed to post comment: ${error.message}`);
  }
}

postIssueComment();