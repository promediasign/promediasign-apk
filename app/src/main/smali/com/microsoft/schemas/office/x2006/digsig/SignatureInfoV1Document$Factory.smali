.class public abstract Lcom/microsoft/schemas/office/x2006/digsig/SignatureInfoV1Document$Factory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/schemas/office/x2006/digsig/SignatureInfoV1Document;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method public static newInstance()Lcom/microsoft/schemas/office/x2006/digsig/SignatureInfoV1Document;
    .locals 2

    sget-object v0, Lcom/microsoft/schemas/office/x2006/digsig/SignatureInfoV1Document;->type:Lorg/apache/xmlbeans/SchemaType;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/poi/POIXMLTypeLoader;->newInstance(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lcom/microsoft/schemas/office/x2006/digsig/SignatureInfoV1Document;

    return-object v0
.end method
