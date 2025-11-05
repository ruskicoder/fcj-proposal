---
title: "Đánh giá rủi ro"
date: "2025-11-05"
lastmod: "2025-11-05"
weight: 7
chapter: false
pre: " <b> 7. </b> "
---

## Đánh giá rủi ro và Giải pháp

### Thách thức của giải pháp "one-size-fits-all"

Thách thức lớn nhất của các công cụ HR trên thị trường là sự khác biệt trong quy trình và hệ số đánh giá giữa các công ty. Một giải pháp "one-size-fits-all" thường không hiệu quả.

### Cách tiếp cận của chúng tôi

Ứng dụng của chúng tôi không xem đây là rủi ro, mà là vấn đề cốt lõi cần giải quyết. Bằng cách cung cấp một nền tảng tùy biến linh hoạt, chúng tôi cho phép mỗi doanh nghiệp số hóa và tự động hóa chính quy trình đánh giá độc nhất của họ. Giải pháp này biến thách thức về sự đa dạng thành lợi thế cạnh tranh cốt lõi của sản phẩm.

### Các rủi ro chính và Chiến lược giảm thiểu

#### 1. Quyền riêng tư và Bảo mật dữ liệu

**Rủi ro**: Dữ liệu nhân viên nhạy cảm có thể bị xâm phạm

**Giảm thiểu**:
- Mã hóa đầu cuối sử dụng AWS KMS
- Kiểm soát truy cập dựa trên vai trò với IAM
- Kiểm tra bảo mật định kỳ
- Tuân thủ GDPR và các quy định bảo vệ dữ liệu khác
- Cách ly dữ liệu theo từng công ty/tenant

#### 2. Độ chính xác của mô hình AI

**Rủi ro**: Thông tin chi tiết từ AI có thể không chính xác hoặc thiên vị

**Giảm thiểu**:
- AI/LLM (Bedrock) chỉ đóng vai trò trợ lý thông minh để truy vấn và tóm tắt dữ liệu đã được xử lý
- Không tham gia trực tiếp vào việc ra quyết định chấm điểm
- Chấm điểm dựa trên quy tắc đảm bảo tính minh bạch và dễ kiểm soát
- Xác thực bởi con người cho các quyết định quan trọng

#### 3. Tính sẵn sàng của hệ thống

**Rủi ro**: Thời gian ngừng hoạt động có thể ảnh hưởng đến hoạt động HR

**Giảm thiểu**:
- Kiến trúc serverless cung cấp tính sẵn sàng cao
- Khả năng triển khai đa vùng
- Sao lưu tự động và khôi phục thảm họa
- Giám sát CloudWatch với cảnh báo

#### 4. Chấp nhận và Quản lý thay đổi

**Rủi ro**: Người dùng có thể kháng cự hệ thống mới

**Giảm thiểu**:
- Giao diện trực quan, thân thiện với người dùng
- Tài liệu và đào tạo toàn diện
- Triển khai dần dần với các chương trình thí điểm
- Hỗ trợ chuyên biệt trong quá trình chuyển đổi

#### 5. Mối lo ngại về khả năng mở rộng

**Rủi ro**: Hệ thống có thể không xử lý được sự tăng trưởng

**Giảm thiểu**:
- Kiến trúc serverless tự động mở rộng quy mô
- DynamoDB cung cấp khả năng mở rộng không giới hạn
- Kiểm tra tải trước khi triển khai lớn
- Giám sát và tối ưu hóa hiệu suất

### Lợi thế cạnh tranh

1. **Tùy biến**: Không giống các công cụ HR cứng nhắc, hoàn toàn thích ứng với nhu cầu của bất kỳ công ty nào
2. **Minh bạch**: Quy trình đánh giá rõ ràng, dựa trên quy tắc
3. **Tiết kiệm chi phí**: Mô hình serverless loại bỏ chi phí hạ tầng
4. **Công nghệ hiện đại**: Tận dụng các dịch vụ AWS và khả năng AI mới nhất
5. **Triển khai nhanh**: Triển khai nhanh hơn các hệ thống HR truyền thống
