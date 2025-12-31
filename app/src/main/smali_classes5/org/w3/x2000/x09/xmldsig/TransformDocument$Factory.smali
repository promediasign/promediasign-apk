.class public abstract Lorg/w3/x2000/x09/xmldsig/TransformDocument$Factory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/w3/x2000/x09/xmldsig/TransformDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method public static parse(Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/XmlOptions;)Lorg/w3/x2000/x09/xmldsig/TransformDocument;
    .locals 1

    sget-object v0, Lorg/w3/x2000/x09/xmldsig/TransformDocument;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-static {p0, v0, p1}, Lorg/apache/poi/POIXMLTypeLoader;->parse(Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/w3/x2000/x09/xmldsig/TransformDocument;

    return-object p0
.end method
