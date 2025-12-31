.class public abstract Lcom/fasterxml/aalto/out/SingleByteXmlWriter;
.super Lcom/fasterxml/aalto/out/ByteXmlWriter;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/fasterxml/aalto/out/WriterConfig;Ljava/io/OutputStream;Lcom/fasterxml/aalto/util/XmlCharTypes;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/aalto/out/ByteXmlWriter;-><init>(Lcom/fasterxml/aalto/out/WriterConfig;Ljava/io/OutputStream;Lcom/fasterxml/aalto/util/XmlCharTypes;)V

    return-void
.end method


# virtual methods
.method public final output2ByteChar(I)V
    .locals 1

    const-string v0, "content"

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/aalto/out/XmlWriter;->reportFailedEscaping(Ljava/lang/String;I)V

    return-void
.end method

.method public final outputMultiByteChar(I[CII)I
    .locals 1

    const v0, 0xd800

    if-lt p1, v0, :cond_2

    const v0, 0xdfff

    if-gt p1, v0, :cond_1

    if-lt p3, p4, :cond_0

    iput p1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_surrogate:I

    goto :goto_0

    :cond_0
    add-int/lit8 p4, p3, 0x1

    aget-char p2, p2, p3

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/aalto/out/SingleByteXmlWriter;->outputSurrogates(II)V

    move p3, p4

    :goto_0
    return p3

    :cond_1
    const p2, 0xfffe

    if-lt p1, p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/out/XmlWriter;->reportInvalidChar(I)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeAsEntity(I)V

    return p3
.end method

.method public final outputSurrogates(II)V
    .locals 1

    const-string v0, " in content"

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->calcSurrogate(IILjava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeAsEntity(I)V

    return-void
.end method
