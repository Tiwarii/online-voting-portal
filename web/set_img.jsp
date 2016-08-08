<!DOCTYPE html>
<html lang="en">
<head>
<style type="text/css">
form{float: left;width: 100%;}
img, embed{margin-top: 20px;}
</style>
</head>
<body style="  background:   #606468;">
    
    <h1><font color="white">2. Set User Profile</font></h1>
<form method="post" action="upload_img.jsp" enctype="multipart/form-data" id="uploadForm">
    <input type="file" name="file" id="file" />
    <input type="submit" name="submit" value="Upload"/>
</form>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script>
function filePreview(input) { //shows preview of image
     if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            $('#uploadForm + img').remove();
            $('#uploadForm').after('<img src="'+e.target.result+'" width="450" height="300"/>');
            //$('#uploadForm + embed').remove();
            //$('#uploadForm').after('<embed src="'+e.target.result+'" width="450" height="300">');
        }
        reader.readAsDataURL(input.files[0]);
    }
}

$("#file").change(function () {
    filePreview(this);
});
</script>
</body>
</html>