.class public Lorg/codehaus/stax2/ri/evt/DTDEventImpl;
.super Lorg/codehaus/stax2/ri/evt/BaseEventImpl;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/javax/xml/stream/events/DTD;


# instance fields
.field protected final mDTD:Ljava/lang/Object;

.field protected mFullText:Ljava/lang/String;

.field protected final mInternalSubset:Ljava/lang/String;

.field protected final mPublicId:Ljava/lang/String;

.field protected final mRootName:Ljava/lang/String;

.field protected final mSystemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;)V
    .locals 7

    .line 1
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/codehaus/stax2/ri/evt/DTDEventImpl;-><init>(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p2, p0, Lorg/codehaus/stax2/ri/evt/DTDEventImpl;->mFullText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 2
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/codehaus/stax2/ri/evt/DTDEventImpl;-><init>(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/codehaus/stax2/ri/evt/BaseEventImpl;-><init>(Lorg/apache/poi/javax/xml/stream/Location;)V

    iput-object p2, p0, Lorg/codehaus/stax2/ri/evt/DTDEventImpl;->mRootName:Ljava/lang/String;

    iput-object p3, p0, Lorg/codehaus/stax2/ri/evt/DTDEventImpl;->mSystemId:Ljava/lang/String;

    iput-object p4, p0, Lorg/codehaus/stax2/ri/evt/DTDEventImpl;->mPublicId:Ljava/lang/String;

    iput-object p5, p0, Lorg/codehaus/stax2/ri/evt/DTDEventImpl;->mInternalSubset:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/codehaus/stax2/ri/evt/DTDEventImpl;->mFullText:Ljava/lang/String;

    iput-object p6, p0, Lorg/codehaus/stax2/ri/evt/DTDEventImpl;->mDTD:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public doGetDocumentTypeDeclaration()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/DTDEventImpl;->mFullText:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/DTDEventImpl;->mInternalSubset:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x40

    goto :goto_0

    :cond_0
    const/16 v0, 0x3c

    :goto_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1, v0}, Ljava/io/StringWriter;-><init>(I)V

    invoke-virtual {p0, v1}, Lorg/codehaus/stax2/ri/evt/DTDEventImpl;->writeAsEncodedUnicode(Ljava/io/Writer;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/stax2/ri/evt/DTDEventImpl;->mFullText:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/DTDEventImpl;->mFullText:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    instance-of v1, p1, Lorg/apache/poi/javax/xml/stream/events/DTD;

    if-nez v1, :cond_2

    return v0

    :cond_2
    check-cast p1, Lorg/apache/poi/javax/xml/stream/events/DTD;

    invoke-virtual {p0}, Lorg/codehaus/stax2/ri/evt/DTDEventImpl;->getDocumentTypeDeclaration()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/events/DTD;->getDocumentTypeDeclaration()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/codehaus/stax2/ri/evt/BaseEventImpl;->stringsWithNullsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getDocumentTypeDeclaration()Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lorg/codehaus/stax2/ri/evt/DTDEventImpl;->doGetDocumentTypeDeclaration()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/poi/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Internal error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getEntities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/javax/xml/stream/events/EntityDeclaration;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEventType()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method

.method public getNotations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/javax/xml/stream/events/NotationDeclaration;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProcessedDTD()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/DTDEventImpl;->mDTD:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/DTDEventImpl;->mRootName:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/codehaus/stax2/ri/evt/DTDEventImpl;->mSystemId:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lorg/codehaus/stax2/ri/evt/DTDEventImpl;->mPublicId:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lorg/codehaus/stax2/ri/evt/DTDEventImpl;->mInternalSubset:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lorg/codehaus/stax2/ri/evt/DTDEventImpl;->mDTD:Ljava/lang/Object;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_4
    if-nez v0, :cond_5

    iget-object v1, p0, Lorg/codehaus/stax2/ri/evt/DTDEventImpl;->mFullText:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_5
    return v0
.end method

.method public writeAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/DTDEventImpl;->mFullText:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-string v0, "<!DOCTYPE"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/DTDEventImpl;->mRootName:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/DTDEventImpl;->mRootName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/DTDEventImpl;->mSystemId:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/DTDEventImpl;->mPublicId:Ljava/lang/String;

    const/16 v1, 0x22

    if-eqz v0, :cond_2

    const-string v0, " PUBLIC \""

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/DTDEventImpl;->mPublicId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    :cond_2
    const-string v0, " SYSTEM"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_0
    const-string v0, " \""

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/DTDEventImpl;->mSystemId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    :cond_3
    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/DTDEventImpl;->mInternalSubset:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, " ["

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/DTDEventImpl;->mInternalSubset:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    :cond_4
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0, p1}, Lorg/codehaus/stax2/ri/evt/BaseEventImpl;->throwFromIOE(Ljava/io/IOException;)V

    :goto_2
    return-void
.end method

.method public writeUsing(Lorg/codehaus/stax2/XMLStreamWriter2;)V
    .locals 4

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/DTDEventImpl;->mRootName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/codehaus/stax2/ri/evt/DTDEventImpl;->mSystemId:Ljava/lang/String;

    iget-object v2, p0, Lorg/codehaus/stax2/ri/evt/DTDEventImpl;->mPublicId:Ljava/lang/String;

    iget-object v3, p0, Lorg/codehaus/stax2/ri/evt/DTDEventImpl;->mInternalSubset:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2, v3}, Lorg/codehaus/stax2/XMLStreamWriter2;->writeDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/stax2/ri/evt/DTDEventImpl;->doGetDocumentTypeDeclaration()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamWriter;->writeDTD(Ljava/lang/String;)V

    return-void
.end method
