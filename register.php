<?php require'header.php';?>

<?php
require_once 'fonction.php'; 
if (!empty($_POST)) {

    $errors= array();
    require_once 'bd.php';

    if (empty($_POST['username'])) {

        $errors['username'] ="veuillez entrer votre nom d'utlilisateur";
    
    } else {
        $req = $bd->prepare('SELECT id FROM users WHERE username = ?');
        $req->execute([$_POST['username']]);
        $user = $req->fetch();
        if($user){ 
                    $errors['username'] = 'ce pseudo est déja pris';
         }
    }


    if (empty($_POST['email']) || !filter_var($_POST['email'], FILTER_VALIDATE_EMAIL))  {

        $errors['email'] =("votre email n'est pas valide");
    
    }


     else {
            $req = $bd->prepare('SELECT id FROM users WHERE email = ?');
            $req->execute([$_POST['email']]);
            $user = $req->fetch();
              if($user){ 
                $errors['email'] = 'ce email est déja pris pour un notre compte';
     }
}
 

    if (empty($_POST['password']) ||  $_POST['password'] != $_POST['password_confirm']) {

  $errors['password'] = "vous devez entrer un mot de passe identique";
    
    }

    if (empty($errors)){

      
        $req = $bd-> prepare("INSERT INTO users SET username = ?, password = ?, email= ?");
        $password = password_hash($_POST['password'], PASSWORD_BCRYPT);
        $req->execute([$_POST['username'], $password, $_POST['email']]);

        die('Votre compte a bien été crée avec succès');


    }
  
    debug($errors);
}
    ?>

<h1> S'inscrire</h1>
<?php if(!empty($errors)): ?>
<div class="alert alert-dangeer">
<p>vous n'avez pas rempli le formulaire coorectement</p>
<ul>
 <?php foreach($errors as $error) : ?>
    <li><<?= $error;?></li>
<?php endforeach; ?>
</ul>
</div>
<?php endif; ?>


    <form action="" method="POST">
        
                <label><b>Nom d'utilisateur</b></label>
                <input type="text" placeholder="Entrer le nom d'utilisateur"  class="form-control" name="username" required>
                <label><b>votre email</b></label>
                <input type="text" placeholder="Entrer votre email"  class="form-control" name="email" required>
                <label><b>Mot de passe</b></label>
                <input type="password" placeholder="Entrer le mot de passe"  class="form-control" name="password" required>
                <label><b>Confirmez votre mot de passe</b></label>
                <input type="password" placeholder="password confirm" class="form-control"  name="password_confirm" required>
                <input type="submit" id='submit' class="btn btn-primary" value="M'inscrire" >

</form>

