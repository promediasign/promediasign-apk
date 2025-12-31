.class public abstract Lcom/microsoft/schemas/vml/CTShapetype$Factory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/schemas/vml/CTShapetype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method public static parse(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Lcom/microsoft/schemas/vml/CTShapetype;
    .locals 1

    sget-object v0, Lcom/microsoft/schemas/vml/CTShapetype;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-static {p0, v0, p1}, Lorg/apache/poi/POIXMLTypeLoader;->parse(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lcom/microsoft/schemas/vml/CTShapetype;

    return-object p0
.end method
