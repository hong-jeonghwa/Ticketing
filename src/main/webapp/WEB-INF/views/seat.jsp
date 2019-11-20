<%--
  Created by IntelliJ IDEA.
  User: stu
  Date: 2019-11-18
  Time: 오전 11:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    int count = 0;
%>
<html>
<head>
    <title>Seat</title>
</head>
<style type="text/css">
    * {
        font-size: 20px;
        text-align: center;
        margin: 0px;
    }

    .blank {
        background-color: white;
    }

    #rowName {
        background-color: white;
    }

    .seat {
        width: 250px;
        background-color: #646464;
        cursor: pointer;
    }

    .seat:hover {
        background-color: #a5d8fa;
    }
</style>
<body>
<div style="display:inline-block; ">
    <div style="display:inline-block; ">
        <table style="border-collapse: separate; border-spacing: 3px;">
            <% for (int i = 0; i < 26; i++) { %>
            <tr>
                <td id="rowName"><%= (char) (65 + i) %>
                </td>

                <td class="blank">&nbsp;&nbsp;</td>

                <% for (int j = 1; j <= 4; j++) { %>
                <td class="seat"><%= j %>
                </td>
                <% } %>

                <td class="blank">&nbsp;&nbsp;</td>

                <% for (int j = 5; j <= 15; j++) { %>
                <td class="seat"><%= j %>
                </td>
                <% } %>

                <td class="blank">&nbsp;&nbsp;</td>

                <% for (int j = 15; j <= 20; j++) { %>
                <td class="seat"><%= j %>
                </td>
                <% } %>
            </tr>
            <% } %>
        </table>
        <br/><hr/><br/>
        <table style="border-collapse: separate; border-spacing: 3px;">
            <% int maxNum = 6; %>
            <% for (int i = 0; i < maxNum; i++) { %>
            <tr>
                <td id="rowName"><%= (char) (65 + i) %>
                </td>
                <td class="blank">&nbsp;&nbsp;</td>
                <% System.out.println(maxNum - 2 - count);%>
                <% for (int j = 0; j < count; j++) { %>
                <td class="blank"> &nbsp;</td>
                <% } %>

                <% for (int j = 1; j <= 10 - count; j++) { %>
                <td class="seat"><%= j %>
                </td>
                <% } %>

                <td class="blank">&nbsp;&nbsp;</td>
                <% for (int j = maxNum - 2 - count; j >= 0; j--) { %>
                <td class="blank"> &nbsp;</td>
                <% } %>

                <% for (int j = 11 - count; j <= 18 + count; j++) { %>
                <td class="seat"><%= j %>
                </td>
                <% } %>

                <td class="blank">&nbsp;&nbsp;</td>
                <% for (int j = maxNum - 2 - count; j >= 0; j--) { %>
                <td class="blank"> &nbsp;</td>
                <% } %>

                <% for (int j = 19 + count; j <= 29; j++) { %>
                <td class="seat"><%= j %>
                </td>
                <% }
                    count += 1;%>
            </tr>
            <% } %>
        </table>
        <br/><hr/><br/>
        <table style="border-collapse: separate; border-spacing: 3px;">
            <% for (int i = 0; i < 16; i++) { %>
            <tr>
                <td id="rowName"><%= (char) (65 + i) %>
                </td>
                <td class="blank">&nbsp;&nbsp;</td>
                <% if (i >= 6 && i <= 11) { %>
                <% for (int j = 1; j <= 10; j++) { %>
                <td class="seat"><%= j %>
                </td>
                <% } %>
                <% continue;
                } %>
                <% for (int j = 1; j <= 15; j++) { %>
                <td class="seat"><%= j %>
                </td>
                <% } %>
            </tr>
            <% } %>
        </table>
        <br/><hr/><br/>
        <%--<table style="border-collapse: separate; border-spacing: 3px;">--%>
            <%--<% for (int i = 0; i < 15; i++) { %>--%>
            <%--<tr>--%>
                <%--<td id="rowName"><%= (char) (65 + i) %> </td>--%>
                <%--<td class="blank">&nbsp;&nbsp;</td>--%>
                <%--<% if (i >= 6 && i <= 11) {--%>
                    <%--count += 1;%>--%>
                <%--<% for (int j = 0; j < 5; j++) { %>--%>
                <%--<td class="blank">&nbsp;&nbsp;</td>--%>
                <%--<% }%>--%>
                <%--<% for (int j = 1; j <= 11 - count; j++) { %>--%>
                <%--<td class="seat"><%= j %>--%>
                <%--</td>--%>
                <%--<% } %>--%>
                <%--<% continue;--%>
                <%--} %>--%>
                <%--<% if (i > 11) { %>--%>
                <%--<% for (int j = 1; j <= 5; j++) { %>--%>
                <%--<td class="seat"><%= j %>--%>
                <%--</td>--%>
                <%--<% } %>--%>
                <%--<% continue;--%>
                <%--} %>--%>
                <%--}--%>
                <%--<% for (int j = 1; j <= 15; j++) { %>--%>
                <%--<td class="seat"><%= j %>--%>
                <%--</td>--%>
                <%--<% } %>--%>
            <%--</tr>--%>
            <%--<% } %>--%>
        <%--</table>--%>
    </div>
</div>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
    $('.seat').click(function () {
        $(this).css('backgroundColor', '#b2bbc9');
        // console.dir($(this).parents().children().first().html()+"열 "+$(this).html()+"석");
        alert($(this).parents().children().first().html() + " " + $(this).html() + "");
    });
</script>
</div>
</body>
</html>
