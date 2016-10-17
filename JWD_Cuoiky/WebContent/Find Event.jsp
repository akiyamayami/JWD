<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <title>Time Manager</title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
      <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
  <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:100,300,400,700">
  <link rel="stylesheet" type="text/css" href="fileCss.css">
  <script type="text/javascript" src="javasc.js"></script>
</head>
<body>
    <div class="navbar" id="top">
        <div class="container">
            <div class="row">
                <a href="Home Page.html" id="q">
                    <span class="glyphicon glyphicon-home"></span> Time Manager
                </a>
            </div>
        </div>
    </div>
    <div id="motherTable">
        <div id="cnTable">
            <div id="detailcnTable">
                <h3 style="margin-left:20px;margin-top: 6px;">Calendar</h3>
                <div id="groupbuttoncn">
                    <a href="Cn Calendar 2.jsp" class="btn buttoncn">Calendar</a>
                    <a href="create Event.jsp" class="btn buttoncn" style="margin:10px 0px 10px 0px;">Create Event</a>
                    <a href="Find Event.jsp" class="btn buttoncn">Find Event</a>
                </div>
                <h3 style="margin-left:20px;">User</h3>
                <div id="groupbuttoncn">
                    <a href="Change Info user.jsp" class="btn buttoncn">Change Info</a>
                    <a href="Find user user.jsp" class="btn buttoncn" style="margin:10px 0px 10px 0px;">Find User</a>
                    <a href="Home Page.jsp" class="btn buttoncn">Log Out</a>
                </div>
            </div>
        </div>
        <div id="dtTable">
            <div class="row" style="height: 100px;">
                <div class="col-md-7">
                    <textarea type="text" class="findEv" row="2" placeholder="Text here" style="resize: none;"></textarea>
                </div>
                <div class="col-md-3">
                    <select class="findEvdn">
                        <option>None</option>
                        <option>Days</option>
                        <option>Name</option>
                    </select>
                </div>
                <div class="col-md-2">
                    <button type="submit" class="btn btn-default finds" style="width: 100%;">Find</button>
                </div>
            </div>
            <table style="width: 100%; table-layout: fixed;">
                <tbody>
                    <tr>
                        <th>Name</th>
                        <th>Day</th>
                        <th>Adress</th>
                        <th>Decreption</th>
                    </tr>
                    <tr>
                        <td>My Birthdays</td>
                        <td>17/01/1996</td>
                        <td>TP HCM</td>
                        <td>Birthdays</td>
                    </tr>
                    <tr>
                        <td>Event Game</td>
                        <td>20/10/2016</td>
                        <td>Cyber Core Q6</td>
                        <td>Giao luu</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</body>