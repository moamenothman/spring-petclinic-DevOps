# Troubleshooting Log

This directory documents technical issues encountered during the Cloud-Native DevOps project, their root causes, attempted fixes, and verified outcomes.

---

## Issue 001: Jenkins Workspace Permission Denied

**Status:** Pending verification

### Symptoms

The Jenkins pipeline failed during the `Checkout Application` stage when attempting to remove the previous `app-src` directory.

The console output reported `Permission denied` for files under `app-src/target`.

### Root Cause

The Maven build ran inside a Docker container with the application directory bind-mounted from the Jenkins workspace. Build artifacts were created with root ownership, while subsequent pipeline steps ran as the `jenkins` user.

### Proposed Fix

A shell `trap` was added to the Maven container script to restore ownership of the `target` directory to the Jenkins user and group (UID 105, GID 108) when the build process exits.

### Validation Checklist

- [x] The application checkout completes successfully on a subsequent build.
- [x] Maven tests and packaging complete successfully.
- [x] The Docker image is pushed to Docker Hub.
- [x] Local Docker image tags are removed by the pipeline's `post { always }` block.
- [x] Workspace permissions remain suitable for the next build.

### Evidence

Add the Jenkins build number, relevant console output, screenshots, and the final verified outcome after testing.

### Notes

The fix is not considered verified until a subsequent pipeline run confirms the expected behavior.

---

## Issue 002: [Issue Title]

**Status:** Pending investigation

### Symptoms

Describe the observed behavior and relevant error messages.

### Root Cause

Document the confirmed cause after investigation.

### Resolution

Describe the implemented fix and why it addresses the issue.

### Validation

- [ ] The fix has been tested.
- [ ] The expected behavior has been confirmed.

### Evidence

Add relevant Jenkins console output, screenshots, logs, and the verified build number.

---


