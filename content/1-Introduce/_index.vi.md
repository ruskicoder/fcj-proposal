---
title: "Giới thiệu"
date: "2025-11-05"
lastmod: "2025-11-05"
weight: 1
chapter: false
pre: " <b> 1. </b> "
---

## Giới thiệu về InsightHR

### Tổng quan

InsightHR là một ứng dụng serverless được thiết kế để giúp các doanh nghiệp, đặc biệt trong lĩnh vực IT và các lĩnh vực liên quan, tùy biến và tự động hóa quy trình đánh giá và quản lý nhân sự. Ứng dụng không chỉ trực quan hóa dữ liệu hiệu suất mà còn cung cấp một nền tảng linh hoạt để mỗi công ty có thể áp dụng bộ chỉ số (KPI) và công thức đánh giá độc nhất của riêng mình, từ đó đưa ra những quyết định nhân sự chính xác và công bằng.

### Vấn đề chúng tôi giải quyết

Ở các doanh nghiệp hiện đại, đặc biệt là trong lĩnh vực công nghệ nơi các vai trò và chỉ số hiệu suất rất đa dạng, việc đánh giá nhân sự thường:

- **Tốn nhiều thời gian** với các quy trình thủ công
- **Chịu ảnh hưởng của tính chủ quan** và thiên vị
- **Thiếu tính linh hoạt** do các công cụ cứng nhắc, áp đặt chung
- **Không thích ứng** với văn hóa và mục tiêu độc đáo của từng công ty

### Giải pháp của chúng tôi

InsightHR biến đổi quản lý nhân sự bằng cách cung cấp:

#### 1. KPI có thể tùy chỉnh
Định nghĩa các chỉ số hiệu suất riêng quan trọng với tổ chức của bạn, từ các chỉ số kỹ thuật như chất lượng code đến kỹ năng mềm như làm việc nhóm.

#### 2. Công thức chấm điểm linh hoạt
Xây dựng công thức đánh giá tùy chỉnh sử dụng các KPI đã định nghĩa với trọng số có thể điều chỉnh, đảm bảo đánh giá phù hợp với giá trị và ưu tiên của công ty.

#### 3. Xử lý tự động
Tải lên dữ liệu hiệu suất và để hệ thống tự động tính điểm dựa trên công thức tùy chỉnh của bạn, loại bỏ tính toán thủ công và giảm lỗi.

#### 4. Dashboard trực quan
Theo dõi hiệu suất của cá nhân, nhóm và phòng ban với biểu đồ và đồ thị trực quan, giúp dễ dàng xác định xu hướng và mẫu hình.

#### 5. Thông tin chi tiết từ AI
Truy vấn dữ liệu HR của bạn bằng ngôn ngữ tự nhiên thông qua trợ lý chatbot thông minh được hỗ trợ bởi Amazon Bedrock, giúp phân tích dữ liệu dễ tiếp cận với mọi người.

#### 6. Thông báo tự động
Giữ nhân viên được thông tin với thông báo tự động cho các mốc hiệu suất, nhắc nhở đánh giá và cập nhật quan trọng qua Amazon SNS.

### Tại sao Serverless?

Được xây dựng trên kiến trúc serverless của AWS, InsightHR cung cấp:

- **Không cần quản lý hạ tầng**: Tập trung vào quy trình HR, không phải máy chủ
- **Tự động mở rộng quy mô**: Xử lý tăng trưởng từ 10 đến 10,000 nhân viên một cách liền mạch
- **Tiết kiệm chi phí**: Chỉ trả tiền cho những gì bạn sử dụng, không cần đầu tư ban đầu
- **Tính sẵn sàng cao**: Dự phòng và độ tin cậy tích hợp sẵn
- **Triển khai nhanh**: Vận hành trong vài tuần, không phải vài tháng

### Lợi ích chính

1. **Tiết kiệm thời gian**: Giảm 60-70% công việc quản trị HR
2. **Minh bạch**: Quy trình đánh giá rõ ràng, dựa trên dữ liệu
3. **Công bằng**: Loại bỏ thiên vị chủ quan với chấm điểm dựa trên quy tắc
4. **Linh hoạt**: Thích ứng với bất kỳ ngành hoặc quy mô công ty nào
5. **Thông tin chi tiết**: Đưa ra quyết định tốt hơn với phân tích hỗ trợ AI

### Dành cho ai?

- **Công ty IT**: Với các vai trò kỹ thuật đa dạng cần chỉ số tùy chỉnh
- **Doanh nghiệp đang phát triển**: Cần giải pháp HR có khả năng mở rộng, linh hoạt
- **Nhóm định hướng dữ liệu**: Muốn tận dụng phân tích để đưa ra quyết định nhân sự tốt hơn
- **Tổ chức tiết kiệm chi phí**: Tìm kiếm giải pháp thay thế giá cả phải chăng cho phần mềm HR đắt tiền

### Điều gì làm cho InsightHR khác biệt?

Không giống như các công cụ HR truyền thống buộc bạn phải thích ứng với quy trình cứng nhắc của họ, InsightHR thích ứng với nhu cầu độc đáo của **bạn**. Mỗi công ty đều khác nhau, và hệ thống HR của bạn nên phản ánh điều đó.

### Công nghệ sử dụng

Được xây dựng với các dịch vụ AWS hiện đại:
- **Lambda** cho serverless compute
- **DynamoDB** cho lưu trữ dữ liệu linh hoạt
- **Cognito** cho xác thực an toàn
- **Bedrock & Lex** cho khả năng AI
- **S3 & CloudFront** cho phân phối nội dung toàn cầu
- **SNS** cho thông báo
- **CloudWatch** cho giám sát

### Bắt đầu

Trong workshop này, bạn sẽ học cách xây dựng và triển khai InsightHR, hiểu từng thành phần và cách chúng hoạt động cùng nhau để tạo ra một nền tảng tự động hóa HR mạnh mẽ, có thể tùy chỉnh.

Hãy bắt đầu bằng cách hiểu vấn đề chi tiết hơn...
