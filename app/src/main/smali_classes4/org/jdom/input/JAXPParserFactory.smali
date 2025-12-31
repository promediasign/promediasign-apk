.class Lorg/jdom/input/JAXPParserFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: JAXPParserFactory.java,v $ $Revision: 1.6 $ $Date: 2007/11/10 05:29:00 $ $Name:  $"

.field private static final JAXP_SCHEMA_LANGUAGE_PROPERTY:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

.field private static final JAXP_SCHEMA_LOCATION_PROPERTY:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaSource"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createParser(ZLjava/util/Map;Ljava/util/Map;)Lorg/xml/sax/XMLReader;
    .locals 1

    const-string p1, "Could not allocate JAXP SAX Parser"

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object p0
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    const-string v0, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-static {p0, p2, v0}, Lorg/jdom/input/JAXPParserFactory;->setProperty(Ljavax/xml/parsers/SAXParser;Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-static {p0, p2, v0}, Lorg/jdom/input/JAXPParserFactory;->setProperty(Ljavax/xml/parsers/SAXParser;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance p2, Lorg/jdom/JDOMException;

    invoke-direct {p2, p1, p0}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    new-instance p2, Lorg/jdom/JDOMException;

    invoke-direct {p2, p1, p0}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private static setProperty(Ljavax/xml/parsers/SAXParser;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p2, p1}, Ljavax/xml/parsers/SAXParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void

    .line 15
    :catch_0
    new-instance p1, Lorg/jdom/JDOMException;

    .line 16
    .line 17
    const-string v0, " property not recognized for JAXP parser "

    .line 18
    .line 19
    invoke-static {p2, v0}, Lorg/apache/ftpserver/main/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-direct {p1, p0}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :catch_1
    new-instance p1, Lorg/jdom/JDOMException;

    .line 43
    .line 44
    const-string v0, " property not supported for JAXP parser "

    .line 45
    .line 46
    invoke-static {p2, v0}, Lorg/apache/ftpserver/main/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-direct {p1, p0}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p1
.end method
