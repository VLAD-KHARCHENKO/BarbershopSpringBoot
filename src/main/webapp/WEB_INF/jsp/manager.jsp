<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html lang="en" class="wide wow-animation">
<head>
    <title><spring:message code="manager"/></title>
    <c:import url="head-part.jsp"/>
</head>

<body>
<div class="page">
    <c:import url="header-part.jsp"/>
    <main class="page-content">

        <section class="section-top-20 section-sm-top-40 section-sm-bottom-110">
            <div class="shell">
            <div class="range">
                <div class="cell-md-10 cell-lg-12">
                    <h5><spring:message code="hello"/> ${user.username}!</h5>
                    <h6><spring:message code="you.can.manager"/><a href="profile"
                                                                        class="search_link"><spring:message code="profile"/></a></h6>
                    <hr>
                    <div class="offset-top-32">
                        <div data-type="accordion" class="responsive-tabs responsive-tabs-horizontal">
                            <ul class="resp-tabs-list">
                                <li><spring:message code="new"/></li>
								<li><spring:message code="offer"/></li>
								<li><spring:message code="in.progress"/></li>
								<li><spring:message code="complete"/></li>
								<li><spring:message code="canceled"/></li>
                            </ul>
                            <div class="resp-tabs-container">
                                <div class="animated fadeIn">
                                    <section class="section-top-20 section-sm-top-20">
                                        <div class="shell">
                                            <div class="range">
                                                <div class="cell-md-10 cell-lg-12">
                                                    <div class="offset-top-32">
                                                        <div class="table-mobile">
                                                            <table class="table table-primary table-striped-variant-1">
                                                                <thead>
                                                                <tr>
                                                                    <th><spring:message code="order.id"/></th>
																	<th><spring:message code="date"/></th>
																	<th><spring:message code="repair.type"/></th>
																	<th><spring:message code="first.name"/></th>
																	<th><spring:message code="last.name"/></th>
																	<th><spring:message code="email"/></th>
																	<th><spring:message code="phone"/></th>
																	<th><spring:message code="price"/></th>
																	<th><spring:message code="edit"/></th>
                                                                </tr>
                                                                </thead>
                                                                <tbody>
                                                                <tr>
                                                                    <td>1</td>
                                                                    <td>2019-09-15</td>
                                                                    <td>REFRIGERATOR</td>
                                                                    <td>Timothy</td>
                                                                    <td>Richards</td>
                                                                    <td>@timothyrichards</td>
                                                                    <td>123-456-78-90</td>
                                                                    <td>500,00</td>
                                                                    <td>
                                                                        <a href="order-comment" class="search_link"><span
                                                                                class="icon icon-sm-variant-2 icon-primary fa-pencil-square-o"></span></a>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>2</td>
                                                                    <td>2019-09-15</td>
                                                                    <td>REFRIGERATOR</td>
                                                                    <td>Timothy</td>
                                                                    <td>Richards</td>
                                                                    <td>@timothyrichards</td>
                                                                    <td>123-456-78-90</td>
                                                                    <td>500,00</td>
                                                                    <td>
                                                                        <a href="order-comment" class="search_link"><span
                                                                                class="icon icon-sm-variant-2 icon-primary fa-pencil-square-o"></span></a>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>3</td>
                                                                    <td>2019-09-15</td>
                                                                    <td>REFRIGERATOR</td>
                                                                    <td>Timothy</td>
                                                                    <td>Richards</td>
                                                                    <td>@timothyrichards</td>
                                                                    <td>123-456-78-90</td>
                                                                    <td>500,00</td>
                                                                    <td>
                                                                        <a href="order-comment" class="search_link"><span
                                                                                class="icon icon-sm-variant-2 icon-primary fa-pencil-square-o"></span></a>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>4</td>
                                                                    <td>2019-09-15</td>
                                                                    <td>REFRIGERATOR</td>
                                                                    <td>Timothy</td>
                                                                    <td>Richards</td>
                                                                    <td>@timothyrichards</td>
                                                                    <td>123-456-78-90</td>
                                                                    <td>500,00</td>
                                                                    <td>
                                                                        <a href="order-comment" class="search_link"><span
                                                                                class="icon icon-sm-variant-2 icon-primary fa-pencil-square-o"></span></a>
                                                                    </td>
                                                                </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </section>
                                </div>
                                <div class="animated fadeIn">
                                    <section class="section-top-20 section-sm-top-20">
                                        <div class="shell">
                                            <div class="range">
                                                <div class="cell-md-10 cell-lg-12">
                                                    <div class="offset-top-32">
                                                        <div class="table-mobile">
                                                            <table class="table table-primary table-striped-variant-1">
                                                                <thead>
                                                                <tr>
                                                                    <th><spring:message code="order.id"/></th>
																	<th><spring:message code="date"/></th>
																	<th><spring:message code="repair.type"/></th>
																	<th><spring:message code="first.name"/></th>
																	<th><spring:message code="last.name"/></th>
																	<th><spring:message code="email"/></th>
																	<th><spring:message code="phone"/></th>
																	<th><spring:message code="price"/></th>
																	<th><spring:message code="edit"/></th>
                                                                </tr>
                                                                </thead>
                                                                <tbody>
                                                                <tr>
                                                                    <td>1</td>
                                                                    <td>2019-09-15</td>
                                                                    <td>REFRIGERATOR</td>
                                                                    <td>Timothy</td>
                                                                    <td>Richards</td>
                                                                    <td>@timothyrichards</td>
                                                                    <td>123-456-78-90</td>
                                                                    <td>500,00</td>
                                                                    <td>
                                                                        <a href="order-comment" class="search_link"><span
                                                                                class="icon icon-sm-variant-2 icon-primary fa-pencil-square-o"></span></a>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>2</td>
                                                                    <td>2019-09-15</td>
                                                                    <td>REFRIGERATOR</td>
                                                                    <td>Timothy</td>
                                                                    <td>Richards</td>
                                                                    <td>@timothyrichards</td>
                                                                    <td>123-456-78-90</td>
                                                                    <td>500,00</td>
                                                                    <td>
                                                                        <a href="order-comment" class="search_link"><span
                                                                                class="icon icon-sm-variant-2 icon-primary fa-pencil-square-o"></span></a>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>3</td>
                                                                    <td>2019-09-15</td>
                                                                    <td>REFRIGERATOR</td>
                                                                    <td>Timothy</td>
                                                                    <td>Richards</td>
                                                                    <td>@timothyrichards</td>
                                                                    <td>123-456-78-90</td>
                                                                    <td>500,00</td>
                                                                    <td>
                                                                        <a href="order-comment" class="search_link"><span
                                                                                class="icon icon-sm-variant-2 icon-primary fa-pencil-square-o"></span></a>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>4</td>
                                                                    <td>2019-09-15</td>
                                                                    <td>REFRIGERATOR</td>
                                                                    <td>Timothy</td>
                                                                    <td>Richards</td>
                                                                    <td>@timothyrichards</td>
                                                                    <td>123-456-78-90</td>
                                                                    <td>500,00</td>
                                                                    <td>
                                                                        <a href="order-comment" class="search_link"><span
                                                                                class="icon icon-sm-variant-2 icon-primary fa-pencil-square-o"></span></a>
                                                                    </td>
                                                                </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </section>
                                </div>
                                <div class="animated fadeIn">
                                    <section class="section-top-20 section-sm-top-20">
                                        <div class="shell">
                                            <div class="range">
                                                <div class="cell-md-10 cell-lg-12">
                                                    <div class="offset-top-32">
                                                        <div class="table-mobile">
                                                            <table class="table table-primary table-striped-variant-1">
                                                                <thead>
                                                                <tr>
                                                                    <th><spring:message code="order.id"/></th>
																	<th><spring:message code="date"/></th>
																	<th><spring:message code="repair.type"/></th>
																	<th><spring:message code="first.name"/></th>
																	<th><spring:message code="last.name"/></th>
																	<th><spring:message code="email"/></th>
																	<th><spring:message code="phone"/></th>
																	<th><spring:message code="price"/></th>
																	<th><spring:message code="edit"/></th>
                                                                </tr>
                                                                </thead>
                                                                <tbody>
                                                                <tr>
                                                                    <td>1</td>
                                                                    <td>2019-09-15</td>
                                                                    <td>REFRIGERATOR</td>
                                                                    <td>Timothy</td>
                                                                    <td>Richards</td>
                                                                    <td>@timothyrichards</td>
                                                                    <td>123-456-78-90</td>
                                                                    <td>500,00</td>
                                                                    <td>
                                                                        <a href="order-comment" class="search_link"><span
                                                                                class="icon icon-sm-variant-2 icon-primary fa-pencil-square-o"></span></a>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>2</td>
                                                                    <td>2019-09-15</td>
                                                                    <td>REFRIGERATOR</td>
                                                                    <td>Timothy</td>
                                                                    <td>Richards</td>
                                                                    <td>@timothyrichards</td>
                                                                    <td>123-456-78-90</td>
                                                                    <td>500,00</td>
                                                                    <td>
                                                                        <a href="order-comment" class="search_link"><span
                                                                                class="icon icon-sm-variant-2 icon-primary fa-pencil-square-o"></span></a>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>3</td>
                                                                    <td>2019-09-15</td>
                                                                    <td>REFRIGERATOR</td>
                                                                    <td>Timothy</td>
                                                                    <td>Richards</td>
                                                                    <td>@timothyrichards</td>
                                                                    <td>123-456-78-90</td>
                                                                    <td>500,00</td>
                                                                    <td>
                                                                        <a href="order-comment" class="search_link"><span
                                                                                class="icon icon-sm-variant-2 icon-primary fa-pencil-square-o"></span></a>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>4</td>
                                                                    <td>2019-09-15</td>
                                                                    <td>REFRIGERATOR</td>
                                                                    <td>Timothy</td>
                                                                    <td>Richards</td>
                                                                    <td>@timothyrichards</td>
                                                                    <td>123-456-78-90</td>
                                                                    <td>500,00</td>
                                                                    <td>
                                                                        <a href="order-comment" class="search_link"><span
                                                                                class="icon icon-sm-variant-2 icon-primary fa-pencil-square-o"></span></a>
                                                                    </td>
                                                                </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </section>
                                </div>
                                <div class="animated fadeIn">
                                    <section class="section-top-20 section-sm-top-20">
                                        <div class="shell">
                                            <div class="range">
                                                <div class="cell-md-10 cell-lg-12">
                                                    <div class="offset-top-32">
                                                        <div class="table-mobile">
                                                            <table class="table table-primary table-striped-variant-1">
                                                                <thead>
                                                                <tr>
                                                                    <th><spring:message code="order.id"/></th>
																	<th><spring:message code="date"/></th>
																	<th><spring:message code="repair.type"/></th>
																	<th><spring:message code="first.name"/></th>
																	<th><spring:message code="last.name"/></th>
																	<th><spring:message code="email"/></th>
																	<th><spring:message code="phone"/></th>
																	<th><spring:message code="price"/></th>
																	<th><spring:message code="edit"/></th>
                                                                </tr>
                                                                </thead>
                                                                <tbody>
                                                                <tr>
                                                                    <td>1</td>
                                                                    <td>2019-09-15</td>
                                                                    <td>REFRIGERATOR</td>
                                                                    <td>Timothy</td>
                                                                    <td>Richards</td>
                                                                    <td>@timothyrichards</td>
                                                                    <td>123-456-78-90</td>
                                                                    <td>500,00</td>
                                                                    <td>
                                                                        <a href="order-comment" class="search_link"><span
                                                                                class="icon icon-sm-variant-2 icon-primary fa-pencil-square-o"></span></a>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>2</td>
                                                                    <td>2019-09-15</td>
                                                                    <td>REFRIGERATOR</td>
                                                                    <td>Timothy</td>
                                                                    <td>Richards</td>
                                                                    <td>@timothyrichards</td>
                                                                    <td>123-456-78-90</td>
                                                                    <td>500,00</td>
                                                                    <td>
                                                                        <a href="order-comment" class="search_link"><span
                                                                                class="icon icon-sm-variant-2 icon-primary fa-pencil-square-o"></span></a>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>3</td>
                                                                    <td>2019-09-15</td>
                                                                    <td>REFRIGERATOR</td>
                                                                    <td>Timothy</td>
                                                                    <td>Richards</td>
                                                                    <td>@timothyrichards</td>
                                                                    <td>123-456-78-90</td>
                                                                    <td>500,00</td>
                                                                    <td>
                                                                        <a href="order-comment" class="search_link"><span
                                                                                class="icon icon-sm-variant-2 icon-primary fa-pencil-square-o"></span></a>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>4</td>
                                                                    <td>2019-09-15</td>
                                                                    <td>REFRIGERATOR</td>
                                                                    <td>Timothy</td>
                                                                    <td>Richards</td>
                                                                    <td>@timothyrichards</td>
                                                                    <td>123-456-78-90</td>
                                                                    <td>500,00</td>
                                                                    <td>
                                                                        <a href="order-comment" class="search_link"><span
                                                                                class="icon icon-sm-variant-2 icon-primary fa-pencil-square-o"></span></a>
                                                                    </td>
                                                                </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </section>
                                </div>
                                <div class="animated fadeIn">
                                    <section class="section-top-20 section-sm-top-20">
                                        <div class="shell">
                                            <div class="range">
                                                <div class="cell-md-10 cell-lg-12">
                                                    <div class="offset-top-32">
                                                        <div class="table-mobile">
                                                            <table class="table table-primary table-striped-variant-1">
                                                                <thead>
                                                                <tr>
                                                                    <th><spring:message code="order.id"/></th>
																	<th><spring:message code="date"/></th>
																	<th><spring:message code="repair.type"/></th>
																	<th><spring:message code="first.name"/></th>
																	<th><spring:message code="last.name"/></th>
																	<th><spring:message code="email"/></th>
																	<th><spring:message code="phone"/></th>
																	<th><spring:message code="price"/></th>
																	<th><spring:message code="edit"/></th>
                                                                </tr>
                                                                </thead>
                                                                <tbody>
                                                                <tr>
                                                                    <td>1</td>
                                                                    <td>2019-09-15</td>
                                                                    <td>REFRIGERATOR</td>
                                                                    <td>Timothy</td>
                                                                    <td>Richards</td>
                                                                    <td>@timothyrichards</td>
                                                                    <td>123-456-78-90</td>
                                                                    <td>500,00</td>
                                                                    <td>
                                                                        <a href="order-comment" class="search_link"><span
                                                                                class="icon icon-sm-variant-2 icon-primary fa-pencil-square-o"></span></a>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>2</td>
                                                                    <td>2019-09-15</td>
                                                                    <td>REFRIGERATOR</td>
                                                                    <td>Timothy</td>
                                                                    <td>Richards</td>
                                                                    <td>@timothyrichards</td>
                                                                    <td>123-456-78-90</td>
                                                                    <td>500,00</td>
                                                                    <td>
                                                                        <a href="order-comment" class="search_link"><span
                                                                                class="icon icon-sm-variant-2 icon-primary fa-pencil-square-o"></span></a>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>3</td>
                                                                    <td>2019-09-15</td>
                                                                    <td>REFRIGERATOR</td>
                                                                    <td>Timothy</td>
                                                                    <td>Richards</td>
                                                                    <td>@timothyrichards</td>
                                                                    <td>123-456-78-90</td>
                                                                    <td>500,00</td>
                                                                    <td>
                                                                        <a href="order-comment" class="search_link"><span
                                                                                class="icon icon-sm-variant-2 icon-primary fa-pencil-square-o"></span></a>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>4</td>
                                                                    <td>2019-09-15</td>
                                                                    <td>REFRIGERATOR</td>
                                                                    <td>Timothy</td>
                                                                    <td>Richards</td>
                                                                    <td>@timothyrichards</td>
                                                                    <td>123-456-78-90</td>
                                                                    <td>500,00</td>
                                                                    <td>
                                                                        <a href="order-comment" class="search_link"><span
                                                                                class="icon icon-sm-variant-2 icon-primary fa-pencil-square-o"></span></a>
                                                                    </td>
                                                                </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </section>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


    </main>
    <c:import url="footer-part.jsp"/>
</div>
<c:import url="form-output-global.jsp"/>
</body>
<!-- End Google Tag Manager -->
</html>