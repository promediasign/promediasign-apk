.class public final Lorg/apache/xmlbeans/impl/piccolo/xml/UTF8XMLDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/piccolo/xml/XMLDecoder;


# instance fields
.field private sawCR:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/UTF8XMLDecoder;->sawCR:Z

    return-void
.end method


# virtual methods
.method public decode([BII[CII[I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p3

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v1, :cond_14

    move/from16 v6, p6

    if-ge v4, v6, :cond_14

    add-int v7, p2, v3

    aget-byte v7, p1, v7

    and-int/lit16 v8, v7, 0x80

    const-string v9, "Illegal XML character: 0x"

    if-nez v8, :cond_0

    goto/16 :goto_3

    :cond_0
    add-int/lit8 v8, v3, 0x1

    if-ge v8, v1, :cond_13

    add-int v10, p2, v8

    aget-byte v11, p1, v10

    and-int/lit16 v12, v7, 0xe0

    const/16 v13, 0xc0

    const-string v15, "Malformed UTF-8 character: 0x"

    const-string v2, " 0x"

    const/16 v14, 0x80

    if-ne v12, v13, :cond_3

    and-int/lit16 v3, v11, 0x80

    if-ne v3, v14, :cond_2

    and-int/lit8 v3, v7, 0x1f

    shl-int/lit8 v3, v3, 0x6

    and-int/lit8 v7, v11, 0x3f

    or-int/2addr v3, v7

    and-int/lit16 v7, v3, 0x780

    if-eqz v7, :cond_1

    move v7, v3

    :goto_1
    move v3, v8

    const v2, 0xd800

    goto :goto_2

    :cond_1
    new-instance v1, Ljava/io/CharConversionException;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "2-byte UTF-8 character is overlong: 0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sub-int/2addr v10, v5

    aget-byte v4, p1, v10

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    and-int/lit16 v2, v11, 0xff

    .line 1
    invoke-static {v2, v3}, Lorg/apache/ftpserver/main/a;->f(ILjava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-direct {v1, v2}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/io/CharConversionException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v15}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    and-int/lit16 v4, v7, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    and-int/lit16 v2, v11, 0xff

    .line 3
    invoke-static {v2, v3}, Lorg/apache/ftpserver/main/a;->f(ILjava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-direct {v1, v2}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    and-int/lit16 v8, v7, 0xf0

    const/16 v10, 0xe0

    if-ne v8, v10, :cond_e

    add-int/lit8 v8, v3, 0x2

    if-ge v8, v1, :cond_d

    add-int v3, p2, v8

    aget-byte v10, p1, v3

    and-int/lit16 v12, v11, 0x80

    if-ne v12, v14, :cond_c

    and-int/lit16 v12, v10, 0x80

    if-ne v12, v14, :cond_c

    and-int/lit8 v7, v7, 0xf

    shl-int/lit8 v7, v7, 0xc

    and-int/lit8 v12, v11, 0x3f

    shl-int/lit8 v12, v12, 0x6

    or-int/2addr v7, v12

    and-int/lit8 v12, v10, 0x3f

    or-int/2addr v7, v12

    const v12, 0xf800

    and-int/2addr v12, v7

    if-eqz v12, :cond_b

    goto :goto_1

    :goto_2
    if-lt v7, v2, :cond_4

    const v2, 0xe000

    if-lt v7, v2, :cond_a

    :cond_4
    const v2, 0xfffe

    if-eq v7, v2, :cond_a

    const v2, 0xffff

    if-eq v7, v2, :cond_a

    :goto_3
    const/16 v2, 0x20

    if-lt v7, v2, :cond_5

    const/4 v2, 0x0

    iput-boolean v2, v0, Lorg/apache/xmlbeans/impl/piccolo/xml/UTF8XMLDecoder;->sawCR:Z

    add-int/lit8 v2, v4, 0x1

    add-int v4, p5, v4

    int-to-char v7, v7

    aput-char v7, p4, v4

    move v4, v2

    goto/16 :goto_5

    :cond_5
    const/16 v2, 0x9

    if-eq v7, v2, :cond_9

    const/16 v2, 0xa

    if-eq v7, v2, :cond_7

    const/16 v8, 0xd

    if-ne v7, v8, :cond_6

    iput-boolean v5, v0, Lorg/apache/xmlbeans/impl/piccolo/xml/UTF8XMLDecoder;->sawCR:Z

    add-int/lit8 v7, v4, 0x1

    add-int v4, p5, v4

    aput-char v2, p4, v4

    :goto_4
    move v4, v7

    goto/16 :goto_5

    :cond_6
    new-instance v1, Lorg/apache/xmlbeans/impl/piccolo/io/IllegalCharException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-static {v7, v2}, Lorg/apache/ftpserver/main/a;->f(ILjava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-direct {v1, v2}, Lorg/apache/xmlbeans/impl/piccolo/io/IllegalCharException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    iget-boolean v7, v0, Lorg/apache/xmlbeans/impl/piccolo/xml/UTF8XMLDecoder;->sawCR:Z

    if-eqz v7, :cond_8

    const/4 v7, 0x0

    iput-boolean v7, v0, Lorg/apache/xmlbeans/impl/piccolo/xml/UTF8XMLDecoder;->sawCR:Z

    goto/16 :goto_5

    :cond_8
    add-int/lit8 v7, v4, 0x1

    add-int v4, p5, v4

    aput-char v2, p4, v4

    goto :goto_4

    :cond_9
    add-int/lit8 v7, v4, 0x1

    add-int v4, p5, v4

    aput-char v2, p4, v4

    goto :goto_4

    :cond_a
    new-instance v1, Lorg/apache/xmlbeans/impl/piccolo/io/IllegalCharException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-static {v7, v2}, Lorg/apache/ftpserver/main/a;->f(ILjava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-direct {v1, v2}, Lorg/apache/xmlbeans/impl/piccolo/io/IllegalCharException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    new-instance v1, Ljava/io/CharConversionException;

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "3-byte UTF-8 character is overlong: 0x"

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v3, -0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    and-int/lit16 v3, v11, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    and-int/lit16 v2, v10, 0xff

    .line 9
    invoke-static {v2, v4}, Lorg/apache/ftpserver/main/a;->f(ILjava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-direct {v1, v2}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    new-instance v1, Ljava/io/CharConversionException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v15}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    and-int/lit16 v4, v7, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    and-int/lit16 v4, v11, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    and-int/lit16 v2, v10, 0xff

    .line 11
    invoke-static {v2, v3}, Lorg/apache/ftpserver/main/a;->f(ILjava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-direct {v1, v2}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    const/4 v1, 0x0

    aput v3, p7, v1

    aput v4, p7, v5

    return-void

    :cond_e
    const/16 v10, 0xf0

    if-ne v8, v10, :cond_12

    add-int/lit8 v8, v3, 0x3

    if-ge v8, v1, :cond_11

    add-int/lit8 v8, v3, 0x2

    add-int v8, v8, p2

    aget-byte v8, p1, v8

    add-int/lit8 v3, v3, 0x3

    add-int v10, p2, v3

    aget-byte v10, p1, v10

    and-int/lit16 v12, v11, 0x80

    if-ne v12, v14, :cond_10

    and-int/lit16 v12, v8, 0x80

    if-ne v12, v14, :cond_10

    and-int/lit16 v12, v10, 0x80

    if-ne v12, v14, :cond_10

    and-int/lit8 v2, v7, 0x7

    shl-int/lit8 v2, v2, 0x12

    and-int/lit8 v7, v11, 0x3f

    shl-int/lit8 v7, v7, 0xc

    or-int/2addr v2, v7

    and-int/lit8 v7, v8, 0x3f

    shl-int/lit8 v7, v7, 0x6

    or-int/2addr v2, v7

    and-int/lit8 v7, v10, 0x3f

    or-int/2addr v2, v7

    const/high16 v7, 0x10000

    if-lt v2, v7, :cond_f

    const v8, 0x10ffff

    if-gt v2, v8, :cond_f

    sub-int/2addr v2, v7

    add-int/lit8 v7, v4, 0x1

    add-int v8, p5, v4

    shr-int/lit8 v9, v2, 0xa

    const v10, 0xd800

    or-int/2addr v9, v10

    int-to-char v9, v9

    aput-char v9, p4, v8

    add-int/lit8 v4, v4, 0x2

    add-int v7, p5, v7

    and-int/lit16 v2, v2, 0x3ff

    const v8, 0xdc00

    or-int/2addr v2, v8

    int-to-char v2, v2

    aput-char v2, p4, v7

    const/4 v2, 0x0

    iput-boolean v2, v0, Lorg/apache/xmlbeans/impl/piccolo/xml/UTF8XMLDecoder;->sawCR:Z

    :goto_5
    add-int/2addr v3, v5

    goto/16 :goto_0

    :cond_f
    new-instance v1, Lorg/apache/xmlbeans/impl/piccolo/io/IllegalCharException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-static {v2, v3}, Lorg/apache/ftpserver/main/a;->f(ILjava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-direct {v1, v2}, Lorg/apache/xmlbeans/impl/piccolo/io/IllegalCharException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    new-instance v1, Ljava/io/CharConversionException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v15}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    and-int/lit16 v4, v7, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    and-int/lit16 v4, v11, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    and-int/lit16 v4, v8, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    and-int/lit16 v2, v10, 0xff

    .line 15
    invoke-static {v2, v3}, Lorg/apache/ftpserver/main/a;->f(ILjava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-direct {v1, v2}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    add-int/lit8 v3, v3, -0x1

    const/4 v1, 0x0

    aput v3, p7, v1

    aput v4, p7, v5

    return-void

    :cond_12
    new-instance v1, Ljava/io/CharConversionException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Characters larger than 4 bytes are not supported: byte 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    and-int/lit16 v3, v7, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " implies a length of more than 4 bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    const/4 v1, 0x0

    aput v3, p7, v1

    aput v4, p7, v5

    return-void

    :cond_14
    const/4 v1, 0x0

    aput v3, p7, v1

    aput v4, p7, v5

    return-void
.end method

.method public decodeXMLDecl([BII[CII[I)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v1, p3, :cond_7

    if-ge v2, p6, :cond_7

    add-int v4, p2, v1

    aget-byte v4, p1, v4

    and-int/lit16 v5, v4, 0x80

    if-eqz v5, :cond_0

    goto :goto_3

    :cond_0
    const/16 v5, 0x20

    if-lt v4, v5, :cond_2

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/UTF8XMLDecoder;->sawCR:Z

    add-int/lit8 v5, v2, 0x1

    add-int/2addr v2, p5

    int-to-char v6, v4

    aput-char v6, p4, v2

    const/16 v2, 0x3e

    if-ne v4, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    move v2, v5

    goto :goto_3

    :cond_1
    move v2, v5

    goto :goto_2

    :cond_2
    const/16 v5, 0x9

    if-eq v4, v5, :cond_6

    const/16 v5, 0xa

    if-eq v4, v5, :cond_4

    const/16 v6, 0xd

    if-eq v4, v6, :cond_3

    goto :goto_3

    :cond_3
    iput-boolean v3, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/UTF8XMLDecoder;->sawCR:Z

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v2, p5

    aput-char v5, p4, v2

    :goto_1
    move v2, v3

    goto :goto_2

    :cond_4
    iget-boolean v3, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/UTF8XMLDecoder;->sawCR:Z

    if-eqz v3, :cond_5

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/UTF8XMLDecoder;->sawCR:Z

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v2, 0x1

    add-int/2addr v2, p5

    aput-char v5, p4, v2

    goto :goto_1

    :cond_6
    add-int/lit8 v3, v2, 0x1

    add-int/2addr v2, p5

    aput-char v5, p4, v2

    goto :goto_1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    :goto_3
    aput v1, p7, v0

    aput v2, p7, v3

    return-void
.end method

.method public maxBytesPerChar()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public minBytesPerChar()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public newCharsetDecoder()Lorg/apache/xmlbeans/impl/piccolo/io/CharsetDecoder;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/piccolo/xml/UTF8XMLDecoder;->newXMLDecoder()Lorg/apache/xmlbeans/impl/piccolo/xml/XMLDecoder;

    move-result-object v0

    return-object v0
.end method

.method public newXMLDecoder()Lorg/apache/xmlbeans/impl/piccolo/xml/XMLDecoder;
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/impl/piccolo/xml/UTF8XMLDecoder;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/piccolo/xml/UTF8XMLDecoder;-><init>()V

    return-object v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/UTF8XMLDecoder;->sawCR:Z

    return-void
.end method
