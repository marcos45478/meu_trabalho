<?php

$gabarito = array(
    'quest01' => 'A', 
    'quest02' => 'C', 
    'quest03' => 'C', 
    'quest04' => 'C', 
    'quest05' => 'A'  
);

$acertos = 0;
$total = count($gabarito);

echo "<h1>Resultado da Prova</h1>";

foreach ($gabarito as $questao => $respostaCorreta) {
    // Verifica se a questão foi respondida
    if (isset($_POST[$questao])) {
        $respostaAluno = $_POST[$questao];
        if ($respostaAluno == $respostaCorreta) {
            echo "<p>$questao: Correta </p>";
            $acertos++;
        } else {
            echo "<p>$questao: Incorreta  (Sua resposta: $respostaAluno | Correta: $respostaCorreta)</p>";
        }
    } else {
        echo "<p>$questao: Não respondida (Correta: $respostaCorreta)</p>";
    }
}

echo "<hr>";
echo "<h2>Você acertou $acertos de $total questões.</h2>";
?>
