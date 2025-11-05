---
title: "Kiến trúc tổng quan"
date: "2025-11-05"
lastmod: "2025-11-05"
weight: 3
chapter: false
pre: " <b> 3. </b> "
---

## Kiến trúc tổng quan

### Kiến trúc hệ thống

Nền tảng InsightHR được xây dựng trên kiến trúc serverless sử dụng các dịch vụ AWS, cung cấp khả năng mở rộng, tiết kiệm chi phí và tính sẵn sàng cao.

![Sơ đồ kiến trúc](/images/architecture.png)

### Các dịch vụ AWS sử dụng

#### Frontend & Phân phối nội dung

- **Amazon S3**: Lưu trữ trang web tĩnh (frontend) và các file dữ liệu (như file CSV, model AI) do người dùng tải lên
- **Amazon CloudFront**: Phân phối nội dung web tĩnh và động trên toàn cầu với độ trễ thấp
- **Amazon Route 53**: Quản lý tên miền và định tuyến DNS

#### Backend & Xử lý

- **AWS Lambda**: Trái tim của ứng dụng, thực thi toàn bộ logic nghiệp vụ từ xử lý đăng nhập, tính toán điểm số theo công thức tùy biến, đến các chức năng chatbot
- **Amazon API Gateway**: Xây dựng, triển khai và quản lý các API, là cổng giao tiếp giữa frontend và backend (Lambda)

#### Lưu trữ dữ liệu

- **Amazon DynamoDB**: Lưu trữ dữ liệu có cấu trúc với schema linh hoạt:
  - Thông tin người dùng và nhân viên
  - Các KPI và công thức tính điểm do mỗi công ty tự định nghĩa
  - Kết quả đánh giá hiệu suất

#### AI & Học máy

- **Amazon Bedrock**: Cung cấp mô hình ngôn ngữ lớn (LLM) cho chatbot trợ lý HR
- **Amazon Lex**: Cho phép xử lý ngôn ngữ tự nhiên để chatbot truy vấn và tóm tắt dữ liệu

#### Bảo mật & Quản lý danh tính

- **Amazon Cognito**: Quản lý danh tính và quy trình đăng nhập/đăng ký cho người dùng
- **AWS IAM**: Quản lý quyền truy cập và phân quyền chi tiết cho các dịch vụ AWS
- **AWS KMS**: Quản lý và sử dụng khóa mã hóa để bảo vệ dữ liệu nhạy cảm trong DynamoDB và S3

#### Giám sát & Thông báo

- **Amazon CloudWatch & CloudWatch Logs**: Theo dõi hoạt động của các hàm Lambda, hiệu suất của API Gateway và truy xuất database, đảm bảo hệ thống vận hành ổn định
- **Amazon SNS**: Gửi email thông báo (no-reply) đến các nhân viên khi có yêu cầu (ví dụ: nhắc nhở, thông báo kết quả)

### Lợi ích của kiến trúc

1. **Serverless**: Không cần quản lý server, tự động mở rộng quy mô
2. **Tiết kiệm chi phí**: Chỉ trả tiền cho những gì bạn sử dụng
3. **Tính sẵn sàng cao**: Dự phòng tích hợp sẵn trên các khu vực AWS
4. **Bảo mật**: Nhiều lớp bảo mật với mã hóa khi lưu trữ và truyền tải
5. **Khả năng mở rộng**: Xử lý tăng trưởng từ nhóm nhỏ đến doanh nghiệp lớn
6. **Linh hoạt**: Dễ dàng sửa đổi và mở rộng chức năng
