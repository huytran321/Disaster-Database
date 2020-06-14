<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CSS 475 Final - Database Team 11</title>
    <!-- Mandatory CSS -->
    <link rel="stylesheet" href="css/main.css">



    <!-- CSS only -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <!-- JS, Popper.js, and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
        integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous">
    </script>
</head>

<body>



    <div class="container text-center">
        <h2 class="mb-3">Disaster Information</h2>
        <div class="row">
            <div class="col bold">Report ID</div>
            <div class="col bold">Claimant First Name</div>
            <div class="col bold">Claimant Last Name</div>
            <div class="col bold">Disaster Name</div>
            <div class="col bold">Disaster Date</div>
            <div class="col bold">Modify</div>
        </div>
        <hr>
        <div class="table mb-5">
            <?php
            require_once('php/get_disasters.php');
            foreach($disasters as $disaster) {
            echo '<form action="php/update_disaster.php" method="post">';
                echo '<div class="row">';
                echo '<div class="col">'.$disaster['reportId'].'</div>';
                echo '<div class="col">'.$disaster['firstName'].'</div>';
                echo '<div class="col">'.$disaster['lastName'].'</div>';
                echo '<input type="hidden" name="disasterID" value='.$disaster["disasterID"].' />';
                echo '<div class="col"><input type="text" style={font-size: 8px !important;} class="form-control disaster-name" value='.$disaster['disasterName'].' name="disasterName" placeholder="Enter Disaster Name" required /></div>';
                echo '<div class="col"><input type="date" class="form-control" value='.$disaster['disasterDate'].' name="disasterDate" placeholder="Enter Disaster Date" required /></div>';
                echo '<div class="col"><input type="submit" class="btn btn-primary" value="Update" /></div>';
                echo '</div>';
            echo '</form>';
            }
        ?>
        </div>

        <h2 class="mb-3">Persons Data</h2>
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">Report ID</th>
                    <th scope="col">First Name</th>
                    <th scope="col">Email</th>
                    <th scope="col">Phone</th>
                    <th scope="col">Street Address</th>
                    <th scope="col">City</th>
                    <th scope="col">Postal Code</th>
                    <th scope="col">Disaster Name</th>
                    <th scope="col">Disaster Date</th>
                </tr>
            </thead>
            <tbody>

                <?php 
                    require_once('php/get_person.php');
                    foreach($persons as $person) {
                    echo '<tr>';
                    echo '<th scope="row">'.$person['reportId'].'</th>';
                    echo '<td>'.$person['firstName'].'</td>';
                    echo '<td>'.$person['email'].'</td>';
                    echo '<td>'.$person['phone'].'</td>';
                    echo '<td>'.$person['streetAddress'].'</td>';
                    echo '<td>'.$person['city'].'</td>';
                    echo '<td>'.$person['postalCode'].'</td>';
                    echo '<td>'.$person['disasterName'].'</td>';
		    echo '<td>'.$person['disasterDate'].'</td>';	
                    echo '</tr>';
                    }
                ?>
            </tbody>
        </table>
    </div>
</body>

</html>