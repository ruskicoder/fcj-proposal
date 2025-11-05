---
title: "Triển khai kỹ thuật"
date: "2025-11-05"
lastmod: "2025-11-05"
weight: 4
chapter: false
pre: " <b> 4. </b> "
---

## Triển khai kỹ thuật

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
