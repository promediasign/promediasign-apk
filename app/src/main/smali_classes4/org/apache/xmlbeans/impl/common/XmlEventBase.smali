.class public abstract Lorg/apache/xmlbeans/impl/common/XmlEventBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/xml/stream/XMLEvent;


# instance fields
.field private _type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/xmlbeans/impl/common/XmlEventBase;->_type:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/common/XmlEventBase;->_type:I

    return v0
.end method

.method public getTypeAsString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/common/XmlEventBase;->_type:I

    invoke-static {v0}, Lorg/apache/xmlbeans/xml/stream/events/ElementTypeNames;->getName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isChangePrefixMapping()Z
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/common/XmlEventBase;->_type:I

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCharacterData()Z
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/common/XmlEventBase;->_type:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEndDocument()Z
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/common/XmlEventBase;->_type:I

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEndElement()Z
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/common/XmlEventBase;->_type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEndPrefixMapping()Z
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/common/XmlEventBase;->_type:I

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEntityReference()Z
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/common/XmlEventBase;->_type:I

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNull()Z
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/common/XmlEventBase;->_type:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isProcessingInstruction()Z
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/common/XmlEventBase;->_type:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSpace()Z
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/common/XmlEventBase;->_type:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStartDocument()Z
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/common/XmlEventBase;->_type:I

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStartElement()Z
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/common/XmlEventBase;->_type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStartPrefixMapping()Z
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/common/XmlEventBase;->_type:I

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lorg/apache/xmlbeans/impl/common/XmlEventBase;->_type:I

    return-void
.end method
