<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
				<tr>
					<td>code1</td>
					<td>lib1</td>
					<td>0</td>
				</tr>
			</table>
		</div>
	</form>
</div>

</body>
</html>