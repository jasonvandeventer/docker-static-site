# Dockerized Static Website

[![Docker Scan](https://github.com/jasonvandeventer/docker-static-site/actions/workflows/docker-scan.yml/badge.svg)](https://github.com/jasonvandeventer/docker-static-site/actions)

A minimal multi-stage Docker image serving a static HTML/CSS site via Nginx, scanned with Trivy for HIGH/CRITICAL CVEs.  
**Final image size:** ~22 MB

---

## 🔧 Features
- Multi-stage build (Node → Nginx)
- Image scanning with Trivy
- ~22 MB final image

## 🚀 Getting Started

```bash
# Clone
git clone https://github.com/jasonvandeventer/docker-static-site.git
cd docker-static-site

# Build
docker build -t jasonvanfreckle/static-site:1.0.0 .

# Run
docker run --rm -p 8080:80 jasonvanfreckle/static-site:1.0.0
