<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="../header.jspf" %>
<div class="container">
    <form action="/cartaoFidelidade" method="post"  role="form" data-toggle="validator" >
        <c:if test ="${empty action}">                        	
            <c:set var="action" value="add"/>
        </c:if>
        <input type="hidden" id="action" name="action" value="${action}">
        <input type="hidden" id="id" name="id" value="${obj.id}">
        <h2>Cartão Fidelidade</h2>
        <div class="form-group col-xs-1">
            <label for="vencimento" class="control-label col-xs-4">Vencimento:</label>
            <input type="number" name="vencimento" id="vencimento" class="form-control" value="${obj.vencimento}" required="true"/>
        </div>
        <div class="form-group col-xs-2">
            <label for="limite" class="control-label col-xs-4">Limite:</label>
            <input type="text" name="limite" id="limite" class="form-control" value="${obj.limite}" required="true"/>
        </div>
        <div class="form-group col-xs-3">
            <label for="qtdPontos" class="control-label col-xs-4">Pontos:</label>
            <input type="text" name="qtdPontos" id="qtdPontos" class="form-control" value="${obj.qtdPontos}" required="true"/>
        </div>
        <div class="form-group col-xs-5">
            <label for="fatorConversao" class="control-label col-xs-4">Fator Conversão:</label>
            <input type="text" name="fatorConversao" id="fatorConversao" class="form-control" value="${obj.fatorConversao}" required="true"/>
        </div>
        <div class="form-group col-xs-6">
            <label for="senha" class="control-label col-xs-4">Senha:</label>
            <input type="password" name="senha" id="senha" class="form-control" value="${obj.senha}" required="true"/>
        </div>
        <div class="form-group col-xs-7">
            <label for="ciente" class="control-label col-xs-4">Cliente:</label>
            <select name="cliente" class="form-control">
                <c:forEach var="cliente" items="${listCliente}">
                    <option value="${cliente.id}" ${cliente.id == obj.cliente.id?"selected":""}>${cliente}</option>
                </c:forEach>
            </select>
        </div>
            <br></br>
            <button type="submit" class="btn btn-primary  btn-md">Gravar</button> 
        </div>                                                      
    </form>
</div>
<%@include file="../footer.jspf" %>