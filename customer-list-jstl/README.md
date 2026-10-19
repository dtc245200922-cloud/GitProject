# Hiển thị danh sách khách hàng bằng JSTL

Bài tập JSP: hiển thị 5 khách hàng gồm tên, ngày sinh, địa chỉ và ảnh đại diện minh họa lưu trong dự án. Không cần cơ sở dữ liệu.

## Yêu cầu
- JDK 8 trở lên, Maven 3 và Apache Tomcat 9.
- Dự án sử dụng javax JSTL 1.2 theo URI trong đề bài; không dùng trực tiếp với Tomcat 10/11 (Jakarta).

## Chạy dự án
1. Giải nén và mở thư mục chứa `pom.xml` bằng IntelliJ IDEA hoặc Eclipse.
2. Mở terminal tại thư mục đó, chạy `mvn clean package` (lần đầu cần mạng để tải dependency).
3. Sao chép `target/customer-list-jstl.war` vào thư mục `webapps` của Tomcat 9.
4. Chạy `bin/startup.bat` trên Windows hoặc `bin/startup.sh` trên Linux/macOS.
5. Mở http://localhost:8080/customer-list-jstl/ (nếu Tomcat dùng cổng khác, thay 8080).

Không mở index.jsp bằng cách nhấp đúp hoặc Live Server vì JSP cần máy chủ Java.

## Cấu trúc
- `pom.xml`: cấu hình Maven và thư viện JSTL.
- `src/main/webapp/index.jsp`: tạo dữ liệu mẫu, dùng c:forEach duyệt danh sách và c:out hiển thị dữ liệu.
- `src/main/webapp/images/`: 5 ảnh đại diện minh họa, không cần tải ảnh ngoài.

## Đưa lên GitHub bằng giao diện web
1. Tạo repository tên `customer-list-jstl` trên GitHub.
2. Chọn `uploading an existing file` hoặc `Add file > Upload files`.
3. Kéo toàn bộ nội dung bên trong thư mục dự án đã giải nén vào trang upload. Giữ nguyên thư mục `src` và đặt `pom.xml` ở gốc repository. Không chỉ tải file ZIP lên.
4. Chọn `Commit changes`.
5. Sao chép URL repository để dán vào phần nộp bài.

## Đưa lên GitHub bằng Git
Tạo repository trống rồi chạy trong thư mục chứa pom.xml (thay TEN_TAI_KHOAN bằng tài khoản thực tế):

```bash
git init
git add .
git commit -m "Hoan thanh bai tap danh sach khach hang JSTL"
git branch -M main
git remote add origin https://github.com/TEN_TAI_KHOAN/customer-list-jstl.git
git push -u origin main
```

## Kiểm tra kết quả
Trang hiển thị tiêu đề, tổng số 5 khách hàng và bảng 4 cột. Mỗi dòng có một ảnh. Danh sách được dựng bằng c:forEach trong index.jsp.
