.class public Lorg/codehaus/stax2/ri/evt/StartDocumentEventImpl;
.super Lorg/codehaus/stax2/ri/evt/BaseEventImpl;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/javax/xml/stream/events/StartDocument;


# instance fields
.field private final mEncodingScheme:Ljava/lang/String;

.field private final mEncodingSet:Z

.field private final mIsStandalone:Z

.field private final mStandaloneSet:Z

.field private final mSystemId:Ljava/lang/String;

.field private final mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/poi/javax/xml/stream/Location;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/codehaus/stax2/ri/evt/StartDocumentEventImpl;-><init>(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/codehaus/stax2/ri/evt/StartDocumentEventImpl;-><init>(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 3
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/stax2/ri/evt/StartDocumentEventImpl;-><init>(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lorg/codehaus/stax2/ri/evt/BaseEventImpl;-><init>(Lorg/apache/poi/javax/xml/stream/Location;)V

    iput-object p2, p0, Lorg/codehaus/stax2/ri/evt/StartDocumentEventImpl;->mEncodingScheme:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/codehaus/stax2/ri/evt/StartDocumentEventImpl;->mEncodingSet:Z

    iput-object p3, p0, Lorg/codehaus/stax2/ri/evt/StartDocumentEventImpl;->mVersion:Ljava/lang/String;

    iput-boolean p4, p0, Lorg/codehaus/stax2/ri/evt/StartDocumentEventImpl;->mStandaloneSet:Z

    iput-boolean p5, p0, Lorg/codehaus/stax2/ri/evt/StartDocumentEventImpl;->mIsStandalone:Z

    const-string p1, ""

    iput-object p1, p0, Lorg/codehaus/stax2/ri/evt/StartDocumentEventImpl;->mSystemId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/javax/xml/stream/Location;Lorg/apache/poi/javax/xml/stream/XMLStreamReader;)V
    .locals 2

    .line 5
    invoke-direct {p0, p1}, Lorg/codehaus/stax2/ri/evt/BaseEventImpl;-><init>(Lorg/apache/poi/javax/xml/stream/Location;)V

    invoke-interface {p2}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->standaloneSet()Z

    move-result v0

    iput-boolean v0, p0, Lorg/codehaus/stax2/ri/evt/StartDocumentEventImpl;->mStandaloneSet:Z

    invoke-interface {p2}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->isStandalone()Z

    move-result v0

    iput-boolean v0, p0, Lorg/codehaus/stax2/ri/evt/StartDocumentEventImpl;->mIsStandalone:Z

    invoke-interface {p2}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v0, "1.0"

    :cond_1
    iput-object v0, p0, Lorg/codehaus/stax2/ri/evt/StartDocumentEventImpl;->mVersion:Ljava/lang/String;

    invoke-interface {p2}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/codehaus/stax2/ri/evt/StartDocumentEventImpl;->mEncodingScheme:Ljava/lang/String;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lorg/codehaus/stax2/ri/evt/StartDocumentEventImpl;->mEncodingSet:Z

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/Location;->getSystemId()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const-string p1, ""

    :goto_1
    iput-object p1, p0, Lorg/codehaus/stax2/ri/evt/StartDocumentEventImpl;->mSystemId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public encodingSet()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codehaus/stax2/ri/evt/StartDocumentEventImpl;->mEncodingSet:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lorg/apache/poi/javax/xml/stream/events/StartDocument;

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lorg/apache/poi/javax/xml/stream/events/StartDocument;

    invoke-virtual {p0}, Lorg/codehaus/stax2/ri/evt/StartDocumentEventImpl;->encodingSet()Z

    move-result v2

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/events/StartDocument;->encodingSet()Z

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lorg/codehaus/stax2/ri/evt/StartDocumentEventImpl;->isStandalone()Z

    move-result v2

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/events/StartDocument;->isStandalone()Z

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lorg/codehaus/stax2/ri/evt/StartDocumentEventImpl;->standaloneSet()Z

    move-result v2

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/events/StartDocument;->standaloneSet()Z

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lorg/codehaus/stax2/ri/evt/StartDocumentEventImpl;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/events/StartDocument;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/codehaus/stax2/ri/evt/BaseEventImpl;->stringsWithNullsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lorg/codehaus/stax2/ri/evt/StartDocumentEventImpl;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/events/StartDocument;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/codehaus/stax2/ri/evt/BaseEventImpl;->stringsWithNullsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lorg/codehaus/stax2/ri/evt/StartDocumentEventImpl;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/events/StartDocument;->getVersion()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lorg/codehaus/stax2/ri/evt/BaseEventImpl;->stringsWithNullsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCharacterEncodingScheme()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/StartDocumentEventImpl;->mEncodingScheme:Ljava/lang/String;

    return-object v0
.end method

.method public getEventType()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/StartDocumentEventImpl;->mSystemId:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/StartDocumentEventImpl;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/codehaus/stax2/ri/evt/StartDocumentEventImpl;->encodingSet()Z

    move-result v0

    invoke-virtual {p0}, Lorg/codehaus/stax2/ri/evt/StartDocumentEventImpl;->isStandalone()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/stax2/ri/evt/StartDocumentEventImpl;->standaloneSet()Z

    move-result v1

    if-eqz v1, :cond_1

    xor-int/lit8 v0, v0, 0x1

    :cond_1
    iget-object v1, p0, Lorg/codehaus/stax2/ri/evt/StartDocumentEventImpl;->mVersion:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lorg/codehaus/stax2/ri/evt/StartDocumentEventImpl;->mEncodingScheme:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lorg/codehaus/stax2/ri/evt/StartDocumentEventImpl;->mSystemId:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_4
    return v0
.end method

.method public isStandalone()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codehaus/stax2/ri/evt/StartDocumentEventImpl;->mIsStandalone:Z

    return v0
.end method

.method public isStartDocument()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public standaloneSet()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codehaus/stax2/ri/evt/StartDocumentEventImpl;->mStandaloneSet:Z

    return v0
.end method

.method public writeAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 2

    :try_start_0
    const-string v0, "<?xml version=\""

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/StartDocumentEventImpl;->mVersion:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/StartDocumentEventImpl;->mVersion:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_5

    :cond_1
    :goto_1
    const-string v0, "1.0"

    goto :goto_0

    :goto_2
    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    iget-boolean v1, p0, Lorg/codehaus/stax2/ri/evt/StartDocumentEventImpl;->mEncodingSet:Z

    if-eqz v1, :cond_2

    const-string v1, " encoding=\""

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codehaus/stax2/ri/evt/StartDocumentEventImpl;->mEncodingScheme:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    :cond_2
    iget-boolean v0, p0, Lorg/codehaus/stax2/ri/evt/StartDocumentEventImpl;->mStandaloneSet:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/codehaus/stax2/ri/evt/StartDocumentEventImpl;->mIsStandalone:Z

    if-eqz v0, :cond_3

    const-string v0, " standalone=\"yes\""

    :goto_3
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    const-string v0, " standalone=\"no\""

    goto :goto_3

    :cond_4
    :goto_4
    const-string v0, " ?>"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :goto_5
    invoke-virtual {p0, p1}, Lorg/codehaus/stax2/ri/evt/BaseEventImpl;->throwFromIOE(Ljava/io/IOException;)V

    :goto_6
    return-void
.end method

.method public writeUsing(Lorg/codehaus/stax2/XMLStreamWriter2;)V
    .locals 0

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamWriter;->writeStartDocument()V

    return-void
.end method
