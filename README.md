# CIPushAction
GitHub action to commit and push changes to git

## Usage

This action has 4 optional parameters:

* files - list of files (separated with a space) that should be pushed. Default is all
* commit_message - The message for the commit, default is 'CI Build'. [skip ci] will be appended
* commit_user - The user for the commit which will be set in git config, default is 'CI Build'
* commit_email - The email for the commit which will be set in git config, default is 'cibuild@cibuild.com'

### Using defaults

```
  - name: Push to Git
    uses: mickeycohen/CIPushAction@0.0.1
```

### With parameters
```
  - name: Push to Git
    uses: mickeycohen/CIPushAction@0.0.1
	with:
	  files: file1 file2
	  commit_message: "Commit form GitHub Action"
	  commit_user: "Action Push"
	  commit_email: "githubaction@email.com"
```

## Output

There is no output for this action