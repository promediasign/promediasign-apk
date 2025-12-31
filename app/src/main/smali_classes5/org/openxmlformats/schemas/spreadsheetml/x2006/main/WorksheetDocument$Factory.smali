.class public final Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument$Factory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method public static newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;
    .locals 2

    .line 1
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;->type:Lorg/apache/xmlbeans/SchemaType;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/poi/POIXMLTypeLoader;->newInstance(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;

    return-object v0
.end method

.method public static newInstance(Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;
    .locals 1

    .line 2
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-static {v0, p0}, Lorg/apache/poi/POIXMLTypeLoader;->newInstance(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;

    return-object p0
.end method

.method public static newValidatingXMLInputStream(Lorg/apache/xmlbeans/xml/stream/XMLInputStream;)Lorg/apache/xmlbeans/xml/stream/XMLInputStream;
    .locals 2

    .line 1
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;->type:Lorg/apache/xmlbeans/SchemaType;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/poi/POIXMLTypeLoader;->newValidatingXMLInputStream(Lorg/apache/xmlbeans/xml/stream/XMLInputStream;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/xml/stream/XMLInputStream;

    move-result-object p0

    return-object p0
.end method

.method public static newValidatingXMLInputStream(Lorg/apache/xmlbeans/xml/stream/XMLInputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/xml/stream/XMLInputStream;
    .locals 1

    .line 2
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-static {p0, v0, p1}, Lorg/apache/poi/POIXMLTypeLoader;->newValidatingXMLInputStream(Lorg/apache/xmlbeans/xml/stream/XMLInputStream;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/xml/stream/XMLInputStream;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/io/File;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;
    .locals 2

    .line 1
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;->type:Lorg/apache/xmlbeans/SchemaType;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/poi/POIXMLTypeLoader;->parse(Ljava/io/File;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;

    return-object p0
.end method

.method public static parse(Ljava/io/File;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;
    .locals 1

    .line 2
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-static {p0, v0, p1}, Lorg/apache/poi/POIXMLTypeLoader;->parse(Ljava/io/File;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;

    return-object p0
.end method

.method public static parse(Ljava/io/InputStream;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;
    .locals 2

    .line 3
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;->type:Lorg/apache/xmlbeans/SchemaType;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/poi/POIXMLTypeLoader;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;

    return-object p0
.end method

.method public static parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;
    .locals 1

    .line 4
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-static {p0, v0, p1}, Lorg/apache/poi/POIXMLTypeLoader;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;

    return-object p0
.end method

.method public static parse(Ljava/io/Reader;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;
    .locals 2

    .line 5
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;->type:Lorg/apache/xmlbeans/SchemaType;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/poi/POIXMLTypeLoader;->parse(Ljava/io/Reader;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;

    return-object p0
.end method

.method public static parse(Ljava/io/Reader;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;
    .locals 1

    .line 6
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-static {p0, v0, p1}, Lorg/apache/poi/POIXMLTypeLoader;->parse(Ljava/io/Reader;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;

    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;
    .locals 2

    .line 7
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;->type:Lorg/apache/xmlbeans/SchemaType;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/poi/POIXMLTypeLoader;->parse(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;
    .locals 1

    .line 8
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-static {p0, v0, p1}, Lorg/apache/poi/POIXMLTypeLoader;->parse(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;

    return-object p0
.end method

.method public static parse(Ljava/net/URL;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;
    .locals 2

    .line 9
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;->type:Lorg/apache/xmlbeans/SchemaType;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/poi/POIXMLTypeLoader;->parse(Ljava/net/URL;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;

    return-object p0
.end method

.method public static parse(Ljava/net/URL;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;
    .locals 1

    .line 10
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-static {p0, v0, p1}, Lorg/apache/poi/POIXMLTypeLoader;->parse(Ljava/net/URL;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;

    return-object p0
.end method

.method public static parse(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;
    .locals 2

    .line 11
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;->type:Lorg/apache/xmlbeans/SchemaType;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/poi/POIXMLTypeLoader;->parse(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;

    return-object p0
.end method

.method public static parse(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;
    .locals 1

    .line 12
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-static {p0, v0, p1}, Lorg/apache/poi/POIXMLTypeLoader;->parse(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;

    return-object p0
.end method

.method public static parse(Lorg/apache/xmlbeans/xml/stream/XMLInputStream;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;
    .locals 2

    .line 13
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;->type:Lorg/apache/xmlbeans/SchemaType;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/poi/POIXMLTypeLoader;->parse(Lorg/apache/xmlbeans/xml/stream/XMLInputStream;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;

    return-object p0
.end method

.method public static parse(Lorg/apache/xmlbeans/xml/stream/XMLInputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;
    .locals 1

    .line 14
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-static {p0, v0, p1}, Lorg/apache/poi/POIXMLTypeLoader;->parse(Lorg/apache/xmlbeans/xml/stream/XMLInputStream;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;

    return-object p0
.end method

.method public static parse(Lorg/w3c/dom/Node;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;
    .locals 2

    .line 15
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;->type:Lorg/apache/xmlbeans/SchemaType;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/poi/POIXMLTypeLoader;->parse(Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;

    return-object p0
.end method

.method public static parse(Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;
    .locals 1

    .line 16
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-static {p0, v0, p1}, Lorg/apache/poi/POIXMLTypeLoader;->parse(Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;

    return-object p0
.end method
