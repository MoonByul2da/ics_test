<!DOCTYPE html>
<html lang='en'>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>test</title>

    <style>
        body {
            font-family: Arial;
            text-align: center;
        }
        tr , td {
            padding: 1rem .5rem;
            border: 1px solid #ccc;
        }
    </style>
</head>

<body>
    <table width=" 100%">
        <thead>
            <tr>
                <td>id</td>
                <td>p_id</td>
                <td>p_color</td>
                <td>p_pattern</td>
                <td>p_figure</td>
                <td>p_side</td>
                <td>p_price</td>
                <td>p_gender</td>

            </tr>
        </thead>
        <tbody id="info">

        </tbody>

    </table>

    <button type="button" onclick="loadDoc()"> change content</button>
    <script>
        function loadDoc() {
            let xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    let data = JSON.parse(this.responseText);
                    console.log(data);

                    for (let i = 0; i < data.length; i++) {
                        document.getElementById('info').innerHTML +=
                            `<tr> 
                        <td>${data[i].id}</td>
                        <td>${data[i].p_id}</td>
                        <td>${data[i].p_color}</td>
                        <td>${data[i].p_pattern}</td>
                        <td>${data[i].p_figure}</td>
                        <td>${data[i].p_side}</td>
                        <td>${data[i].p_price}</td>
                        <td>${data[i].p_gender}</td>
                        </tr>`;
                    }
                }
            }
            document.getElementById('info').innerHTML = '';
            xhttp.open('GET', 'index.php', true);
            xhttp.send();

        }
    </script>
</body>

</html>