<%@ page language="java" %>
<%@ page import="metier.entities.Produit" %>
<%@ page import ="java.util.*" %>

<%List<Produit> listProd= new ArrayList<>(); %>
<%listProd = (List<Produit>) session.getAttribute("produits");%>

<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Produits</title>
</head>
<body>

<div id="formProduit">
	<form action="controleur.do" method="post">
		<table >
			<tr> 
				<td>Code :</td> 
				<td> <input type="text" name="code"></td>
			</tr>
			<tr>
				<td>Libelle :</td>
				<td> <input type="text" name="libelle"></td>
			</tr>
			<tr>
				<td>Quantité :</td>
				<td> <input type="text" name="quantite"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" name="action" value="Nouveau">
					<input type="submit" name="action" value="Ajouter Qte">
					<input type="submit" name="action" value="Retirer Qte">
				</td>
			</tr>
		</table>


		<div>
			<table border="1">
				<tr>
					<th>Code</th>
					<th>Libelle</th>
					<th>Quantité</th>
				</tr>
				<%for (Produit pr :listProd){%>
				<tr>
					<td><%=pr.getCode()%></td>
					<td><%=pr.getLibelle()%></td>
					<td><%=pr.getQuantite()%></td>
				</tr>
				<%
				}
				%>
			</table>
		</div>
	</form>
</div>

</body>
</html>