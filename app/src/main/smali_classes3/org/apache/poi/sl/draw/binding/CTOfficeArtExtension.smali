.class public Lorg/apache/poi/sl/draw/binding/CTOfficeArtExtension;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/xml/bind/annotation/XmlAccessorType;
    value = .enum Ljavax/xml/bind/annotation/XmlAccessType;->FIELD:Ljavax/xml/bind/annotation/XmlAccessType;
.end annotation

.annotation runtime Ljavax/xml/bind/annotation/XmlType;
    name = "CT_OfficeArtExtension"
    namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
    propOrder = {
        "any"
    }
.end annotation


# instance fields
.field protected any:Ljava/lang/Object;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAnyElement;
        lax = true
    .end annotation
.end field

.field protected uri:Ljava/lang/String;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlSchemaType;
        name = "token"
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;
        value = Ljavax/xml/bind/annotation/adapters/CollapsedStringAdapter;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAny()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTOfficeArtExtension;->any:Ljava/lang/Object;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTOfficeArtExtension;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public isSetAny()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTOfficeArtExtension;->any:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetUri()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTOfficeArtExtension;->uri:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAny(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTOfficeArtExtension;->any:Ljava/lang/Object;

    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTOfficeArtExtension;->uri:Ljava/lang/String;

    return-void
.end method
