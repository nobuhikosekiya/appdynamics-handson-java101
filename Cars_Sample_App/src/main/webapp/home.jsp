<%@ page import="java.util.*" %>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c" %>
<%@ include file="header.jsp" %>
<%
    try {
        Random r = new Random();
        int i = r.nextInt(999);
        Thread.sleep(i);
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
<table>
    <tr>
        <td>Welcome<br /><img src="images/line.gif"></td>
    </tr>
</table>
<table>
    <tr>
        <td class="home">
            <table>
                <tr>
                    <td><br /><b>New to the site?</b><br />
                        <a href="" name="&lid=Register+Benefits&lpos=Left+Nav">Registration Benefits</a><br />
                        <a href="" name="&lid=Register&lpos=Left+Nav">Register here</a><br />
                        <br /><b>Already a customer?</b><br />
                        <a href="" name="&lid=Log+In&lpos=Left+Nav">Log in</a><br />
                        <a href="" name="&lid=Log+Out&lpos=Left+Nav">Log out</a>
                    </td>
                </tr>
                <tr>
                    <td><br />
                        <form name="searchForm" action="search.do?query=search" method="POST">
                            <b>Quick Search</b><br /><input type="text" name="criteria" />&nbsp;<br />
                            <input type="image" src="images/small_search_but.gif"/ align="absmiddle"><br />
                        </form>
                    </td>
                </tr>
                <tr>
                    <td><b>Trade Advertisers</b><br />
                        <a href="" name="&lid=List&lpos=Left+Nav">List your stock</a><br />
                        <a href="" name="&lid=Place+Trade+Advert&lpos=Left+Nav">Place a Trade Advert</a><br />
                        <a href="" name="&lid=Testemonials&lpos=Left+Nav">Testimonials</a><br />
                        <a href="" name="&lid=Trader+Link&lpos=Left+Nav">Trader Link</a><br />
                        <a href="" name="&lid=Dealer+Directory&lpos=Left+Nav">Dealer Directory</a><br />
                        <a href="" name="&lid=Research+Centre&lpos=Left+Nav">Research Centre</a><br />
                        <a href="" name="&lid=Media+Centre&lpos=Left+Nav">Media Centre</a><br />
                    </td>
                </tr>
            </table>
        </td>
        <td class="home">
            <table>
                <tr>
                    <td><img src="images/homepage_car.gif"><br /><br /><b>Search the biggest selection of <a href="">new cars</a>, <a href="">used cars</a></b><br />
                        <img src="images/ukmap.gif" align="right" alt="Find a local car dealer" /><br />
                        <b>Find a local car dealer</b><br />
                        <a href="">UK car dealer directory</a><br />
                        <a href="">Car dealers in your area</a></p>
                        <br />
                        <b>&nbsp;Research your next car</b><br /><br />
                        <img src="images/magnify.gif" align="right" alt="Find a local car dealer" /><a href="">New Car Roadtests</a><br />
                        <a href="">Used Car Roadtests</a><br/>
                        <a href="">Car buying advice</a>

                    </td>
                </tr>
            </table>
        </td>
        <td class="home">
            <table>
                <tr>
                    <td>
                        <table>
                            <tr>
                                <td class="ad">
                                    <b>Finance Centre</b>
                                    <br />Compare over 400 leading loan suppliers including:<br />
                                    <br /><a href="">Northern Smock</a>
                                    <br /><a href="">Alliance & Lancaster</a>
                                    <br /><a href="">Bresco Loans</a><br />&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="ad">
                                    <b>Performance Accessories</b>
                                    <br />Manufacturer OEM parts from:<br />
                                    <br /><a href="amg.jsp">AMG</a>
                                    <br /><a href="alpina.jsp">Alpina</a>
                                    <br /><a href="mazdaspeed.jsp">MazdaSpeed</a>
                                    <br /><a href="ruf.jsp">Ruf</a>
                                    <br /><a href="gembella.jsp">Gemballa</a>
                                    <br />&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="ad">
                                    <b>Latest Fuel Prices</b><br />
                                    <br />Regular: <c:out value="${prices.regular}" />
                                    <br />Mid Grade: <c:out value="${prices.midgrade}" />
                                    <br />Premium: <c:out value="${prices.premium}" />
                                    <br />E85: <c:out value="${prices.e85}" />
                                    <br />Diesel: <c:out value="${prices.diesel}" />
                                    <br />&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<%@ include file="footer.jsp" %>