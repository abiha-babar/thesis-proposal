FROM texlive/texlive:latest AS builder

WORKDIR /thesis

# Copy all project files
COPY . .

# Full build: pdflatex → bibtex → pdflatex × 2
# (two pdflatex passes after bibtex ensures cross-refs and citations are resolved)
RUN pdflatex -interaction=nonstopmode proposal.tex && \
    bibtex proposal && \
    pdflatex -interaction=nonstopmode proposal.tex && \
    pdflatex -interaction=nonstopmode proposal.tex

# ── Serve the PDF ──────────────────────────────────────────────────────────────
FROM nginx:alpine

# Copy the compiled PDF into nginx's default public directory
COPY --from=builder /thesis/proposal.pdf /usr/share/nginx/html/proposal.pdf

# Minimal nginx config: serve the PDF directly at /
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 8080
