.class public abstract Lcom/microsoft/schemas/office/visio/x2012/main/MastersDocument$Factory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/schemas/office/visio/x2012/main/MastersDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method public static parse(Ljava/io/InputStream;)Lcom/microsoft/schemas/office/visio/x2012/main/MastersDocument;
    .locals 2

    sget-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/MastersDocument;->type:Lorg/apache/xmlbeans/SchemaType;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/poi/POIXMLTypeLoader;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lcom/microsoft/schemas/office/visio/x2012/main/MastersDocument;

    return-object p0
.end method
