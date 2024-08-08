# Addigy Python Script Template
Use this template for running Python scripts from Addigy Smart Software. 

## How to Use
1. Create a separate Smart Software item called `Python` or whichever you prefer, and upload the latest package from [the MacAdmins Python repo.](https://github.com/macadmins/python) This is a Python framework that installs in a separate location that is unlikely to interfere with devs or other users that are likely to use Python. After saving, go back to the edit page and grab the software ID in the URL bar.
2. Create another Smart Software item called something like `Python Script (Template)`. I suggest making a template first so you can easily clone it for new Python scripts you want to deploy.
3. Put one of the two scripts as the installation script for the software item. Info below on which one to use. For the variable `macadmins_python_software_id` put the ID you grabbed in step 1. This makes it so your script checks to see if the MacAdmins Python framework is installed, and if it isn't, it'll install the software item you made in step 2.
4. Put your custom Python script in - if you're using the heredoc option, just put the text within the heredoc section. If you're using the file option, upload your Python script and put the path into the `script_path` variable.
5. Test and deploy!

## Which Script Should I Use?
There are two script templates in this repo. Which one you use is mostly your preference. I tend to use the heredoc option for shorter Python scripts, and the file option for more complex scripts.
