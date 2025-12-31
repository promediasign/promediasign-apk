.class public abstract Lcom/microsoft/schemas/office/office/CTShapeLayout$Factory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/schemas/office/office/CTShapeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method public static newInstance()Lcom/microsoft/schemas/office/office/CTShapeLayout;
    .locals 2

    sget-object v0, Lcom/microsoft/schemas/office/office/CTShapeLayout;->type:Lorg/apache/xmlbeans/SchemaType;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/poi/POIXMLTypeLoader;->newInstance(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lcom/microsoft/schemas/office/office/CTShapeLayout;

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Lcom/microsoft/schemas/office/office/CTShapeLayout;
    .locals 1

    sget-object v0, Lcom/microsoft/schemas/office/office/CTShapeLayout;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-static {p0, v0, p1}, Lorg/apache/poi/POIXMLTypeLoader;->parse(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lcom/microsoft/schemas/office/office/CTShapeLayout;

    return-object p0
.end method
