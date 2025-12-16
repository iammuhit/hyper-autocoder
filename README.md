## AutoCoder

AutoCoder is an advanced code generation tool designed to speed up the software development process by generating boilerplate code, templates, and other repetitive structures based on issues and predefined patterns.

### Features

- **Code Templates:** Jumpstart your projects with a variety of language-specific templates;
- **Customizable Generation:** Tailor the generated code to your specific needs by specifying your prompt as a GitHub Issue;
- **Integration Support:** Works as part of your CI/CD pipeline using workflows with GitHub Actions;

---

## Usage

You can use AutoCoder as a GitHub Action in your workflows to automatically generate code based on issues or predefined templates.

### 1. Add AutoCoder to Your Workflow

Create (or update) a workflow file in your repository, for example: `.github/workflows/autocoder.yml`

```yaml
name: AutoCoder Code Generation

on:
  issues:
    types: [opened, edited, labeled]

jobs:
  generate-code:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout repository
        uses: actions/checkout@v4

      - name: Run AutoCoder
        uses: iammuhit/hyper-autocoder@v1
        with:
          github_token: ${{ secrets.GITHUB_TOKEN }}
          openai_api_key: ${{ secrets.OPENAI_API_KEY }}
          # Optional: specify additional inputs if required by your action
```

### 2. Triggering Code Generation

- **By Issue:**  
  Open a new GitHub Issue in your repository and describe the code you want generated.  
  Example:
  ```
  Title: Generate REST API boilerplate for user management
  Body: Please generate a Python FastAPI project with CRUD endpoints for users.
  ```

- **By Label:**  
  You can configure the workflow to trigger only when issues are labeled with a specific label (e.g., `autocoder-bot`).

### 3. Customization

You can customize the action by providing additional inputs in the workflow file, such as:
- `github_repository`: Specify the repository where the action will be executed.
- `issue_label`: Only issues with this label will trigger the code generation process.

Example:
```yaml
      - name: Run AutoCoder with custom template
        uses: iammuhit/hyper-autocoder@v1
        with:
          github_token: ${{ secrets.GITHUB_TOKEN }}
          openai_api_key: ${{ secrets.OPENAI_API_KEY }}
          issue_label: 'autocoder-bot'
```

### 4. Example Workflow File

```yaml
name: AutoCoder Example

on:
  issues:
    types: [opened]

jobs:
  autocode:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: iammuhit/hyper-autocoder@v1
        with:
          github_token: ${{ secrets.GITHUB_TOKEN }}
          openai_api_key: ${{ secrets.OPENAI_API_KEY }}
          issue_label: 'autocoder-bot'
```

---

## Notes

- Make sure to replace `iammuhit/hyper-autocoder@v1` with the updated version of the AutoCoder action.
- The action requires a GitHub token for authentication. Use the default `${{ secrets.GITHUB_TOKEN }}` or a personal access token if needed.
- For more advanced usage and configuration, refer to the [documentation](./docs/USAGE.md) or the action's repository.

---

## Security

**Do not commit sensitive tokens or secrets in your repository.**  
Use GitHub Secrets to store authentication tokens and reference them in your workflow files.

---

## License

This project is licensed under the MIT License.
