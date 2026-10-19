# Ứng dụng Calculator — Servlet và JSP

Ứng dụng nhập hai toán hạng và chọn cộng, trừ, nhân, chia. Servlet nhận dữ liệu POST, gọi `Calculator.calculate()` rồi chuyển tiếp đến JSP để hiển thị kết quả hoặc thông báo lỗi.

## Công nghệ
Java 8+, Maven 3, Servlet 4, JSP và JSTL 1.2. Chạy trên **Tomcat 9**, không dùng trực tiếp Tomcat 10/11 do khác namespace javax/jakarta. Không cần cơ sở dữ liệu.

## Chạy ứng dụng
1. Mở thư mục chứa `pom.xml` trong IntelliJ IDEA hoặc Eclipse.
2. Chạy `mvn clean package` trong terminal. Cần kết nối mạng để tải dependencies lần đầu.
3. Chép `target/servlet-calculator.war` vào thư mục `webapps` của Tomcat 9.
4. Chạy `bin/startup.bat` (Windows) hoặc `bin/startup.sh` (Linux/macOS).
5. Truy cập http://localhost:8080/servlet-calculator/ . Thay cổng nếu Tomcat không chạy ở 8080.

Không mở JSP bằng Live Server. GitHub Pages không thực thi Servlet/JSP.

## Mã nguồn
- `index.jsp`: form nhập hai toán hạng và chọn phép toán.
- `Calculator.java`: calculate() thực hiện phép toán; ném ArithmeticException khi chia cho 0.
- `CalculatorServlet.java`: xử lý POST /calculate, bắt ngoại lệ bằng try/catch và chuyển tiếp kết quả.
- `WEB-INF/result.jsp`: hiển thị kết quả hoặc lỗi; c:out escape nội dung.
- `CalculatorTest.java`: 10 trường hợp kiểm thử; chạy bằng `mvn test`.

## Kiểm tra trên trình duyệt
| Dữ liệu | Kết quả mong đợi |
|---|---|
| 5 + 3 | 8.0 |
| 5 - 3 | 2.0 |
| -5 * 3 | -15.0 |
| 5 / 2 | 2.5 |
| 5 / 0 | Không thể chia cho 0. |
| Bỏ trống toán hạng | Form yêu cầu nhập dữ liệu |

Các phép tính sử dụng double, vì vậy một số số thập phân có thể có sai số biểu diễn.

## Nộp bài
Đưa toàn bộ mã nguồn lên repository GitHub, giữ `pom.xml` và `src` ở thư mục gốc. Dán link repository vào phần nộp bài; không chỉ tải file ZIP lên.
