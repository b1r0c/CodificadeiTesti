<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns="http://www.w3.org/1999/xhtml" xmlns:tei="http://www.tei-c.org/ns/1.0" version="1.0">
   <xsl:output method="html" encoding="UTF-8" indent="yes" omit-xml-declaration="yes"/>
   <xsl:template match="/tei:teiCorpus">
      <html>
         <head>
            <title>Progetto di Codifica dei Testi</title>
            <link href="css.css" rel="stylesheet" type="text/css"/>
         </head>
         <body>
            <xsl:apply-templates/>
         </body>
      </html>
   </xsl:template>
   <xsl:template match="tei:teiHeader[@xml:id='teiHeader']">
      <div class="info">
         <xsl:apply-templates/>
      </div>
      <br/>
   </xsl:template>
   <xsl:template match="tei:facsimile">
      <div id="immagini">
         <xsl:apply-templates/>
      </div>
   </xsl:template>
   <xsl:template match="tei:surface[@xml:id='retro1']/tei:graphic">
      <img id="imgretro1" src="{@url}"/>
      <xsl:apply-templates/>
   </xsl:template>
   <xsl:template match="tei:surface[@xml:id='retro2']/tei:graphic">
      <img id="imgretro2" src="{@url}"/>
      <xsl:apply-templates/>
   </xsl:template>
   <xsl:template match="tei:surface[@xml:id='retro3']/tei:graphic">
      <img id="imgretro3" src="{@url}"/>
      <xsl:apply-templates/>
   </xsl:template>
   <xsl:template
      match="tei:surface[@xml:id='fronte1' or @xml:id='fronte2' or @xml:id='fronte3']/tei:graphic">
      <img id="imgfronte" src="{@url}"/>
      <xsl:apply-templates/>
   </xsl:template>
   <xsl:template
      match="tei:sourceDesc[@xml:id='sourceDesc1' or @xml:id='sourceDesc2' or @xml:id='sourceDesc3']">
      <div class="info">
         <xsl:apply-templates/>
      </div>
   </xsl:template>
   <xsl:template match="tei:sourceDesc[@xml:id='none']">
      <div class="no">
         <xsl:apply-templates/>
      </div>
   </xsl:template>
   <xsl:template
      match="tei:titleStmt[@xml:id='titleStmt1' or @xml:id='titleStmt2' or @xml:id='titleStmt3']">
      <div class="no">
         <xsl:apply-templates/>
      </div>
   </xsl:template>
   <xsl:template
      match="tei:editionStmt[@xml:id='editionStmt1' or @xml:id='editionStmt2' or @xml:id='editionStmt3']">
      <div class="no">
         <xsl:apply-templates/>
      </div>
   </xsl:template>
   <xsl:template
      match="tei:publicationStmt[@xml:id='publicationStmt1' or @xml:id='publicationStmt2' or @xml:id='publicationStmt3']">
      <div class="no">
         <xsl:apply-templates/>
      </div>
   </xsl:template>
   <xsl:template
      match="tei:notesStmt[@xml:id='notesStmt1' or @xml:id='notesStmt2'or @xml:id='notesStmt3']">
      <div class="no">
         <xsl:apply-templates/>
      </div>
   </xsl:template>
   <xsl:template match="tei:div">
      <p>
         <xsl:apply-templates/>
      </p>
   </xsl:template>
   <xsl:template match="tei:availability">
      <b>
         <xsl:apply-templates/>
      </b>
   </xsl:template>
   <xsl:template match="tei:distributor">
      <b>
         <xsl:apply-templates/>
      </b>
   </xsl:template>
   <xsl:template match="tei:address[@xml:id='lab']">
      <b>
         <xsl:apply-templates/>
      </b>
   </xsl:template>
   <xsl:template match="tei:lb">
      <br/>
   </xsl:template>
   <xsl:template match="tei:title">
      <p class="title">
         <xsl:apply-templates/>
      </p>
   </xsl:template>
   <xsl:template match="tei:name">
      <xsl:choose>
         <xsl:when test="@xml:id='RBFT'">
            <xsl:apply-templates/>
            <br/>
         </xsl:when>
         <xsl:when test="@xml:id='GP'">
            <xsl:apply-templates/>
            <xsl:text>,</xsl:text>
         </xsl:when>
         <xsl:when test="@xml:id='SP'">
            <xsl:apply-templates/>
            <br/>
         </xsl:when>
         <xsl:when test="@xml:id='ES'">
            <xsl:apply-templates/>
            <br/>
         </xsl:when>
         <xsl:when test="@xml:id='ER'">
            <xsl:apply-templates/>
            <br/>
         </xsl:when>
         <xsl:otherwise>
            <xsl:apply-templates/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="tei:edition">
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:pubPlace">
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:publisher">
      <b>
         <xsl:text>Pubblicazione: </xsl:text>
      </b>
      <xsl:apply-templates/>
      <xsl:text>,</xsl:text>
   </xsl:template>
   <xsl:template match="tei:date">
      <xsl:choose>
         <xsl:when test="@when='2019'">
            <br/>
            <b>
               <xsl:text>Anno di compilazione: </xsl:text>
            </b>
            <xsl:apply-templates/>
            <br/>
         </xsl:when>
         <xsl:otherwise>
            <xsl:apply-templates/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="tei:publicationStmt">
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:bibl">
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:repository">
      <b>
         <xsl:text>Luogo: </xsl:text>
      </b>
      <xsl:apply-templates/>
   </xsl:template>
   <xsl:template match="tei:idno">
      <b>
         <br/>
         <xsl:text>Codice identificativo: </xsl:text>
      </b>
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:summary">
      <b>
         <xsl:text>Tipo: </xsl:text>
      </b>
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:textLang">
      <b>
         <xsl:text>Lingua: </xsl:text>
      </b>
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:objectType">
      <b>
         <xsl:text>Oggetto: </xsl:text>
      </b>
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:material">
      <b>
         <xsl:text>Materiale: </xsl:text>
      </b>
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:dimensions">
      <b>
         <xsl:text>Dimensioni: </xsl:text>
      </b>
      <xsl:apply-templates/>
   </xsl:template>
   <xsl:template match="tei:height">
      <xsl:apply-templates/>
      <xsl:text>cm x</xsl:text>
   </xsl:template>
   <xsl:template match="tei:width">
      <xsl:apply-templates/>
      <xsl:text>cm</xsl:text>
   </xsl:template>
   <xsl:template match="tei:stamp">
      <b>
         <xsl:text>Timbro: </xsl:text>
      </b>
      <xsl:apply-templates/>
   </xsl:template>
   <xsl:template match="tei:stamp[@type='postmark']">
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:stamp[@type='postage']">
      <xsl:apply-templates/>
   </xsl:template>
   <xsl:template match="tei:condition">
      <b>
         <xsl:text>Conservazone: </xsl:text>
      </b>
      <xsl:apply-templates/>
   </xsl:template>
   <xsl:template match="tei:support">
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:physDesc">
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:listPerson">
      <b>
         <xsl:text>Persone nominate:</xsl:text>
      </b>
      <br/>
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:person">
      <li>
         <xsl:apply-templates/>
      </li>
   </xsl:template>
   <xsl:template match="tei:listPlace">
      <b>
         <xsl:text>Luoghi nominati:</xsl:text>
      </b>
      <br/>
      <xsl:apply-templates/>
   </xsl:template>
   <xsl:template match="tei:place">
      <li>
         <xsl:apply-templates/>
      </li>
   </xsl:template>
   <xsl:template match="tei:listOrg">
      <b>
         <xsl:text>Organizzazioni: </xsl:text>
      </b>
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:sex"> ( <xsl:text>Sesso: </xsl:text>
      <xsl:apply-templates/> ) </xsl:template>
   <xsl:template match="tei:note"> ( <xsl:apply-templates/> ) </xsl:template>
   <xsl:template match="tei:settlement">
      <b>
         <xsl:text>Città: </xsl:text>
      </b>
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:district[@type='comune']">
      <xsl:text>(comune di </xsl:text>
      <xsl:apply-templates/>
      <xsl:text>,</xsl:text>
   </xsl:template>
   <xsl:template match="tei:district[@type='provincia']">
      <xsl:apply-templates/>
      <xsl:text>,</xsl:text>
   </xsl:template>
   <xsl:template match="tei:country">
      <b>
         <xsl:text>Paese:</xsl:text>
      </b>
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:country[@key='N']">
      <xsl:apply-templates/>
      <xsl:text>)</xsl:text>
   </xsl:template>
   <xsl:template match="tei:resp">
      <b>
         <xsl:apply-templates/>
         <xsl:text>:</xsl:text>
      </b>
   </xsl:template>
   <xsl:template match="tei:figure">
      <div id="imgDesc">
         <xsl:apply-templates/>
      </div>
   </xsl:template>
   <xsl:template match="tei:author">
      <b>
         <xsl:text>Autore: </xsl:text>
      </b>
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:div[@xml:id='txtDesc1' or @xml:id='txtDesc2' or @xml:id='txtDesc3']">
      <div id="txt">
         <xsl:apply-templates/>
      </div>
      <br/>
   </xsl:template>
   <xsl:template match="tei:div[@xml:id='timbri1' or @xml:id='timbri2' or @xml:id='timbri3']">
      <div id="timbri">
         <b>
            <xsl:text>Timbri e francobolli:</xsl:text>
            <br/>
         </b>
         <xsl:apply-templates/>
      </div>
   </xsl:template>
   <xsl:template match="tei:div[@xml:id='testo1' or @xml:id='testo2' or @xml:id='testo3']">
      <div id="testo">
         <b>
            <xsl:text>Testo della cartolina:</xsl:text>
            <br/>
         </b>
         <xsl:apply-templates/>
      </div>
   </xsl:template>
   <xsl:template
      match="tei:div[@xml:id='indirizzo1' or @xml:id='indirizzo2' or @xml:id='indirizzo3']">
      <div id="indirizzo">
         <b>
            <br/>
            <xsl:text>Indirizzo del destinatario:</xsl:text>
         </b>
         <xsl:apply-templates/>
      </div>
   </xsl:template>
   <xsl:template match="tei:expan">
      <div class="no">
         <xsl:apply-templates/>
      </div>
   </xsl:template>
   <xsl:template match="tei:orig">
      <div class="no">
         <xsl:apply-templates/>
      </div>
   </xsl:template>
   <xsl:template match="tei:profileDesc">
      <div class="no">
         <xsl:apply-templates/>
      </div>
   </xsl:template>
   <xsl:template match="tei:langUsage">
      <div class="no">
         <xsl:apply-templates/>
      </div>
   </xsl:template>
   <xsl:template match="tei:p[@xml:id='address1' or @xml:id='address2']">
      <div class="no">
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <xsl:template match="tei:corr">
      <div class="no">
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <xsl:template match="tei:p[@xml:id='scritto1' or @xml:id='scritto2' or @xml:id='scritto3']">
      <i>
         <xsl:apply-templates/>
      </i>
   </xsl:template>
   <xsl:template match="tei:time">
      <xsl:text>ore </xsl:text>
      <xsl:apply-templates/>
   </xsl:template>
</xsl:stylesheet>
