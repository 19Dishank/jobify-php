{{-- <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Forgot Password Email</title>
</head>
<body>
    <h1>Hello {{ $mailData['user']->name }}</h1>
    
    <p>Click below to change your password.</p>

    <a href="{{ route("account.resetPassword",$mailData['token']) }}">Click Here</a>

    <p>Thanks</p>

</body>
</html> --}}

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Reset Your Password</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            text-align: center;
        }
        .container {
            width: 100%;
            max-width: 500px;
            margin: 30px auto;
            background: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            color: #333;
        }
        p {
            color: #555;
            font-size: 16px;
        }
        .btn {
            display: inline-block;
            padding: 12px 20px;
            margin-top: 20px;
            text-decoration: none;
            color: #fff;
            background: #007bff;
            border-radius: 5px;
            font-size: 16px;
        }
        .btn:hover {
            background: #0056b3;
        }
        .footer {
            margin-top: 20px;
            font-size: 14px;
            color: #777;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Hello, {{ $mailData['user']->name }}</h1>
        <p>You recently requested to reset your password.</p>
        <p>Click the button below to reset your password:</p>
        
        <a href="{{ route('account.resetPassword', $mailData['token']) }}" class="btn">Reset Password</a>

        <p>If you didn't request a password reset, please ignore this email.</p>
        <p class="footer">Thank you, <br> Your Company Name</p>
    </div>
</body>
</html>