<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> <!-- xmlns:th="http://www.thymeleaf.org"-->
	<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width-device-width, initial-scale = 1.0">
  <title>My Website</title>
  <link rel="stylesheet" href="css/bootstrap.css">
  <link rel="stylesheet" href="css/fontawesome.min.css">
  <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet"  href="css/userPage.css">
</head>
<body>
<div class="container">
      <div class="row">
      <div class="col-md-5  toppad  pull-right col-md-offset-3 ">


         <!--<a href="/profile/editprofile/" class="btn btn-success">Edit profile</a>
          <a href="/login/" class="btn btn-danger">Logout</a>-->
         <!-- <a href="/login/" class="btn btn-danger">Logout</a>-->
       <br>
      </div>
        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad" >
   
          <div class="panel panel-info">
            <div class="panel-heading">

                <div><h2 class="panel-title">My Profile</h2></div>
                <div>
                    <a href="/index" class="btn btn-primary"><span>Home</span></a>
                    <a href="/editprofile/" class="btn btn-success"><span>Edit profile</span></a>
                    <a href="/logout" class="btn btn-danger"><span>Logout</span></a>
                </div>
            </div>
            <div class="panel-body">
              <div class="row">
                <div class="col-md-3 col-lg-3 "> <img alt="User Pic" src="bg-02.jpg" class="img-circle img-responsive"> </div>

                <div class=" col-md-9 col-lg-9 "> 
                  <table class="table table-user-information">
                    <tbody>
                      <tr>
                        <td>Username:</td>
                        <td>${user.username}</td>
                      </tr>
                      <tr>
                        <td>Name:</td>
                        <td>${user.name}</td>
                      </tr>
                      <tr>
                        <td>Surname</td>
                        <td>${user.surname}</td>
                      </tr>
                      <tr>
                        <td>E-mail</td>
                        <td>${user.email}</td>
                      </tr>
                        <tr>
                        <td>Home Address</td>
                        <td>${user.address}</td>
                      </tr>
                      <tr>
                        <td>Phone number</td>
                        <td>${user.phone}</td>
                      </tr>
                    </tbody>
                  </table>
                    <a href="/contacts" class="btn btn-primary">Contacts</a>
                  <a href="/expall" class="btn btn-primary">Export Contacts</a>
                  <a href="/import" class="btn btn-primary">Import Contacts</a>
                </div>
              </div>
            </div>
                 <div class="panel-footer">

                        <span class="pull-right">

                        </span>
                    </div>
            
          </div>
        </div>
      </div>
    </div>
    <script type="text/javascript">
          $(document).ready(function() {
    var panels = $('.user-infos');
    var panelsButton = $('.dropdown-user');
    panels.hide();

    //Click dropdown
    panelsButton.click(function() {
        //get data-for attribute
        var dataFor = $(this).attr('data-for');
        var idFor = $(dataFor);

        //current button
        var currentButton = $(this);
        idFor.slideToggle(400, function() {
            //Completed slidetoggle
            if(idFor.is(':visible'))
            {
                currentButton.html('<i class="glyphicon glyphicon-chevron-up text-muted"></i>');
            }
            else
            {
                currentButton.html('<i class="glyphicon glyphicon-chevron-down text-muted"></i>');
            }
        })
    });


    $('[data-toggle="tooltip"]').tooltip();

    $('button').click(function(e) {
        e.preventDefault();
        alert("This is a demo.\n :-)");
    });
});
    </script>
</body>
</html>