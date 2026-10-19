<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="vi">
<head><meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1"><title>Kết quả Calculator</title><link rel="stylesheet" href="${pageContext.request.contextPath}/style.css"></head>
<body><main><h1>Kết quả tính toán</h1>
<c:choose>
    <c:when test="${not empty error}"><p class="error" role="alert"><c:out value="${error}" /></p></c:when>
    <c:otherwise><p class="result"><c:out value="${expression}" /></p></c:otherwise>
</c:choose>
<a href="${pageContext.request.contextPath}/">Quay lại máy tính</a>
</main></body></html>
