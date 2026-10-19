<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head><meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1"><title>Simple Calculator</title><link rel="stylesheet" href="style.css"></head>
<body><main>
<h1>Simple Calculator</h1>
<form action="${pageContext.request.contextPath}/calculate" method="post">
    <label for="firstOperand">Toán hạng thứ nhất</label>
    <input id="firstOperand" name="firstOperand" type="number" step="any" required>
    <label for="operator">Phép toán</label>
    <select id="operator" name="operator" required>
        <option value="+">Cộng (+)</option><option value="-">Trừ (-)</option>
        <option value="*">Nhân (*)</option><option value="/">Chia (/)</option>
    </select>
    <label for="secondOperand">Toán hạng thứ hai</label>
    <input id="secondOperand" name="secondOperand" type="number" step="any" required>
    <button type="submit">Tính kết quả</button>
</form>
</main></body></html>
