### Introduction

This document will guide you through setting up your local development environment to work on the BC Client Registry FHIR Implementation Guide (IG).

This project uses the HL7 FHIR Shorthand (FSH) language, processed by the `sushi` tool, and the HL7 IG Publisher to generate the web-based implementation guide from source files.

### 1. Prerequisites

Before you begin, you need to install several tools.

#### 1.1. Git

The project uses Git for version control. 

#### 1.2. Java Development Kit (JDK)

The HL7 IG Publisher is a Java application. It requires Java 11 or higher.

1.  Download and install a JDK (e.g., from Adoptium).
2.  Verify the installation by opening a terminal or command prompt and running:
    ```bash
    java -version
    ```
    You should see output indicating Java version 11.

#### 1.3. Node.js and SUSHI

SUSHI is the compiler for FHIR Shorthand (FSH) and is a Node.js package.

1.  Download and install the latest LTS version of Node.js from nodejs.org.
2.  Verify the Node.js installation:
    ```bash
    node -v
    npm -v
    ```
3.  Install SUSHI globally using npm:
    ```bash
    npm install -g fsh-sushi
    ```
4.  Verify the SUSHI installation:
    ```bash
    sushi --version
    ```

#### 1.4. Ruby and Jekyll

The IG Publisher uses Jekyll to build the final HTML site.

1.  Follow the official installation guide for your operating system: Jekyll Installation.
    -   **For Windows users:** It is highly recommended to use the "Jekyll on Windows" guide, which involves installing the RubyInstaller with Devkit.
2.  After installing Ruby and Jekyll, verify the installation:
    ```bash
    ruby -v
    jekyll -v
    ```

#### 1.5. Visual Studio Code (Recommended)

VS Code is the recommended editor for working with FHIR Shorthand.

Install the following extensions for the best experience:
*   **HL7 FHIR Shorthand (FSH)** (`HL7.fhir-shorthand`): Provides syntax highlighting, snippets, and validation for `.fsh` files.
*   **XML** (`redhat.java`): Useful for inspecting FHIR XML resources.

### 2. Project Setup

1.  **Clone the Repository:**
    Open a terminal, navigate to your development directory, and clone the project repository.
    ```bash
    # Replace with the actual repository URL
    git clone https://your-git-repository-url/MOH-HCIM-FHIR.git
    cd MOH-HCIM-FHIR
    ```

2.  **Run the IG Publisher:**
    The IG Publisher is managed via a script. This script will automatically download the correct publisher `.jar` file, run SUSHI, and then execute the publisher to build the full IG.

    From the root of the project directory (`MOH-HCIM-FHIR`), run the build script:

        ```bash
        ./_updateAndRunPublisher.sh (Do this once a week)
        ./_genonce.sh (Do this the other times)
        ```

    The first build will take some time as it downloads the IG Publisher and all dependencies defined in `sushi-config.yaml`. Subsequent builds will be faster.

### 3. Viewing the Implementation Guide

Once the build process completes successfully, the generated IG will be in the `output` directory.

1.  Open the `output/index.html` file in your web browser to view the locally built Implementation Guide.
2.  If the build fails, a detailed log can be found in `output/qa.html`. This is the first place to look for errors in your FSH or resource definitions.

### 4. Development Workflow

A typical workflow for making changes is:

1.  **Create a branch:** Create a new feature or bugfix branch in Git off of the release-branch(Dev).
    ```bash
    git checkout -b feature/my-new-feature
    ```
2.  **Edit Files:** Make your changes to the source files. These are primarily:
    *   FHIR Shorthand files (`.fsh`) in the `input/fsh/` directory.
    *   Markdown content pages in the `input/pagecontent/` directory.
    *   Example files in the `input/resources/` directory.
3.  **Re-build the IG:** Run the `_genonce` script again to see your changes reflected.
4.  **Review:** Check `output/index.html` and `output/qa.html` to ensure your changes are correct and introduced no new errors.
5.  **Commit and Push:** Commit your changes and push your branch to the remote repository to open a pull request.

Welcome aboard, and happy coding!

