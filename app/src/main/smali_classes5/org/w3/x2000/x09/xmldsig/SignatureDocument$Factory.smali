.class public abstract Lorg/w3/x2000/x09/xmldsig/SignatureDocument$Factory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/w3/x2000/x09/xmldsig/SignatureDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method public static parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/w3/x2000/x09/xmldsig/SignatureDocument;
    .locals 1

    .line 1
    sget-object v0, Lorg/w3/x2000/x09/xmldsig/SignatureDocument;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-static {p0, v0, p1}, Lorg/apache/poi/POIXMLTypeLoader;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/w3/x2000/x09/xmldsig/SignatureDocument;

    return-object p0
.end method

.method public static parse(Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/XmlOptions;)Lorg/w3/x2000/x09/xmldsig/SignatureDocument;
    .locals 1

    .line 2
    sget-object v0, Lorg/w3/x2000/x09/xmldsig/SignatureDocument;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-static {p0, v0, p1}, Lorg/apache/poi/POIXMLTypeLoader;->parse(Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/w3/x2000/x09/xmldsig/SignatureDocument;

    return-object p0
.end method
