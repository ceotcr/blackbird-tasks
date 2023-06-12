# Create React App
npx create-react-app blackbird-tasks

# Commit to Git
cd blackbird-tasks
git init # it was already initialized
git add .
git commit -m "Init"

# Create a new repo on GitHub
gh repo create blackbird-tasks --public

# Add remote 
git remote add origin https://github.com/ceotcr/blackbird-tasks

# Push to GitHub
git branch -M main
git push origin main

# Create a new branch
git checkout -b update_logo

# Replace Logo
curl -o src/logo.svg --insecure https://www.propelleraero.com/wp-content/uploads/2021/05/Vector.svg

# Replace Link
(Get-Content -Raw src/App.js) -replace '<a className="App-link" href="https://reactjs.org" target="_blank" rel="noopener noreferrer">Learn React</a>', '<a href="https://www.propelleraero.com/dirtmate/">New Link</a>' | Set-Content -NoNewline src/App.js

# Commit to Git
git add .
git commit -m "Update logo and link"

# Push to GitHub
git push origin update_logo

# Create a Pull Request
gh pr create --base main --head update_logo --title "Update logo and link" --body "Please review and merge." --repo ceotcr/blackbird-tasks

# Merge Pull Request
gh pr merge 1 --repo ceotcr/blackbird-tasks
# Branch Deleted After Merge - update_logo

# REPO_URL - https://github.com/ceotcr/blackbird-tasks