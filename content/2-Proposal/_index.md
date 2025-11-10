---
title: "Proposal"
date: "`r Sys.Date()`"
weight: 2
chapter: false
pre: " <b> 2. </b> "
---

# Proposal: HR Automation Platform (InsightHR)


## I. Introduction to InsightHR

### Overview

InsightHR is a serverless application designed to help businesses, especially in IT and related fields, customize and automate their HR evaluation and management processes. The application not only visualizes performance data but also provides a flexible platform for each company to apply their unique set of KPIs (Key Performance Indicators) and evaluation formulas, enabling accurate and fair HR decisions.

### The Problem We Solve

In modern enterprises, particularly in the technology sector where roles and performance metrics are highly diverse, personnel evaluation often:

- **Consumes significant time** with manual processes
- **Suffers from subjectivity** and bias
- **Lacks flexibility** due to rigid, one-size-fits-all tools
- **Fails to adapt** to unique company cultures and objectives

### Our Solution

InsightHR transforms HR management by providing:

#### 1. Customizable KPIs
Define your own performance indicators that matter to your organization, from technical metrics like code quality to soft skills like teamwork.

#### 2. Flexible Scoring Formulas
Build custom evaluation formulas using your defined KPIs with adjustable weights, ensuring evaluations align with your company's values and priorities.

#### 3. Automated Processing
Upload performance data and let the system automatically calculate scores based on your custom formulas, eliminating manual calculations and reducing errors.

#### 4. Visual Dashboards
Track performance across individuals, teams, and departments with intuitive charts and graphs, making it easy to identify trends and patterns.

#### 5. AI-Powered Insights
Query your HR data using natural language through an intelligent chatbot assistant powered by Amazon Bedrock, making data analysis accessible to everyone.

#### 6. Automated Notifications
Keep employees informed with automatic notifications for performance milestones, review reminders, and important updates via Amazon SNS.

### Why Serverless?

Built on AWS serverless architecture, InsightHR offers:

- **No Infrastructure Management**: Focus on your HR processes, not servers
- **Automatic Scaling**: Handle growth from 10 to 10,000 employees seamlessly
- **Cost-Effective**: Pay only for what you use, with no upfront investment
- **High Availability**: Built-in redundancy and reliability
- **Fast Deployment**: Get up and running in weeks, not months

### Key Benefits

1. **Time Savings**: Reduce HR administrative work by 60-70%
2. **Transparency**: Clear, data-driven evaluation processes
3. **Fairness**: Eliminate subjective bias with rule-based scoring
4. **Flexibility**: Adapt to any industry or company size
5. **Insights**: Make better decisions with AI-powered analytics

### Who Is This For?

- **IT Companies**: With diverse technical roles requiring customized metrics
- **Growing Businesses**: Need scalable, flexible HR solutions
- **Data-Driven Teams**: Want to leverage analytics for better people decisions
- **Cost-Conscious Organizations**: Seeking affordable alternatives to expensive HR software

### What Makes InsightHR Different?

Unlike traditional HR tools that force you to adapt to their rigid processes, InsightHR adapts to **your** unique needs. Every company is different, and your HR system should reflect that.

### Technology Stack

Built with modern AWS services:
- **Lambda** for serverless compute
- **DynamoDB** for flexible data storage
- **Cognito** for secure authentication
- **Bedrock & Lex** for AI capabilities
- **S3 & CloudFront** for global content delivery
- **SNS** for notifications
- **CloudWatch** for monitoring

### Get Started

In this workshop, you'll learn how to build and deploy InsightHR, understanding each component and how they work together to create a powerful, customizable HR automation platform.

Let's begin by understanding the problem in more detail...


## II. Problem Statement

### The Challenge

In modern enterprises, especially in the technology sector where roles and performance metrics are highly diverse, personnel evaluation often consumes significant time, relies on manual processes, and is susceptible to subjective factors and bias. Furthermore, available tools typically impose rigid workflows that don't align with each company's unique culture and objectives.

### The Solution: InsightHR

InsightHR was created to address this challenge. This serverless application, built using AWS services, enables businesses to:

- **Digitize and customize evaluation processes** by defining their own KPIs and scoring formulas
- **Automate scoring and result aggregation**
- **Track performance** of individuals/departments/companies visually through charts
- **Support data-driven HR decisions** through an assistant chatbot

### Benefits

The application helps HR optimize time, enhance transparency and fairness, and build a flexible human resource management process that suits each company's characteristics.

#### Key Advantages

1. **Flexibility**: Each organization can define their own unique KPIs and evaluation criteria
2. **Automation**: Eliminate manual scoring and reduce human error
3. **Transparency**: Clear, data-driven evaluation processes
4. **Scalability**: Serverless architecture that grows with your needs
5. **AI-Powered Insights**: Natural language queries to understand performance data

### Target Audience

- **IT Companies**: With diverse roles requiring customized evaluation metrics
- **SMEs**: Looking to modernize HR processes cost-effectively
- **Growing Organizations**: Need scalable HR automation solutions
- **Data-Driven Teams**: Want to leverage analytics for better HR decisions


## III. Architecture Overview

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


## IV. Technical Implementation

### Authentication & Security Module

**User Management**:
- Uses Amazon Cognito to manage users (registration, login, forgot password)
- Access rights are clearly divided (e.g., Admin/HR, Manager, Employee) through IAM, limiting actions users can perform

**Security Features**:
- Multi-factor authentication (MFA) support
- Role-based access control (RBAC)
- Encryption at rest using KMS
- Secure API endpoints with JWT tokens

### Administration & Customization Module (Admin Panel - For HR)

**KPI Management**:
- Interface allows HR to create, edit, and delete custom evaluation metrics (KPIs) for the company
- Examples: Tasks Completed, Code Quality Score, Customer Satisfaction
- Each KPI can have custom data types, ranges, and validation rules

**Formula Builder**:
- Visual interface allows HR to build performance scoring formulas
- Select created KPIs and assign weights to them
- Formula validation and preview functionality
- Formulas are saved in DynamoDB for runtime execution

**Example Formula**:
```
Final Score = (Tasks Completed × 0.3) + (Code Quality × 0.4) + (Customer Satisfaction × 0.3)
```

### Core User-Facing Functions

#### Data Upload

- Users (HR/Manager) can upload performance data files (CSV, Excel)
- Interface requests mapping of file columns to defined KPIs in the system
- Data validation and error reporting
- Preview before final import

#### Automatic Scoring

When data is uploaded, a Lambda function is triggered that:

1. **Loads model** from S3 bucket
2. **Reads data** from the uploaded file
3. **Retrieves** the active company scoring formula from DynamoDB
4. **Applies** the formula to data to calculate final scores for each employee
5. **Stores** results in the Performance Score table in DynamoDB
6. **Generates** analytics and insights

**Process Flow**:
```
Upload → Validate → Map KPIs → Calculate → Store → Notify
```

#### Dashboard & Charts

- Visualizes processed score data
- Tracks individual and department performance over time
- Multiple chart types: line graphs, bar charts, heat maps
- Filtering by time period, department, or individual
- Export capabilities for reports

#### Management & Notifications

- Automatically filters and sends notifications (via SNS) to employees
- Based on predefined conditions:
  - Employee absence alerts
  - Incomplete survey reminders
  - Performance milestone notifications
  - Custom trigger-based alerts

#### Chatbot (HR Assistant)

Integrates chatbot (Lex + Bedrock) allowing users to query data using natural language.

**Example Queries**:
- "Summarize Team A's performance in Q4?"
- "Which employees have the highest performance scores this month?"
- "Show me trends for the engineering department"
- "Compare this quarter's results with last quarter"

**Technical Details**:
- Natural language processing via Amazon Lex
- Context-aware conversations
- Integration with DynamoDB for data retrieval
- Powered by Claude 3 Sonnet via Bedrock for intelligent responses

### API Structure

**Core API Endpoints**:
- `/auth/*` - Authentication and authorization
- `/kpi/*` - KPI management (CRUD operations)
- `/formula/*` - Formula management
- `/upload/*` - Data upload and processing
- `/scores/*` - Performance score retrieval
- `/analytics/*` - Analytics and reporting
- `/notifications/*` - Notification management
- `/chat/*` - Chatbot interactions

### Data Models

**Employee**:
```json
{
  "employeeId": "string",
  "name": "string",
  "email": "string",
  "department": "string",
  "role": "string",
  "managerId": "string"
}
```

**KPI Definition**:
```json
{
  "kpiId": "string",
  "companyId": "string",
  "name": "string",
  "description": "string",
  "dataType": "number|percentage|boolean",
  "minValue": "number",
  "maxValue": "number"
}
```

**Performance Score**:
```json
{
  "scoreId": "string",
  "employeeId": "string",
  "period": "string",
  "kpiScores": {},
  "finalScore": "number",
  "timestamp": "string"
}
```

## V. Deployment Roadmap

### Phase 1: Building Customizable Platform - MVP (Months 1 & 2)

**Objectives**:
- Complete authentication flow and basic permission system (Admin, User)
- Build Admin Panel allowing HR to create KPIs and build dynamic scoring formulas
- Implement data file upload, column mapping, and automatic scoring based on custom formulas
- Build basic dashboard to display results in table and simple chart formats

**Deliverables**:
- Functional authentication system with Cognito
- Admin panel for KPI and formula management
- Data upload and processing pipeline
- Basic performance dashboard

**Milestones**:
- Week 2: Authentication and user management complete
- Week 4: KPI management system functional
- Week 6: Formula builder and scoring engine operational
- Week 8: MVP dashboard deployed

### Phase 2: Enhancement and Feature Expansion (Months 3 & 4)

**Objectives**:
- Integrate Chatbot (HR Assistant) to answer HR-related questions and provide insights
- Complete automatic notification function via SNS
- Upgrade dashboard with advanced filters and deeper analysis charts
- Conduct comprehensive testing, collect feedback, and refine application

**Deliverables**:
- AI-powered chatbot for natural language queries
- Automated notification system
- Advanced analytics dashboard
- Production-ready application

**Milestones**:
- Week 10: Chatbot integration complete
- Week 12: Notification system operational
- Week 14: Advanced dashboard features deployed
- Week 16: Testing, optimization, and launch

### Success Criteria

- **Performance**: System responds quickly for most requests
- **Scalability**: Handles multiple concurrent users effectively
- **Reliability**: High system uptime and availability
- **User Satisfaction**: Positive feedback from beta testers
- **Cost Efficiency**: Stays within budgeted AWS costs


## VI. Budget Estimation

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

## VII. Risk Assessment and Solutions

### The Challenge of One-Size-Fits-All Solutions

The biggest challenge of HR tools on the market is the difference in processes and evaluation coefficients between companies. A "one-size-fits-all" solution is often ineffective.

### Our Approach

We don't view this as a risk, but as the core problem to solve. By providing a flexible customization platform, we allow each business to digitize and automate their unique evaluation process. This solution turns the diversity challenge into a core competitive advantage of the product.

### Key Risks and Mitigation Strategies

#### 1. Data Privacy and Security

**Risk**: Sensitive employee data could be compromised

**Mitigation**:
- End-to-end encryption using AWS KMS
- Role-based access control with IAM
- Regular security audits
- Compliance with GDPR and other data protection regulations
- Data isolation per company/tenant

#### 2. AI Model Accuracy

**Risk**: AI-generated insights might be inaccurate or biased

**Mitigation**:
- AI/LLM (Bedrock) only serves as an intelligent assistant to query and summarize processed data
- Does not directly participate in scoring decisions
- Rule-based scoring ensures transparency and controllability
- Human-in-the-loop validation for critical decisions

#### 3. System Availability

**Risk**: Downtime could affect HR operations

**Mitigation**:
- Serverless architecture provides high availability
- Multi-region deployment capabilities
- Automated backups and disaster recovery
- CloudWatch monitoring with alerts

#### 4. Adoption and Change Management

**Risk**: Users might resist new system

**Mitigation**:
- Intuitive, user-friendly interface
- Comprehensive documentation and training
- Gradual rollout with pilot programs
- Dedicated support during transition

#### 5. Scalability Concerns

**Risk**: System might not handle growth

**Mitigation**:
- Serverless architecture scales automatically
- DynamoDB provides unlimited scalability
- Load testing before major rollouts
- Performance monitoring and optimization

### Competitive Advantages

1. **Customization**: Unlike rigid HR tools, fully adaptable to any company's needs
2. **Transparency**: Clear, rule-based evaluation processes
3. **Cost-Effective**: Serverless model eliminates infrastructure overhead
4. **Modern Technology**: Leverages latest AWS services and AI capabilities
5. **Quick Deployment**: Faster implementation than traditional HR systems

## VIII. Expected Results & Future Plans

### Expected Results

#### 1. Functional MVP Product

A stable MVP product demonstrating the feasibility of serverless architecture and the customizable platform solution.

**Key Features**:
- Fully functional authentication and authorization system
- Custom KPI and formula management
- Automated scoring engine
- Interactive dashboard with visualizations
- AI-powered chatbot assistant
- Notification system

#### 2. Business Impact

Provide a powerful, cost-effective tool for small and medium enterprises to modernize their HR management processes.

**Benefits to Organizations**:
- Reduce HR administrative time by 60-70%
- Eliminate manual scoring errors
- Increase transparency in performance evaluations
- Enable data-driven HR decisions
- Improve employee engagement through clear, fair metrics

#### 3. Technical Validation

Prove the viability of:
- Serverless architecture for HR applications
- AI integration for HR assistance
- Custom formula-based evaluation systems
- Scalable, multi-tenant design

### Future Development Plans

#### Phase 3: AI Enhancements (Months 5-8)

**AI-Powered Insights**:
When sufficient data is available, develop AI models capable of:
- Identifying performance patterns across teams and departments
- Predicting HR risks (e.g., turnover likelihood, burnout indicators)
- Recommending personalized development plans
- Detecting anomalies in performance data
- Suggesting optimal team compositions

**Machine Learning Features**:
- Predictive analytics for workforce planning
- Sentiment analysis from employee feedback
- Automated skill gap analysis
- Performance trend forecasting

#### Phase 4: Public API Development (Months 9-12)

**API Ecosystem**:
Build a comprehensive API set allowing other internal business systems to automatically push performance data into InsightHR.

**Integration Targets**:
- Project management tools (Jira, Asana, Monday.com)
- CRM systems (Salesforce, HubSpot)
- Time tracking software (Toggl, Harvest)
- Communication platforms (Slack, Microsoft Teams)
- Code repositories (GitHub, GitLab, Bitbucket)

**Benefits**:
- Transform InsightHR into a central HR data processing hub
- Create a synchronized and comprehensive management ecosystem
- Eliminate manual data entry
- Real-time performance tracking

#### Phase 5: Advanced Features (Year 2)

**Mobile Applications**:
- iOS and Android native apps
- Push notifications
- Offline capabilities
- Mobile-optimized dashboards

**Advanced Analytics**:
- Predictive modeling
- Benchmarking across industries
- Custom report builder
- Data export and API for third-party tools

**Collaboration Features**:
- Peer review systems
- 360-degree feedback
- Goal setting and tracking
- Performance improvement plans

**Compliance & Governance**:
- Audit trails
- Compliance reporting
- Data retention policies
- Advanced access controls

### Long-Term Vision

Transform InsightHR into the leading customizable HR automation platform, enabling organizations of all sizes to:

1. **Digitize** their unique HR processes without compromise
2. **Automate** repetitive tasks and focus on strategic initiatives
3. **Analyze** workforce data with AI-powered insights
4. **Integrate** seamlessly with their existing tech stack
5. **Scale** effortlessly as they grow

### Success Metrics (Year 1)

- **Adoption**: 50+ organizations using the platform
- **User Satisfaction**: NPS score > 50
- **Performance**: 99.9% uptime
- **Cost Efficiency**: Average cost savings of 40% vs traditional HR software
- **Time Savings**: 60%+ reduction in HR administrative tasks
- **Data Accuracy**: 95%+ accuracy in automated scoring

### Market Opportunities

- Global HR tech market size: $30+ billion
- Growing demand for customizable solutions
- Shift towards serverless and cloud-native applications
- Increasing importance of data-driven HR decisions
- Remote work driving need for digital HR tools

InsightHR is positioned to capture a significant share of this growing market by offering unparalleled flexibility and modern technology at competitive pricing.

