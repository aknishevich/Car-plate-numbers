<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<div class="container">
    <div class="col-sm-12">
        <div class="col-sm-12 text-center my-2"><?php include_once "Model.php"; ?></div>
        <form class="form-inline my-lg-0 align-self-center">
            <input class="form-control my-3 mr-sm-2 offset-md-4" type="text" name="number" value="<?= $_GET['number'] ?>" placeholder="0000BBB">
            <input class="btn btn-outline-success my-sm-0" type="submit">
        </form>
    </div>
    <div class="col-sm-8 offset-md-2">
        <table class="table table-hover text-center">
            <thead>
            <tr>
                <th>Fecha</th>
                <th>Numeros</th>
                <th>Letras</th>
            </tr>
            </thead>
            <?php
            $matriculas = $db->query("SELECT * FROM `wp_matriculas_new` ORDER BY `fecha`")->fetchAll();
            foreach ($matriculas as $matricula) {
                ?>
                <tr>
                    <td><?= $matricula['fecha'] ?></td>
                    <td><?= $matricula['numeros'] ?></td>
                    <td><?= $matricula['letras'] ?></td>
                </tr>
                <?php
            }
            ?>
        </table>
    </div>
</div>