<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.ArrayList,java.util.List,java.util.Map,java.util.LinkedHashMap" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    // Tạo danh sách khách hàng có sẵn và đưa vào phạm vi request.
    String[][] data = {
        {"Nguyễn Văn An", "20/08/2000", "Hà Nội", "images/customer-1.png"},
        {"Trần Thị Bình", "15/03/2001", "Thái Nguyên", "images/customer-2.png"},
        {"Lê Minh Châu", "10/11/1999", "Bắc Giang", "images/customer-3.png"},
        {"Phạm Hoàng Dũng", "25/06/2002", "Đà Nẵng", "images/customer-4.png"},
        {"Hoàng Thu Hà", "08/09/2000", "Hải Phòng", "images/customer-5.png"}
    };
    List<Map<String, String>> customers = new ArrayList<>();
    for (String[] row : data) {
        Map<String, String> customer = new LinkedHashMap<>();
        customer.put("name", row[0]);
        customer.put("birthday", row[1]);
        customer.put("address", row[2]);
        customer.put("image", row[3]);
        customers.add(customer);
    }
    request.setAttribute("customers", customers);
%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Danh sách khách hàng</title>
    <style>
        * { box-sizing: border-box; }
        body { margin: 0; padding: 36px 16px; font-family: Arial, sans-serif; color: #222; background: #f4f6f8; }
        main { max-width: 900px; margin: auto; padding: 28px; background: white; border: 1px solid #ddd; border-radius: 8px; }
        h1 { margin: 0 0 24px; text-align: center; font-size: 28px; }
        .table-container { overflow-x: auto; }
        table { width: 100%; border-collapse: collapse; }
        caption { text-align: left; padding-bottom: 12px; color: #555; }
        th, td { border: 1px solid #d1d5db; padding: 12px 16px; text-align: left; }
        th { background: #eaf2fa; }
        tbody tr:nth-child(even) { background: #f8fafc; }
        .photo { text-align: center; width: 110px; }
        img { width: 64px; height: 64px; object-fit: cover; border-radius: 6px; vertical-align: middle; }
    </style>
</head>
<body>
<main>
    <h1>Danh sách khách hàng</h1>
    <div class="table-container">
        <table>
            <caption>Tổng số khách hàng: <c:out value="${customers.size()}" /></caption>
            <thead><tr><th scope="col">Tên</th><th scope="col">Ngày sinh</th><th scope="col">Địa chỉ</th><th scope="col" class="photo">Ảnh</th></tr></thead>
            <tbody>
                <%-- Duyệt danh sách bằng JSTL, xuất dữ liệu bằng c:out. --%>
                <c:forEach var="customer" items="${customers}">
                    <c:url var="imageUrl" value="/${customer.image}" />
                    <tr>
                        <td><c:out value="${customer.name}" /></td>
                        <td><c:out value="${customer.birthday}" /></td>
                        <td><c:out value="${customer.address}" /></td>
                        <td class="photo"><img src="<c:out value='${imageUrl}' />" alt="Ảnh đại diện khách hàng"></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</main>
</body>
</html>
