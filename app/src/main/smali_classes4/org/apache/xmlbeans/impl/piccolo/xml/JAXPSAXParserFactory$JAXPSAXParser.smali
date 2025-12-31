.class Lorg/apache/xmlbeans/impl/piccolo/xml/JAXPSAXParserFactory$JAXPSAXParser;
.super Ljavax/xml/parsers/SAXParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/piccolo/xml/JAXPSAXParserFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JAXPSAXParser"
.end annotation


# instance fields
.field parser:Lorg/apache/xmlbeans/impl/piccolo/xml/Piccolo;


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/piccolo/xml/Piccolo;)V
    .locals 0

    invoke-direct {p0}, Ljavax/xml/parsers/SAXParser;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/JAXPSAXParserFactory$JAXPSAXParser;->parser:Lorg/apache/xmlbeans/impl/piccolo/xml/Piccolo;

    return-void
.end method


# virtual methods
.method public getParser()Lorg/xml/sax/Parser;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/JAXPSAXParserFactory$JAXPSAXParser;->parser:Lorg/apache/xmlbeans/impl/piccolo/xml/Piccolo;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/JAXPSAXParserFactory$JAXPSAXParser;->parser:Lorg/apache/xmlbeans/impl/piccolo/xml/Piccolo;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/piccolo/xml/Piccolo;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getXMLReader()Lorg/xml/sax/XMLReader;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/JAXPSAXParserFactory$JAXPSAXParser;->parser:Lorg/apache/xmlbeans/impl/piccolo/xml/Piccolo;

    return-object v0
.end method

.method public isNamespaceAware()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/JAXPSAXParserFactory$JAXPSAXParser;->parser:Lorg/apache/xmlbeans/impl/piccolo/xml/Piccolo;

    iget-boolean v0, v0, Lorg/apache/xmlbeans/impl/piccolo/xml/Piccolo;->fNamespaces:Z

    return v0
.end method

.method public isValidating()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/JAXPSAXParserFactory$JAXPSAXParser;->parser:Lorg/apache/xmlbeans/impl/piccolo/xml/Piccolo;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xmlbeans/impl/piccolo/xml/Piccolo;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
