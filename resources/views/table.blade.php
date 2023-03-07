<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>MSIB | Mentors and Mentees Data Table</title>

    {{-- Framework css Bootstrap --}}
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    {{-- Style CSS Manual --}}
    <link rel="stylesheet" href="{{ asset('css/style.css') }}">
</head>

<body>
    <section class="intro">
        <div class="bg-image h-100"
            style="background-image: url('https://mdbootstrap.com/img/Photos/new-templates/tables/img2.jpg');">
            <div class="mask d-flex align-items-center h-100" style="background-color: rgba(0,0,0,.25);">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-12">
                            <div class="card bg-dark shadow-2-strong">
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-dark table-borderless mb-0">
                                            <thead>
                                                <tr>
                                                    <th scope="col">EMPLOYEES</th>
                                                    <th scope="col">POSITION</th>
                                                    <th scope="col">CONTACTS</th>
                                                    <th scope="col">AGE</th>
                                                    <th scope="col">ADDRESS</th>
                                                    <th scope="col">SALARY</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <th scope="row">Tiger Nixon</th>
                                                    <td>System Architect</td>
                                                    <td>tnixon12@example.com</td>
                                                    <td>61</td>
                                                    <td>Edinburgh</td>
                                                    <td>$320,800</td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">Sonya Frost</th>
                                                    <td>Software Engineer</td>
                                                    <td>sfrost34@example.com</td>
                                                    <td>23</td>
                                                    <td>Edinburgh</td>
                                                    <td>$103,600</td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">Jena Gaines</th>
                                                    <td>Office Manager</td>
                                                    <td>jgaines75@example.com</td>
                                                    <td>30</td>
                                                    <td>London</td>
                                                    <td>$90,560</td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">Quinn Flynn</th>
                                                    <td>Support Lead</td>
                                                    <td>qflyn09@example.com</td>
                                                    <td>22</td>
                                                    <td>Edinburgh</td>
                                                    <td>$342,000</td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">Charde Marshall</th>
                                                    <td>Regional Director</td>
                                                    <td>cmarshall28@example.com</td>
                                                    <td>36</td>
                                                    <td>San Francisco</td>
                                                    <td>$470,600</td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">Haley Kennedy</th>
                                                    <td>Senior Marketing Designer</td>
                                                    <td>hkennedy63@example.com</td>
                                                    <td>43</td>
                                                    <td>London</td>
                                                    <td>$313,500</td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">Tatyana Fitzpatrick</th>
                                                    <td>Regional Director</td>
                                                    <td>tfitzpatrick00@example.com</td>
                                                    <td>19</td>
                                                    <td>Warsaw</td>
                                                    <td>$385,750</td>
                                                </tr>
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

</body>

</html>
