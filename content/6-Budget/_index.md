---
title: "Budget Estimation"
date: "2025-11-05"
lastmod: "2025-11-05"
weight: 6
chapter: false
pre: " <b> 6. </b> "
---

## Budget Estimation

The analysis below is based on AWS pricing models at the time of proposal and estimates for a small-scale use case (MVP/Demo).

### AWS Services Pricing (Reference Prices)

| Service | Pricing |
|---------|---------|
| Amazon Route 53 | $0.50 per hosted zone/month |
| Amazon CloudFront | $0.009 per 10,000 HTTP requests<br>$0.12 per GB data transfer out |
| Amazon API Gateway | $1.00 per million HTTP requests |
| Amazon S3 Standard | $0.025 per GB/month |
| Amazon DynamoDB | $0.0074 per GB/month (Indexed Storage) |
| Amazon CloudWatch | $0.30 per metric/month |
| Amazon SNS | $0.50 per million requests (after free tier) |
| Amazon Cognito | Free for 10,000 MAU<br>$0.015 per MAU after |
| AWS IAM | Free |
| AWS KMS | $1.00 per 10,000 API calls |
| Amazon Bedrock (Claude 3 Sonnet) | $0.003 per 1,000 input tokens<br>$0.015 per 1,000 output tokens |
| AWS Lambda | Free: 1M requests + 400,000 GB-seconds/month<br>$0.00001667 per GB-second (x86)<br>$0.2 per million requests |
| Amazon Lex | $0.004 per text request |
| CloudWatch Logs | $0.50 per GiB for 30-day storage<br>Free: 50 GiB |

### Detailed Cost Estimation (MVP Scenario - USD/Month)

Assuming low traffic during initial phase:

| Service | Monthly Cost | Assumptions |
|---------|--------------|-------------|
| Route 53 | $0.50 | 1 hosted zone |
| CloudFront (requests) | $0.09 | 100,000 requests |
| CloudFront (data out) | $0.60 | 5 GB transfer |
| API Gateway | $0.10 | 100,000 requests |
| S3 Storage | $0.25 | 10 GB storage |
| DynamoDB | $0.01 | 1 GB indexed storage |
| CloudWatch | $3.00 | 10 metrics |
| SNS | $0.03 | 50,000 requests |
| Cognito | $0.00 | Within free tier |
| KMS | $0.50 | 5,000 API calls |
| Bedrock | $1.35 | 200k input + 50k output tokens |
| Lambda | $0.00 | Within free tier |
| Amazon Lex | $8.00 | 2,000 chatbot messages |
| CloudWatch Logs | $0.00 | Within 50 GiB free tier |

### **Total Estimated Cost: ≈ $14.43/month**

### Cost Optimization Strategies

1. **Use Free Tiers**: Maximize usage of AWS free tier offerings
2. **Reserved Capacity**: Consider reserved capacity for DynamoDB as usage grows
3. **S3 Lifecycle Policies**: Move old data to cheaper storage classes
4. **Lambda Optimization**: Optimize function memory and execution time
5. **CloudWatch**: Use metric filters to reduce unnecessary logging

### Scaling Cost Projections

**Small Business (100 employees)**:
- Estimated: $50-75/month

**Medium Business (500 employees)**:
- Estimated: $150-200/month

**Large Enterprise (2000+ employees)**:
- Estimated: $500-800/month

### Budget Notes

- Costs scale gradually with usage
- No upfront infrastructure investment required
- Pay-as-you-go model provides flexibility
- Significant cost savings compared to traditional HR software licenses
