<! DOCTYPE html>
<html lang="fr">
  <tête>
    <titre>Calculatrice</titre>
  </tête>

  <corps>
  <form method="get » action= ».">

<!--
            Opérande 1
-->

    <input name="operande_1"
      <?php
      if (isset($_GET['operande_1']))
 print('value="'. _GET $['operande_1'].'"');
      ?>>

<!--
            Opérateur
-->

    <select name="operateur">
      <option value="plus"
      <?php
      if (isset($_GET['operateur'])&&$_GET['operateur'] == 'plus')
 print('sélectionné');
      ?>>
        +
      </option>
      <option value="moins"
      <?php
      if (isset($_GET['operateur'])&&$_GET['operateur'] == 'moins')
 print('sélectionné');
      ?>>
        -
      </option>
      <option value="mul"
      <?php
      if (isset($_GET['operateur'])&&$_GET['operateur'] == 'mul')
 print('sélectionné');
      ?>>
        *
      </option>
      <option value="div"
      <?php
      if (isset($_GET['operateur'])&&$_GET['operateur'] == 'div')
 print('sélectionné');
      ?>>
        /
      </option>
    </choisir>

<!--
            Opérande 2
-->

    <input name="operande_2"
      <?php
      if (isset($_GET['operande_2']))
 print('value="'. _GET $['operande_2'].'"');
      ?>>

<!--
             Bouton
-->

      <input type="submit » value="Go !">
  </forme>

<!--
            Résultat
-->

  <?php if (isset($_GET['operande_1']) && is_numeric($_GET['operande_1'])
 && isset($_GET['operande_2']) && is_numeric($_GET['operande_2']))
  {
    switch($_GET['operateur'])
    {
      cas 'plus' : print(« = " . (_GET $['operande_1']+_GET $['operande_2'])); casser;
      cas 'moins' : print(« = " . (_GET $ ['operande_1']-_GET $ ['operande_2'])); casser;
      cas 'mul' : print(« = " . (_GET $['operande_1']*_GET $['operande_2'])); casser;
      cas 'div' : print(« = " . (_GET $ ['operande_1']/_GET $['operande_2'])); casser;
    }
  } ?>
  </corps>
</.html>