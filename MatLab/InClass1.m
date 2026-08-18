{\rtf1\ansi\ansicpg1252\cocoartf2870
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 .AppleSystemUIFontMonospaced-Regular;}
{\colortbl;\red255\green255\blue255;\red247\green247\blue247;\red25\green25\blue25;\red255\green255\blue255;
}
{\*\expandedcolortbl;;\cssrgb\c97647\c97647\c97647;\cssrgb\c12941\c12941\c12941;\cssrgb\c100000\c100000\c100000;
}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs28 \cf2 \cb3 \expnd0\expndtw0\kerning0
%% Lecture 1 - In Class Activity\
% August 19, 2026\
%\
% *Goal:* Build a small, reproducible MATLAB project directory and Git repository.\
%\
% By the end of this workbook, you will have created a project folder with:\
%\
%   GEOL599_ML/\
%   |-- data/\
%   |   `-- raw/\
%   |-- notebooks/\
%   |-- outputs/\
%   |-- scripts/\
%   |-- .gitignore\
%   |-- README.md\
%   `-- requirements.txt\
%\
% *Important:* This workbook mixes MATLAB commands and terminal commands.\
% In MATLAB, terminal commands can be run with system('command') or with !command.\
\
%% Step 0: Check your setup\
% Run the commands below to confirm that MATLAB and Git are available.\
% If Git is not installed, tell your instructor before continuing.\
\
version\
\
[gitStatus, gitVersion] = system('git --version');\
if gitStatus == 0\
    disp(strtrim(gitVersion))\
else\
    error('Git was not found. Tell your instructor before continuing.')\
end\
\
%%\
% If you have an old version of MATLAB or you do not have Git, please\
% update/download now. Let Dylan know if you have any problems.\
\
%% Step 1: Create a project directory\
% We will create a new folder called GEOL599_ML and move into it.\
%\
% In a normal terminal, you would run:\
%\
%   mkdir GEOL599_ML\
%   cd GEOL599_ML\
%\
% Inside MATLAB, we can create and enter the folder using MATLAB commands.\
\
project_dir = "GEOL599_ML";\
if ~isfolder(project_dir)\
    mkdir(project_dir);\
end\
fullfile(pwd, project_dir)\
\
cd(project_dir)\
pwd\
\
%% Step 2: Create a clean project structure\
% A consistent folder structure makes projects easier to understand, rerun,\
% share, and debug.\
%\
% We will create four main directories:\
%\
% * data/raw/ for original input data\
% * notebooks/ for exploratory notebooks or live scripts\
% * outputs/ for generated files, figures, and results\
% * scripts/ for reusable MATLAB scripts\
\
folders = ["data/raw", "notebooks", "outputs", "scripts"];\
\
for folder = folders\
    if ~isfolder(folder)\
        mkdir(folder);\
    end\
end\
\
% Display the project folders. This command works on macOS/Linux/Git Bash.\
[status, result] = system('find . -maxdepth 3 -type d | sort');\
if status == 0\
    disp(result)\
else\
    % Portable MATLAB fallback if the shell does not provide find.\
    disp("Folders created:")\
    disp(folders')\
end\
\
%% Checkpoint 1\
% You should now have a folder structure that looks like this:\
%\
%   GEOL599_ML/\
%   |-- data/\
%   |   `-- raw/\
%   |-- notebooks/\
%   |-- outputs/\
%   `-- scripts/\
%\
% *Reflection prompt:* Why might it be risky to keep scripts, datasets,\
% outputs, and notes all in one folder?\
\
%% Step 3: Create a README file\
% A README.md file explains what the project is, how to use it, and what\
% someone needs to know to reproduce your work.\
\
readme_text = [ ...\
    "# GEOL599 Applied Machine Learning for Geoscience Data"; ...\
    ""; ...\
    "This project includes all in class assignments and homeworks from this course."; ...\
    ""; ...\
    "## Project structure"; ...\
    ""; ...\
    "- `data/raw/`: original input data"; ...\
    "- `notebooks/`: exploratory notebooks or MATLAB live scripts"; ...\
    "- `outputs/`: generated results and figures"; ...\
    "- `scripts/`: reusable MATLAB scripts" ...\
];\
\
fid = fopen('README.md', 'w');\
assert(fid ~= -1, 'Could not create README.md');\
cleanupObj = onCleanup(@() fclose(fid));\
fprintf(fid, '%s\\n', readme_text);\
clear cleanupObj\
\
type README.md\
\
%% Reflection prompt\
% What information would someone need to understand or rerun your project\
% six months from now?\
\
%% Step 4: Initialize Git\
% Git tracks changes to your files over time.\
% First, initialize a Git repository.\
\
system('git init');\
system('git status');\
\
%% Step 5: Create a .gitignore file\
% Not every file belongs in Git.\
%\
% For example, we usually do *not* commit:\
%\
% * Generated outputs\
% * MATLAB autosave/backup files\
% * MATLAB project/cache files\
% * System files like .DS_Store\
\
gitignore_text = [ ...\
    "outputs/"; ...\
    "*.asv"; ...\
    "*.autosave"; ...\
    "slprj/"; ...\
    "codegen/"; ...\
    ".DS_Store" ...\
];\
\
fid = fopen('.gitignore', 'w');\
assert(fid ~= -1, 'Could not create .gitignore');\
cleanupObj = onCleanup(@() fclose(fid));\
fprintf(fid, '%s\\n', gitignore_text);\
clear cleanupObj\
\
type .gitignore\
system('git status');\
\
%% Step 6: Make the first commit\
% A commit is a snapshot of your project at a meaningful point in time.\
%\
% Before committing, Git may require your name and email. If Git asks for\
% these, run the following commands in a terminal, replacing the values with\
% your own:\
%\
%   git config --global user.name "Your Name"\
%   git config --global user.email "your.email@example.com"\
%\
% Now add the important project files and commit them.\
\
system('git add README.md .gitignore');\
system('git status');\
\
system('git commit -m "Initial project setup"');\
\
system('git log --oneline');\
\
%% Optional: Connect to GitHub\
% If you have a GitHub account and have created an empty repository online,\
% you can connect this local repository to GitHub.\
%\
% In a terminal, run:\
%\
%   git branch -M main\
%   git remote add origin <repository-url>\
%   git push -u origin main\
%\
% Replace <repository-url> with your actual GitHub repository URL.\
%\
% This step is optional because account setup and authentication can take\
% extra time. However, you should set this up before next class.}