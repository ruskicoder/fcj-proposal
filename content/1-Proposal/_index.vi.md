---
title: "Đề xuất"
date: "2025-11-09"
lastmod: "2025-11-09"
weight: 1
chapter: false
pre: " <b> 1. </b> "
---

## I. Giới thiệu về InsightHR

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

Trong đề xuất này, bạn sẽ hiểu cách xây dựng và triển khai InsightHR, hiểu từng thành phần và cách chúng hoạt động cùng nhau để tạo ra một nền tảng tự động hóa HR mạnh mẽ, có thể tùy chỉnh.

Hãy bắt đầu bằng cách hiểu vấn đề chi tiết hơn...


## II. Tuyên bố vấn đề

### Thách thức

Ở các doanh nghiệp hiện tại, đặc biệt là trong lĩnh vực công nghệ nơi các vai trò và chỉ số hiệu suất rất đa dạng, việc đánh giá nhân sự thường tốn nhiều thời gian, mang tính thủ công và dễ bị ảnh hưởng bởi các yếu tố chủ quan, thiên vị. Hơn nữa, các công cụ có sẵn thường áp đặt một quy trình cứng nhắc, không phù hợp với văn hóa và mục tiêu riêng của từng công ty.

### Giải pháp: InsightHR

InsightHR ra đời để giải quyết vấn đề này. Đây là một ứng dụng serverless, sử dụng các dịch vụ của AWS, cho phép các doanh nghiệp:

- **Số hóa và tùy chỉnh quy trình đánh giá** bằng cách tự định nghĩa các KPI và công thức tính điểm
- **Tự động hóa việc chấm điểm và tổng hợp kết quả**
- **Theo dõi hiệu suất** của cá nhân/phòng ban/công ty một cách trực quan qua biểu đồ
- **Hỗ trợ HR đưa ra quyết định dựa trên dữ liệu** thông qua chatbot trợ lý

### Lợi ích

Ứng dụng giúp HR tối ưu hóa thời gian, tăng cường tính minh bạch, công bằng và xây dựng một quy trình quản trị nhân sự linh hoạt, phù hợp với đặc thù của từng doanh nghiệp.

#### Ưu điểm chính

1. **Linh hoạt**: Mỗi tổ chức có thể định nghĩa KPI và tiêu chí đánh giá độc nhất của riêng mình
2. **Tự động hóa**: Loại bỏ việc chấm điểm thủ công và giảm thiểu sai sót con người
3. **Minh bạch**: Quy trình đánh giá rõ ràng, dựa trên dữ liệu
4. **Khả năng mở rộng**: Kiến trúc serverless phát triển cùng nhu cầu của bạn
5. **Thông tin chi tiết từ AI**: Truy vấn ngôn ngữ tự nhiên để hiểu dữ liệu hiệu suất

### Đối tượng mục tiêu

- **Công ty IT**: Với các vai trò đa dạng cần chỉ số đánh giá tùy chỉnh
- **Doanh nghiệp vừa và nhỏ**: Muốn hiện đại hóa quy trình HR một cách tiết kiệm chi phí
- **Tổ chức đang phát triển**: Cần giải pháp tự động hóa HR có khả năng mở rộng
- **Nhóm định hướng dữ liệu**: Muốn tận dụng phân tích để đưa ra quyết định HR tốt hơn


## III. Kiến trúc tổng quan

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


## IV. Triển khai kỹ thuật

### Cụm chức năng Đăng nhập & Bảo mật

**Quản lý người dùng**:
- Sử dụng Amazon Cognito để quản lý người dùng (đăng ký, đăng nhập, quên mật khẩu)
- Quyền truy cập được phân chia rõ ràng (ví dụ: Admin/HR, Manager, Employee) thông qua IAM, giới hạn các hành động người dùng có thể thực hiện

**Tính năng bảo mật**:
- Hỗ trợ xác thực đa yếu tố (MFA)
- Kiểm soát truy cập dựa trên vai trò (RBAC)
- Mã hóa dữ liệu lưu trữ sử dụng KMS
- Bảo mật các API endpoint với JWT tokens

### Cụm chức năng Quản trị & Tùy biến (Admin Panel - Dành cho HR)

**Quản lý KPI**:
- Giao diện cho phép HR tạo, sửa, xóa các chỉ số đánh giá (KPIs) riêng cho công ty
- Ví dụ: Tasks Completed, Code Quality Score, Customer Satisfaction
- Mỗi KPI có thể có kiểu dữ liệu, khoảng giá trị và quy tắc xác thực tùy chỉnh

**Xây dựng công thức**:
- Giao diện trực quan cho phép HR xây dựng công thức tính điểm hiệu suất
- Chọn các KPI đã tạo và gán trọng số cho chúng
- Chức năng xác thực và xem trước công thức
- Công thức được lưu vào DynamoDB để thực thi

**Ví dụ công thức**:
```
Điểm cuối cùng = (Tasks Completed × 0.3) + (Code Quality × 0.4) + (Customer Satisfaction × 0.3)
```

### Cụm chức năng chính (User-facing)

#### Tải lên dữ liệu

- Người dùng (HR/Manager) có thể tải lên file dữ liệu hiệu suất (CSV, Excel)
- Giao diện yêu cầu ánh xạ (map) các cột trong file với các KPI đã được định nghĩa trong hệ thống
- Xác thực dữ liệu và báo cáo lỗi
- Xem trước trước khi import cuối cùng

#### Chấm điểm tự động

Khi dữ liệu được tải lên, một hàm Lambda sẽ được kích hoạt để:

1. **Đọc dữ liệu** từ file được tải lên
2. **Truy xuất** công thức tính điểm đang hoạt động của công ty từ DynamoDB
3. **Áp dụng** công thức lên dữ liệu để tính toán điểm số cuối cùng cho từng nhân viên
4. **Lưu** kết quả vào bảng Performance Score trong DynamoDB
5. **Tạo** phân tích và thông tin chi tiết

**Luồng xử lý**:
```
Tải lên → Xác thực → Ánh xạ KPI → Tính toán → Lưu trữ → Thông báo
```

#### Dashboard & Biểu đồ

- Trực quan hóa dữ liệu điểm số đã được xử lý
- Theo dõi hiệu suất cá nhân và phòng ban theo thời gian
- Nhiều loại biểu đồ: đồ thị đường, biểu đồ cột, bản đồ nhiệt
- Lọc theo khoảng thời gian, phòng ban hoặc cá nhân
- Khả năng xuất báo cáo

#### Quản lý và thông báo

- Tự động lọc và gửi thông báo (qua SNS) đến các nhân viên
- Dựa trên các điều kiện được định sẵn:
  - Cảnh báo nhân viên vắng mặt
  - Nhắc nhở khảo sát chưa hoàn thành
  - Thông báo milestone hiệu suất
  - Cảnh báo tùy chỉnh dựa trên trigger

#### Chatbot (HR Assistant)

Tích hợp chatbot (Lex + Bedrock) cho phép người dùng truy vấn dữ liệu bằng ngôn ngữ tự nhiên.

**Ví dụ truy vấn**:
- "Tóm tắt hiệu suất của team A trong quý 4?"
- "Những nhân viên nào có điểm hiệu suất cao nhất tháng này?"
- "Cho tôi xem xu hướng của phòng kỹ thuật"
- "So sánh kết quả quý này với quý trước"

**Chi tiết kỹ thuật**:
- Xử lý ngôn ngữ tự nhiên qua Amazon Lex
- Hội thoại nhận biết ngữ cảnh
- Tích hợp với DynamoDB để truy xuất dữ liệu
- Sử dụng Claude 3 Sonnet qua Bedrock cho phản hồi thông minh

### Cấu trúc API

**Các API Endpoint chính**:
- `/auth/*` - Xác thực và phân quyền
- `/kpi/*` - Quản lý KPI (các thao tác CRUD)
- `/formula/*` - Quản lý công thức
- `/upload/*` - Tải lên và xử lý dữ liệu
- `/scores/*` - Truy xuất điểm hiệu suất
- `/analytics/*` - Phân tích và báo cáo
- `/notifications/*` - Quản lý thông báo
- `/chat/*` - Tương tác chatbot

### Mô hình dữ liệu

**Nhân viên**:
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

**Định nghĩa KPI**:
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

**Điểm hiệu suất**:
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


## V. Lộ trình triển khai

### Giai đoạn 1: Xây dựng Nền tảng Tùy biến - MVP (Tháng 1 & 2)

**Mục tiêu**:
- Hoàn thiện luồng đăng nhập, phân quyền cơ bản (Admin, User)
- Xây dựng Admin Panel cho phép HR tạo KPI và xây dựng công thức tính điểm động
- Triển khai chức năng tải file dữ liệu, ánh xạ cột và chấm điểm tự động dựa trên công thức tùy biến
- Xây dựng một dashboard cơ bản để hiển thị kết quả dạng bảng và biểu đồ đơn giản

**Các sản phẩm đầu ra**:
- Hệ thống xác thực hoạt động với Cognito
- Admin panel để quản lý KPI và công thức
- Pipeline tải lên và xử lý dữ liệu
- Dashboard hiệu suất cơ bản

**Các mốc quan trọng**:
- Tuần 2: Hoàn thành xác thực và quản lý người dùng
- Tuần 4: Hệ thống quản lý KPI hoạt động
- Tuần 6: Công cụ xây dựng công thức và engine chấm điểm vận hành
- Tuần 8: Triển khai dashboard MVP

### Giai đoạn 2: Hoàn thiện và Mở rộng tính năng (Tháng 3 & 4)

**Mục tiêu**:
- Tích hợp Chatbot (HR Assistant) để trả lời các câu hỏi liên quan đến công việc HR và cung cấp thông tin chi tiết
- Hoàn thiện chức năng gửi thông báo tự động qua SNS
- Nâng cấp dashboard với các bộ lọc và biểu đồ phân tích sâu hơn
- Tiến hành kiểm thử toàn diện, thu thập phản hồi và tinh chỉnh ứng dụng

**Các sản phẩm đầu ra**:
- Chatbot hỗ trợ AI cho truy vấn ngôn ngữ tự nhiên
- Hệ thống thông báo tự động
- Dashboard phân tích nâng cao
- Ứng dụng sẵn sàng production

**Các mốc quan trọng**:
- Tuần 10: Hoàn thành tích hợp chatbot
- Tuần 12: Hệ thống thông báo hoạt động
- Tuần 14: Triển khai các tính năng dashboard nâng cao
- Tuần 16: Kiểm thử, tối ưu hóa và ra mắt

### Tiêu chí thành công

- **Hiệu suất**: Hệ thống phản hồi nhanh cho phần lớn các yêu cầu
- **Khả năng mở rộng**: Xử lý nhiều người dùng đồng thời một cách hiệu quả
- **Độ tin cậy**: Thời gian hoạt động và tính sẵn sàng cao của hệ thống
- **Sự hài lòng của người dùng**: Phản hồi tích cực từ người dùng thử nghiệm
- **Hiệu quả chi phí**: Duy trì trong ngân sách AWS đã lập


## VI. Ước tính ngân sách

Phân tích dưới đây dựa trên mô hình định giá của AWS tại thời điểm đề xuất và ước tính cho một kịch bản sử dụng ở quy mô nhỏ (MVP/Demo).

### Chi phí dịch vụ AWS (Giá tham khảo)

| Dịch vụ | Giá |
|---------|-----|
| Amazon Route 53 | $0.50 mỗi hosted zone/tháng |
| Amazon CloudFront | $0.009 mỗi 10,000 HTTP requests<br>$0.12 mỗi GB data transfer out |
| Amazon API Gateway | $1.00 mỗi triệu HTTP requests |
| Amazon S3 Standard | $0.025 mỗi GB/tháng |
| Amazon DynamoDB | $0.0074 mỗi GB/tháng (Indexed Storage) |
| Amazon CloudWatch | $0.30 mỗi metric/tháng |
| Amazon SNS | $0.50 mỗi triệu requests (sau free tier) |
| Amazon Cognito | Miễn phí 10,000 MAU<br>$0.015 mỗi MAU sau đó |
| AWS IAM | Miễn phí |
| AWS KMS | $1.00 mỗi 10,000 API calls |
| Amazon Bedrock (Claude 3 Sonnet) | $0.003 mỗi 1,000 input tokens<br>$0.015 mỗi 1,000 output tokens |
| AWS Lambda | Miễn phí: 1M requests + 400,000 GB-giây/tháng<br>$0.00001667 mỗi GB-giây (x86)<br>$0.2 mỗi triệu requests |
| Amazon Lex | $0.004 mỗi text request |
| CloudWatch Logs | $0.50 mỗi GiB cho 30 ngày lưu trữ<br>Miễn phí: 50 GiB |

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


## VII. Đánh giá rủi ro và Giải pháp

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


## VIII. Kết quả kỳ vọng & Kế hoạch tương lai

### Kết quả kỳ vọng

#### 1. Sản phẩm MVP hoạt động

Một sản phẩm MVP hoạt động ổn định, chứng minh được tính khả thi của kiến trúc serverless và giải pháp nền tảng tùy biến.

**Tính năng chính**:
- Hệ thống xác thực và phân quyền hoạt động đầy đủ
- Quản lý KPI và công thức tùy chỉnh
- Engine chấm điểm tự động
- Dashboard tương tác với trực quan hóa
- Trợ lý chatbot hỗ trợ AI
- Hệ thống thông báo

#### 2. Tác động kinh doanh

Cung cấp một công cụ mạnh mẽ, tiết kiệm chi phí cho các doanh nghiệp vừa và nhỏ để hiện đại hóa quy trình quản trị nhân sự.

**Lợi ích cho tổ chức**:
- Giảm 60-70% thời gian quản trị HR
- Loại bỏ lỗi chấm điểm thủ công
- Tăng tính minh bạch trong đánh giá hiệu suất
- Cho phép ra quyết định HR dựa trên dữ liệu
- Cải thiện sự gắn kết của nhân viên thông qua các chỉ số rõ ràng, công bằng

#### 3. Xác thực kỹ thuật

Chứng minh tính khả thi của:
- Kiến trúc serverless cho ứng dụng HR
- Tích hợp AI để hỗ trợ HR
- Hệ thống đánh giá dựa trên công thức tùy chỉnh
- Thiết kế đa tenant có khả năng mở rộng

### Kế hoạch phát triển tương lai

#### Giai đoạn 3: Cải tiến AI (Tháng 5-8)

**Thông tin chi tiết hỗ trợ AI**:
Khi có đủ dữ liệu, phát triển các mô hình AI có khả năng:
- Xác định các mẫu hiệu suất qua các nhóm và phòng ban
- Dự báo rủi ro HR (ví dụ: khả năng nghỉ việc, chỉ số kiệt sức)
- Đề xuất kế hoạch phát triển cá nhân hóa
- Phát hiện bất thường trong dữ liệu hiệu suất
- Gợi ý cấu trúc nhóm tối ưu

**Tính năng học máy**:
- Phân tích dự đoán cho lập kế hoạch nhân lực
- Phân tích cảm xúc từ phản hồi nhân viên
- Phân tích khoảng trống kỹ năng tự động
- Dự báo xu hướng hiệu suất

#### Giai đoạn 4: Phát triển API công khai (Tháng 9-12)

**Hệ sinh thái API**:
Xây dựng bộ API toàn diện cho phép các hệ thống nội bộ khác của doanh nghiệp tự động đẩy dữ liệu hiệu suất vào InsightHR.

**Mục tiêu tích hợp**:
- Công cụ quản lý dự án (Jira, Asana, Monday.com)
- Hệ thống CRM (Salesforce, HubSpot)
- Phần mềm theo dõi thời gian (Toggl, Harvest)
- Nền tảng giao tiếp (Slack, Microsoft Teams)
- Kho code (GitHub, GitLab, Bitbucket)

**Lợi ích**:
- Biến InsightHR thành trung tâm xử lý dữ liệu HR
- Tạo ra một hệ sinh thái quản trị đồng bộ và toàn diện
- Loại bỏ nhập dữ liệu thủ công
- Theo dõi hiệu suất thời gian thực

#### Giai đoạn 5: Tính năng nâng cao (Năm 2)

**Ứng dụng di động**:
- Ứng dụng native iOS và Android
- Thông báo đẩy
- Khả năng offline
- Dashboard tối ưu cho di động

**Phân tích nâng cao**:
- Mô hình dự đoán
- So sánh tiêu chuẩn qua các ngành
- Công cụ xây dựng báo cáo tùy chỉnh
- Xuất dữ liệu và API cho công cụ bên thứ ba

**Tính năng cộng tác**:
- Hệ thống đánh giá ngang hàng
- Phản hồi 360 độ
- Thiết lập và theo dõi mục tiêu
- Kế hoạch cải thiện hiệu suất

**Tuân thủ & Quản trị**:
- Nhật ký kiểm toán
- Báo cáo tuân thủ
- Chính sách lưu giữ dữ liệu
- Kiểm soát truy cập nâng cao

### Tầm nhìn dài hạn

Biến InsightHR thành nền tảng tự động hóa HR tùy biến hàng đầu, cho phép các tổ chức thuộc mọi quy mô:

1. **Số hóa** các quy trình HR độc đáo của họ mà không cần thỏa hiệp
2. **Tự động hóa** các tác vụ lặp đi lặp lại và tập trung vào các sáng kiến chiến lược
3. **Phân tích** dữ liệu nhân lực với thông tin chi tiết hỗ trợ AI
4. **Tích hợp** liền mạch với ngăn xếp công nghệ hiện có của họ
5. **Mở rộng quy mô** một cách dễ dàng khi họ phát triển

### Chỉ số thành công (Năm 1)

- **Chấp nhận**: 50+ tổ chức sử dụng nền tảng
- **Sự hài lòng của người dùng**: Điểm NPS > 50
- **Hiệu suất**: 99.9% thời gian hoạt động
- **Hiệu quả chi phí**: Tiết kiệm chi phí trung bình 40% so với phần mềm HR truyền thống
- **Tiết kiệm thời gian**: Giảm 60%+ các tác vụ quản trị HR
- **Độ chính xác dữ liệu**: 95%+ độ chính xác trong chấm điểm tự động

### Cơ hội thị trường

- Quy mô thị trường công nghệ HR toàn cầu: $30+ tỷ USD
- Nhu cầu ngày càng tăng đối với các giải pháp tùy biến
- Chuyển đổi sang ứng dụng serverless và cloud-native
- Tầm quan trọng ngày càng tăng của quyết định HR dựa trên dữ liệu
- Làm việc từ xa thúc đẩy nhu cầu về công cụ HR kỹ thuật số

InsightHR được định vị để giành được một phần đáng kể của thị trường đang phát triển này bằng cách cung cấp tính linh hoạt vô song và công nghệ hiện đại với giá cạnh tranh.
