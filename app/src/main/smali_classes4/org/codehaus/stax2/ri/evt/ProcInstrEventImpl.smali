.class public Lorg/codehaus/stax2/ri/evt/ProcInstrEventImpl;
.super Lorg/codehaus/stax2/ri/evt/BaseEventImpl;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/javax/xml/stream/events/ProcessingInstruction;


# instance fields
.field final mData:Ljava/lang/String;

.field final mTarget:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codehaus/stax2/ri/evt/BaseEventImpl;-><init>(Lorg/apache/poi/javax/xml/stream/Location;)V

    iput-object p2, p0, Lorg/codehaus/stax2/ri/evt/ProcInstrEventImpl;->mTarget:Ljava/lang/String;

    iput-object p3, p0, Lorg/codehaus/stax2/ri/evt/ProcInstrEventImpl;->mData:Ljava/lang/String;

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
    instance-of v2, p1, Lorg/apache/poi/javax/xml/stream/events/ProcessingInstruction;

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lorg/apache/poi/javax/xml/stream/events/ProcessingInstruction;

    iget-object v2, p0, Lorg/codehaus/stax2/ri/evt/ProcInstrEventImpl;->mTarget:Ljava/lang/String;

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/events/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/codehaus/stax2/ri/evt/ProcInstrEventImpl;->mData:Ljava/lang/String;

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/events/ProcessingInstruction;->getData()Ljava/lang/String;

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

.method public getData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/ProcInstrEventImpl;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public getEventType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/ProcInstrEventImpl;->mTarget:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/ProcInstrEventImpl;->mTarget:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/codehaus/stax2/ri/evt/ProcInstrEventImpl;->mData:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public isProcessingInstruction()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public writeAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 1

    :try_start_0
    const-string v0, "<?"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/ProcInstrEventImpl;->mTarget:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/ProcInstrEventImpl;->mData:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/ProcInstrEventImpl;->mData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const-string v0, "?>"

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
    .locals 2

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/ProcInstrEventImpl;->mData:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/ProcInstrEventImpl;->mTarget:Ljava/lang/String;

    iget-object v1, p0, Lorg/codehaus/stax2/ri/evt/ProcInstrEventImpl;->mData:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/javax/xml/stream/XMLStreamWriter;->writeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/ProcInstrEventImpl;->mTarget:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamWriter;->writeProcessingInstruction(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
