.class public Lorg/codehaus/stax2/ri/evt/EntityDeclarationEventImpl;
.super Lorg/codehaus/stax2/ri/evt/BaseEventImpl;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/javax/xml/stream/events/EntityDeclaration;


# instance fields
.field protected final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codehaus/stax2/ri/evt/BaseEventImpl;-><init>(Lorg/apache/poi/javax/xml/stream/Location;)V

    iput-object p2, p0, Lorg/codehaus/stax2/ri/evt/EntityDeclarationEventImpl;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
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
    instance-of v2, p1, Lorg/apache/poi/javax/xml/stream/events/EntityDeclaration;

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lorg/apache/poi/javax/xml/stream/events/EntityDeclaration;

    invoke-virtual {p0}, Lorg/codehaus/stax2/ri/evt/EntityDeclarationEventImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/events/EntityDeclaration;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/codehaus/stax2/ri/evt/BaseEventImpl;->stringsWithNullsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lorg/codehaus/stax2/ri/evt/EntityDeclarationEventImpl;->getBaseURI()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/events/EntityDeclaration;->getBaseURI()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/codehaus/stax2/ri/evt/BaseEventImpl;->stringsWithNullsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lorg/codehaus/stax2/ri/evt/EntityDeclarationEventImpl;->getNotationName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/events/EntityDeclaration;->getNotationName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/codehaus/stax2/ri/evt/BaseEventImpl;->stringsWithNullsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lorg/codehaus/stax2/ri/evt/EntityDeclarationEventImpl;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/events/EntityDeclaration;->getPublicId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/codehaus/stax2/ri/evt/BaseEventImpl;->stringsWithNullsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lorg/codehaus/stax2/ri/evt/EntityDeclarationEventImpl;->getReplacementText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/events/EntityDeclaration;->getReplacementText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/codehaus/stax2/ri/evt/BaseEventImpl;->stringsWithNullsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lorg/codehaus/stax2/ri/evt/EntityDeclarationEventImpl;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/events/EntityDeclaration;->getSystemId()Ljava/lang/String;

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

.method public getBaseURI()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getEventType()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/EntityDeclarationEventImpl;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNotationName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getReplacementText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/EntityDeclarationEventImpl;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public writeAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 1

    :try_start_0
    const-string v0, "<!ENTITY "

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/codehaus/stax2/ri/evt/EntityDeclarationEventImpl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, " \""

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/codehaus/stax2/ri/evt/EntityDeclarationEventImpl;->getReplacementText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const-string v0, "\">"

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
    .locals 1

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {p0, v0}, Lorg/codehaus/stax2/ri/evt/EntityDeclarationEventImpl;->writeAsEncodedUnicode(Ljava/io/Writer;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/codehaus/stax2/XMLStreamWriter2;->writeRaw(Ljava/lang/String;)V

    return-void
.end method
