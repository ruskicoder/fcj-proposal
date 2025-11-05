---
title: "Ước tính ngân sách"
date: "2025-11-05"
lastmod: "2025-11-05"
weight: 6
chapter: false
pre: " <b> 6. </b> "
---

## Ước tính ngân sách

Phân tích dưới đây dựa trên mô hình định giá của AWS tại thời điểm đề xuất và ước tính cho một kịch bản sử dụng ở quy mô nhỏ (MVP/Demo).

### Chi phí dịch vụ AWS (Giá tham khảo)

| Dịch vụ | Giá |
|---------|-----|
| Amazon Route 53 | $0.50 mỗi hosted zone/tháng |
| Amazon CloudFront | $0.009 mỗi 10,000 HTTP requests; $0.12 mỗi GB data transfer out |
| Amazon API Gateway | $1.00 mỗi triệu HTTP requests |
| Amazon S3 Standard | $0.025 mỗi GB/tháng |
| Amazon DynamoDB | $0.0074 mỗi GB/tháng (Indexed Storage) |
| Amazon CloudWatch | $0.30 mỗi metric/tháng |
| Amazon SNS | $0.50 mỗi triệu requests (sau free tier) |
| Amazon Cognito | Miễn phí 10,000 MAU; $0.015 mỗi MAU sau đó |
| AWS IAM | Miễn phí |
| AWS KMS | $1.00 mỗi 10,000 API calls |
| Amazon Bedrock (Claude 3 Sonnet) | $0.003 mỗi 1,000 input tokens; $0.015 mỗi 1,000 output tokens |
| AWS Lambda | Miễn phí: 1M requests + 400,000 GB-giây/tháng; $0.00001667 mỗi GB-giây (x86); $0.2 mỗi triệu requests |
| Amazon Lex | $0.004 mỗi text request |
| CloudWatch Logs | $0.50 mỗi GiB cho 30 ngày lưu trữ; Miễn phí: 50 GiB |

### Ước tính chi tiết (Kịch bản MVP - USD/tháng)

Giả sử lưu lượng truy cập thấp trong giai đoạn đầu:

| Dịch vụ | Chi phí hàng tháng | Giả định |
|---------|-------------------|----------|
| Route 53 | $0.50 | 1 hosted zone |
| CloudFront (requests) | $0.09 | 100,000 requests |
| CloudFront (data out) | $0.60 | 5 GB truyền tải |
| API Gateway | $0.10 | 100,000 requests |
| S3 Storage | $0.25 | 10 GB lưu trữ |
| DynamoDB | $0.01 | 1 GB indexed storage |
| CloudWatch | $3.00 | 10 metrics |
| SNS | $0.03 | 50,000 requests |
| Cognito | $0.00 | Trong free tier |
| KMS | $0.50 | 5,000 API calls |
| Bedrock | $1.35 | 200k input + 50k output tokens |
| Lambda | $0.00 | Trong free tier |
| Amazon Lex | $8.00 | 2,000 tin nhắn chatbot |
| CloudWatch Logs | $0.00 | Trong 50 GiB free tier |

### **Tổng chi phí ước tính: ≈ $14.43/tháng**

### Chiến lược tối ưu chi phí

1. **Sử dụng Free Tiers**: Tối đa hóa sử dụng các gói miễn phí của AWS
2. **Reserved Capacity**: Cân nhắc dung lượng dự trữ cho DynamoDB khi sử dụng tăng
3. **S3 Lifecycle Policies**: Chuyển dữ liệu cũ sang các lớp lưu trữ rẻ hơn
4. **Tối ưu Lambda**: Tối ưu hóa bộ nhớ và thời gian thực thi của function
5. **CloudWatch**: Sử dụng bộ lọc metric để giảm logging không cần thiết

### Dự báo chi phí khi mở rộng quy mô

**Doanh nghiệp nhỏ (100 nhân viên)**:
- Ước tính: $50-75/tháng

**Doanh nghiệp vừa (500 nhân viên)**:
- Ước tính: $150-200/tháng

**Doanh nghiệp lớn (2000+ nhân viên)**:
- Ước tính: $500-800/tháng

### Ghi chú về ngân sách

- Chi phí tăng dần theo mức sử dụng
- Không cần đầu tư hạ tầng ban đầu
- Mô hình pay-as-you-go cung cấp tính linh hoạt
- Tiết kiệm đáng kể so với giấy phép phần mềm HR truyền thống
