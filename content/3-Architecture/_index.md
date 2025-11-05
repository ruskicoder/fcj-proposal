---
title: "Architecture Overview"
date: "2025-11-05"
lastmod: "2025-11-05"
weight: 3
chapter: false
pre: " <b> 3. </b> "
---

## Architecture Overview

### System Architecture

The InsightHR platform is built on a serverless architecture using AWS services, providing scalability, cost-effectiveness, and high availability.

![Architecture Diagram](/images/architecture.png)

### AWS Services Used

#### Frontend & Content Delivery

- **Amazon S3**: Hosts the static website (frontend) and stores user-uploaded data files (CSV, AI models)
- **Amazon CloudFront**: Distributes static and dynamic web content globally with low latency
- **Amazon Route 53**: Manages domain names and DNS routing

#### Backend & Compute

- **AWS Lambda**: The heart of the application, executing all business logic from authentication processing, custom formula-based scoring, to chatbot functions
- **Amazon API Gateway**: Builds, deploys, and manages APIs - the communication gateway between frontend and backend (Lambda)

#### Data Storage

- **Amazon DynamoDB**: Stores structured data with flexible schema:
  - User and employee information
  - Company-defined KPIs and scoring formulas
  - Performance evaluation results

#### AI & Machine Learning

- **Amazon Bedrock**: Provides Large Language Models (LLM) for the HR assistant chatbot
- **Amazon Lex**: Enables natural language processing for the chatbot to query and summarize data

#### Security & Identity

- **Amazon Cognito**: Manages user identity and authentication/registration workflows
- **AWS IAM**: Manages access rights and detailed permissions for AWS services
- **AWS KMS**: Manages and uses encryption keys to protect sensitive data in DynamoDB and S3

#### Monitoring & Notifications

- **Amazon CloudWatch & CloudWatch Logs**: Monitors Lambda function activity, API Gateway performance, and database access, ensuring stable system operation
- **Amazon SNS**: Sends email notifications (no-reply) to employees when required (e.g., reminders, result notifications)

### Architecture Benefits

1. **Serverless**: No server management, automatic scaling
2. **Cost-Effective**: Pay only for what you use
3. **High Availability**: Built-in redundancy across AWS regions
4. **Secure**: Multiple layers of security with encryption at rest and in transit
5. **Scalable**: Handles growth from small teams to large enterprises
6. **Flexible**: Easy to modify and extend functionality
