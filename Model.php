<?php

function getNumberByLetras ($numeros, $letras) {
    $usingLetters = "BCDFGHJKLMNPRSTVWXYZ";
    $countOfLetters = strlen($usingLetters);
    $lettersNumber = [];
    $result = 1;

    for ($i = 0; $i < $countOfLetters; $i++) {
        $lettersNumber[$usingLetters[$i]] = $i+1;
    }

    for ($i = 2; $i >= 0; $i--) {
        switch ($i){
            case 2:
                $result += 10000 * ($lettersNumber[$letras[$i]] - 1);
                break;
            case 1:
                $result += 10000 * $countOfLetters * ($lettersNumber[$letras[$i]] - 1);
                break;
            case 0:
                $result += 10000 * pow($countOfLetters, 2) * ($lettersNumber[$letras[$i]] - 1);
                break;
        }
    }

    return $result + $numeros;
}

function getCalculatedDate($plate, $matriculas) {
    $pattern = '/(\d{4})([BCDFGHJKLMNPRSTVWXYZ]{3})/';
    if (preg_match($pattern, $plate, $matches) && $matches[0] === $plate) {
        $number = $matches[1];
        $letters = $matches[2];
        $currentPlate = [
            'date'      =>  null,
            'number'    =>  getNumberByLetras($number, $letters)
        ];

        $arrayOfMatriculas = [];
        foreach ($matriculas as $matricula) {
            $arrayOfMatriculas[] = [
                'date'      =>  strtotime($matricula['fecha']),
                'number'    =>  getNumberByLetras($matricula['numeros'], $matricula['letras'])
            ];
        }

        $countOfMatriculas = count($arrayOfMatriculas);
        $less = 0;
        $more = $countOfMatriculas - 1;
        for ($i = 0; $i < $countOfMatriculas; $i++) {
            if ($arrayOfMatriculas[$i]['number'] == $currentPlate['number'])
                return "<p class=\"text-success\">Estimated time of <strong>\"$plate\"</strong> numbers is: ". date("Y-m-d", $arrayOfMatriculas[$i]['date']) ."</p>";
            if ($arrayOfMatriculas[$i]['number'] <= $currentPlate['number'] && $arrayOfMatriculas[$i]['number'] > $arrayOfMatriculas[$less]['number'])
                $less = $i;
            if ($arrayOfMatriculas[$i]['number'] >= $currentPlate['number'] && $arrayOfMatriculas[$i]['number'] < $arrayOfMatriculas[$more]['number'])
                $more = $i;
        }
        $moreDate = $arrayOfMatriculas[$more]['date'];
        $lessDate = $arrayOfMatriculas[$less]['date'];
        $dateDiff = $moreDate - $lessDate;
        $numDiff = $arrayOfMatriculas[$more]['number'] - $arrayOfMatriculas[$less]['number'];
        $timeForNumber = $dateDiff / $numDiff;
        $resultDate = $arrayOfMatriculas[$less]['date'] + ($timeForNumber * ($currentPlate['number'] - $arrayOfMatriculas[$less]['number']));
        $resultDate = date("Y-m-d", $resultDate);
        return "<p class=\"text-success\">Estimated time of <strong>\"$plate\"</strong> numbers is: $resultDate</p>";
    }
    else {
        return "<p class=\"text-danger\">The entered car plate number is incorrect</p>";
    }
}

if(isset($_GET['number'])) {
    $plateNum = trim(stripslashes(htmlspecialchars($_GET['number'])));
    $pattern = '/(\d{4})([BCDFGHJKLMNPRSTVWXYZ]{3})/';
    $matriculas = $db->query("SELECT * FROM `wp_matriculas_new` ORDER BY `fecha`")->fetchAll();
    echo getCalculatedDate($plateNum, $matriculas);
}