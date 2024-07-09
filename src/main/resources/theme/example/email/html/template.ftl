<#macro emailLayout>
<html>
<body>
  <img src="https://example.com/images/logo.png" alt="Acme Corp" class="center" />
    <#nested>
  <footer>
    <p>123 Main Street, Hard Luck, USA</p>
    <p><a href="mailto:support@acme.com">support@acme.com</a></p>
  </footer>
</body>
</html>
</#macro>