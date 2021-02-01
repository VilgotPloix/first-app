<html>
  <head>
    <title>Créer un potin</title>
  </head>
  <body>
    <h1>Crée un potin !</h1>
    <p>modifie le potin via le formulaire ci-dessous</p>
    <form action='/edit/' method='POST'>
      modifie le nom :  <input type='text' name='gossip_author'/><br/>
      modifie le potin : <input type='text' name='gossip_content'/><br/>
      <input type='submit'/>
    </form>
  </body>
</html>