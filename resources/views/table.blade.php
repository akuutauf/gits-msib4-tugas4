<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="icon" type="image/png" href="{{ asset('icons/github-alt.svg') }}" />
    <title>MSIB | Mentees Data Table</title>

    {{-- Framework css Bootstrap --}}
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    {{-- Style CSS Manual --}}
    <link rel="stylesheet" href="{{ asset('css/style.css') }}">

    {{-- Font Cdn --}}
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap"
        rel="stylesheet">

    {{-- Aos Animation --}}
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
</head>

<body>
    <section class="intro">
        <div class="bg-image bg" style="background-image: url('https://i.postimg.cc/5tJ0c80D/japanese.jpg');">
            <div class="mask d-flex align-items-center h-100" style="background-color: rgba(0,0,0,.25);">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-12">
                            <h5 class="text-white pb-3">Data Mentees dengan Mentor <span
                                    class="text-warning bg-white px-3 py-1 rounded text-mentor-color"
                                    data-aos="zoom-in-left" data-aos-duration="3000"><b>Mr. Ala
                                        Rai Abdiallah</b></span>
                            </h5>
                            {{-- <p>{{ $user }}</p> --}}
                            <div class="card bg-dark shadow-2-strong" data-aos="zoom-out-up" data-aos-duration="1000">
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-dark table-borderless mb-0">
                                            <thead>
                                                <tr>
                                                    <th scope="col">No</th>
                                                    <th scope="col">Name</th>
                                                    <th scope="col">Email</th>
                                                    <th scope="col">University</th>
                                                    <th scope="col">Mentor</th>
                                                    {{-- <th scope="col">Created At</th>
                                                    <th scope="col">Updated At</th> --}}
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @php
                                                    $numberCount = 1;
                                                @endphp

                                                @foreach ($user as $menteesItem)
                                                    <tr>
                                                        <td>{{ $numberCount }}</td>
                                                        <th scope="row">{{ $menteesItem->name }}</th>
                                                        <td>{{ $menteesItem->email }}</td>
                                                        <td>{{ $menteesItem->university }}</td>
                                                        <td>{{ $menteesItem->mentor }}</td>
                                                        {{-- <td>{{ $menteesItem->created_at }}</td>
                                                        <td>{{ $menteesItem->updated_at }}</td> --}}
                                                    </tr>

                                                    @php
                                                        $numberCount++;
                                                    @endphp
                                                @endforeach
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    {{-- Javascript linked bootstrap --}}
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous">
    </script>

    {{-- Aos JS --}}
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script>
        AOS.init();
    </script>

</body>

</html>
