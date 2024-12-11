<html>
<head>
    <title>Send Email</title>
</head>
<body>
    <h1>Send an Email</h1>
    <form action="/send-email" method="post">
        <label for="recipient">Recipient Email:</label>
        <input type="email" id="recipient" name="recipient" required>
        <br>
        <label for="subject">Subject:</label>
        <input type="text" id="subject" name="subject" required>
        <br>
        <label for="message">Message:</label>
        <textarea id="message" name="message" rows="4" required></textarea>
        <br>
        <button type="submit">Send Email</button>
    </form>
</body>
</html>
