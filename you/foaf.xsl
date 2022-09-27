<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:foo="http://www.foo.org/" xmlns:bar="http://www.bar.org">
<xsl:output method="html" indent="yes" />
<xsl:template match="rdf:RDF/foaf:Person">
  <html>
  <body>
  <h2>Moi</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>nom complet</th>
        <th>titre</th>
        <th>Prenom</th>
        <th>Nom</th>
        <th>mail</th>
        <th>date de naissance</th>
      </tr>
      <tr>
        <td><xsl:value-of select="foaf:name"/></td>
        <td><xsl:value-of select="foaf:title"/></td>
        <td><xsl:value-of select="foaf:givenname"/></td>
        <td><xsl:value-of select="foaf:family_name"/></td>
        <td><xsl:value-of select="foaf:mbox_sha1sum"/></td>
        <td><xsl:value-of select="foaf:dateOfBirth"/></td>
      </tr>
    </table>
	<h2>comptes</h2>
	<table border="1">
      <tr bgcolor="#9acd32">
        <th>nom du site</th>
        <th>nom du compte</th>
      </tr>
      <xsl:for-each select="foaf:holdsAccount">
      <tr>
        <td><xsl:value-of select="foaf:name"/></td>
        <td><xsl:value-of select="foaf:accountName"/></td>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>