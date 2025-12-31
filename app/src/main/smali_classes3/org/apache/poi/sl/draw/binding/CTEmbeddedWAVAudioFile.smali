.class public Lorg/apache/poi/sl/draw/binding/CTEmbeddedWAVAudioFile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/xml/bind/annotation/XmlAccessorType;
    value = .enum Ljavax/xml/bind/annotation/XmlAccessType;->FIELD:Ljavax/xml/bind/annotation/XmlAccessType;
.end annotation

.annotation runtime Ljavax/xml/bind/annotation/XmlType;
    name = "CT_EmbeddedWAVAudioFile"
    namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
.end annotation


# instance fields
.field protected builtIn:Ljava/lang/Boolean;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
    .end annotation
.end field

.field protected embed:Ljava/lang/String;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
        namespace = "http://schemas.openxmlformats.org/officeDocument/2006/relationships"
        required = true
    .end annotation
.end field

.field protected name:Ljava/lang/String;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmbed()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTEmbeddedWAVAudioFile;->embed:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTEmbeddedWAVAudioFile;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public isBuiltIn()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTEmbeddedWAVAudioFile;->builtIn:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isSetBuiltIn()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTEmbeddedWAVAudioFile;->builtIn:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetEmbed()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTEmbeddedWAVAudioFile;->embed:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetName()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTEmbeddedWAVAudioFile;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBuiltIn(Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTEmbeddedWAVAudioFile;->builtIn:Ljava/lang/Boolean;

    return-void
.end method

.method public setEmbed(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTEmbeddedWAVAudioFile;->embed:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTEmbeddedWAVAudioFile;->name:Ljava/lang/String;

    return-void
.end method

.method public unsetBuiltIn()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTEmbeddedWAVAudioFile;->builtIn:Ljava/lang/Boolean;

    return-void
.end method
