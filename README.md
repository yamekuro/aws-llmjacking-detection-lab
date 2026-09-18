# AWS LLMjacking Detection Lab

A purple team lab that simulates LLMjacking attacks against Amazon Bedrock and builds the detections to catch them.

## Structure

- `terraform/` — infrastructure as code: CloudTrail, Bedrock invocation logging, budget alerts
- `attacks/` — attack simulation with Stratus Red Team and captured CloudTrail events
- `detections/` — Sigma rules with test fixtures and CI validation
- `response/` — automated response: Lambda that quarantines compromised credentials
- `docs/` — threat model, detection coverage and findings

## Status

Work in progress.

## Write-ups

- [Week 0 — Building a lab that is safe to attack](https://yamekuro.github.io/aws-llmjacking-detection-lab/week-0-setup.html)
