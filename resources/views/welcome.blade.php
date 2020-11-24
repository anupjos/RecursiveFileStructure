<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@200;600&display=swap" rel="stylesheet">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <!-- Styles -->
        <style>
            html, body {
                background-color: #fff;
                color: #636b6f;
                font-family: 'Nunito', sans-serif;
                font-weight: 200;
                height: 100vh;
                margin: 0;
            }

            .full-height {
                height: 100vh;
            }

            .flex-center {
                align-items: center;
                display: flex;
                justify-content: center;
            }

            .content {
                text-align: center;
            }

            .title {
                margin-top: 30px;
                margin-bottom: 20px;
                font-size: 40px;
                font-weight: bolder;
            }
        </style>
    </head>
    <body>
        <div class="flex-center">
            <div class="content">
                <div class="title m-b-md">
                    Recursive File Structure
                </div>
                <form action="/file/search" method="GET">
                    @csrf
                    <div class="form-group">
                        <input type="text" class="form-control" name="searchword" placeholder="Search here..">
                    </div>
                    <button type="submit" class="btn btn-dark mb-3">Search</button>
                </form>
                @foreach($filePaths as $filePath)
                    <div>
                        {{ $filePath }}
                    </div>
                @endforeach
            </div>
        </div>
    </body>
</html>
