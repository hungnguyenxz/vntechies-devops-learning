# CI/CD Pipeline Architecture
```
      +------------------+
      |   GitHub Repo    |
      +------------------+
               |
               v
      +------------------+
      |  Jenkins Server  |
      |  - Pull Code     |
      |  - Build & Test  |
      |  - Build Docker  |     +--------------------+
      |  - Push Image    | --> | DockerHub Registry |
      +------------------+     +--------------------+
               |
               v  SSH
      +---------------------+
      | Application Server  |     +--------------------+
      |  - Pull Image       | <-- | DockerHub Registry |
      |  - Docker Run       |     +--------------------+  
      +---------------------+
               |
               v
      +--------------------+
      | Application Server | 
      | - Running App      |
      +--------------------+
```
---

# 🔹 Giải thích

1. **GitHub Repo**: chứa source code.  
2. **Jenkins Server**: CI/CD pipeline, build code, test, tạo Docker image, push lên registry private.
3. **Application Server**: CD, pull image và chạy container.

---

# Các tools sử dụng

- Plugin: GitScm checkout, NodeJs, sshagent

---