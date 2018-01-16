
<form method="post" action="#">
        <div>
        <label for="titre">Titre de votre article </label>
        <input type="text" placeholder="Votre Titre" name="titre">
        </div>
        <div>
            <label for="chapo">Sous-titre de votre article  </label>
            <input type="text" placeholder="Votre Sous-Titre" name="chapo">
        </div>
        <div>
        <SELECT name="categorie" size="1">
            <OPTION>Actualités
            <OPTION>Archivé
            <OPTION>
            <OPTION>jeudi
            <OPTION>vendredi
        </SELECT>
         </div>
        <div>
            <label for="message">Votre Message </label>
            <textarea name="message" cols="3" placeholder="Votre Message ..."></textarea>
        </div>


        <input type="submit" value="Envoyer !" name="article">
</form>