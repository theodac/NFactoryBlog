<script src="https://cloud.tinymce.com/stable/tinymce.min.js"></script>
<script>tinymce.init({ selector:'textarea' });</script>
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
            <label for="message">Votre Message </label>
            <textarea name="message" cols="3" placeholder="Votre Message ..."></textarea>
        </div>
        <div>
            <label for="date">Date de publication </label>
            <input type="date" placeholder="Inserez votre date au format JJ/MM/AA" name="date">
        </div>
        <input type="submit" value="Envoyer !" name="article">
</form>