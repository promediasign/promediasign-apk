.class public final Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;
.super Lorg/apache/xmlbeans/impl/piccolo/xml/XMLInputReader;
.source "SourceFile"


# instance fields
.field private cbuf:[C

.field private cbufEnd:I

.field private cbufPos:I

.field private eofReached:Z

.field private in:Ljava/io/Reader;

.field private oneCharBuf:[C

.field private rewindDeclaration:Z

.field private sawCR:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLInputReader;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->cbuf:[C

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->cbufPos:I

    iput v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->cbufEnd:I

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->eofReached:Z

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->sawCR:Z

    const/4 v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->oneCharBuf:[C

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;-><init>(Ljava/io/Reader;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Z)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLInputReader;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->cbuf:[C

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->cbufPos:I

    iput v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->cbufEnd:I

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->eofReached:Z

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->sawCR:Z

    const/4 v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->oneCharBuf:[C

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->reset(Ljava/io/Reader;Z)V

    return-void
.end method

.method private fillCharBuffer()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->cbufPos:I

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->in:Ljava/io/Reader;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->cbuf:[C

    const/16 v3, 0x2000

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->cbufEnd:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->eofReached:Z

    :cond_0
    return-void
.end method

.method private processXMLDecl()V
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->cbuf:[C

    const/4 v1, 0x0

    iget v2, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->cbufEnd:I

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLInputReader;->parseXMLDeclaration([CII)I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->rewindDeclaration:Z

    if-nez v1, :cond_0

    iget v1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->cbufPos:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->cbufPos:I

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->eofReached:Z

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->cbufEnd:I

    iput v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->cbufPos:I

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->in:Ljava/io/Reader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    :cond_0
    return-void
.end method

.method public mark(I)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "mark() not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->oneCharBuf:[C

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->read([CII)I

    move-result v0

    if-gtz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->oneCharBuf:[C

    aget-char v0, v0, v2

    return v0
.end method

.method public read([C)I
    .locals 2

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->read([CII)I

    move-result p1

    return p1
.end method

.method public read([CII)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_b

    iget v2, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->cbufPos:I

    iget v3, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->cbufEnd:I

    if-ge v2, v3, :cond_8

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->cbuf:[C

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->cbufPos:I

    aget-char v2, v3, v2

    const/16 v3, 0x20

    if-lt v2, v3, :cond_3

    const v3, 0xd7ff

    if-le v2, v3, :cond_2

    const v3, 0xe000

    if-lt v2, v3, :cond_0

    const v3, 0xfffd

    if-le v2, v3, :cond_2

    :cond_0
    const/high16 v3, 0x10000

    if-lt v2, v3, :cond_1

    const v3, 0x10ffff

    if-gt v2, v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/apache/xmlbeans/impl/piccolo/io/IllegalCharException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string p3, "Illegal XML Character: 0x"

    invoke-direct {p2, p3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {v2, p2}, Lorg/apache/ftpserver/main/a;->f(ILjava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-direct {p1, p2}, Lorg/apache/xmlbeans/impl/piccolo/io/IllegalCharException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->sawCR:Z

    add-int/lit8 v3, v1, 0x1

    add-int/2addr v1, p2

    aput-char v2, p1, v1

    move v1, v3

    goto :goto_0

    :cond_3
    const/16 v3, 0x9

    if-eq v2, v3, :cond_7

    const/16 v3, 0xa

    if-eq v2, v3, :cond_5

    const/16 v4, 0xd

    if-ne v2, v4, :cond_4

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->sawCR:Z

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v1, p2

    aput-char v3, p1, v1

    :goto_2
    move v1, v2

    goto :goto_0

    :cond_4
    new-instance p1, Lorg/apache/xmlbeans/impl/piccolo/io/IllegalCharException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string p3, "Illegal XML character: 0x"

    invoke-direct {p2, p3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-static {v2, p2}, Lorg/apache/ftpserver/main/a;->f(ILjava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-direct {p1, p2}, Lorg/apache/xmlbeans/impl/piccolo/io/IllegalCharException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    iget-boolean v2, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->sawCR:Z

    if-eqz v2, :cond_6

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->sawCR:Z

    goto :goto_0

    :cond_6
    add-int/lit8 v2, v1, 0x1

    add-int/2addr v1, p2

    aput-char v3, p1, v1

    goto :goto_2

    :cond_7
    add-int/lit8 v2, v1, 0x1

    add-int/2addr v1, p2

    aput-char v3, p1, v1

    goto :goto_2

    :cond_8
    iget-boolean v2, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->eofReached:Z

    if-eqz v2, :cond_9

    goto :goto_3

    :cond_9
    if-eqz v1, :cond_a

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->in:Ljava/io/Reader;

    invoke-virtual {v2}, Ljava/io/Reader;->ready()Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->fillCharBuffer()V

    goto/16 :goto_0

    :cond_b
    :goto_3
    if-nez v1, :cond_c

    iget-boolean p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->eofReached:Z

    if-eqz p1, :cond_c

    const/4 v1, -0x1

    :cond_c
    return v1
.end method

.method public ready()Z
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->cbufEnd:I

    iget v1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->cbufPos:I

    sub-int/2addr v0, v1

    if-gtz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public reset()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLInputReader;->resetInput()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->reset()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->cbufEnd:I

    iput v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->cbufPos:I

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->sawCR:Z

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->eofReached:Z

    return-void
.end method

.method public reset(Ljava/io/Reader;Z)V
    .locals 0

    .line 2
    invoke-super {p0}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLInputReader;->resetInput()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->in:Ljava/io/Reader;

    iput-boolean p2, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->rewindDeclaration:Z

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->cbufEnd:I

    iput p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->cbufPos:I

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->sawCR:Z

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->eofReached:Z

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->fillCharBuffer()V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->processXMLDecl()V

    return-void
.end method

.method public skip(J)J
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    int-to-long v2, v1

    .line 4
    cmp-long v4, v2, p1

    .line 5
    .line 6
    if-gez v4, :cond_9

    .line 7
    .line 8
    iget v2, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->cbufPos:I

    .line 9
    .line 10
    iget v3, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->cbufEnd:I

    .line 11
    .line 12
    if-ge v2, v3, :cond_7

    .line 13
    .line 14
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->cbuf:[C

    .line 15
    .line 16
    add-int/lit8 v4, v2, 0x1

    .line 17
    .line 18
    iput v4, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->cbufPos:I

    .line 19
    .line 20
    aget-char v2, v3, v2

    .line 21
    .line 22
    const/16 v3, 0x20

    .line 23
    .line 24
    if-lt v2, v3, :cond_4

    .line 25
    .line 26
    const v3, 0xd7ff

    .line 27
    .line 28
    .line 29
    if-le v2, v3, :cond_2

    .line 30
    .line 31
    const v3, 0xe000

    .line 32
    .line 33
    .line 34
    if-lt v2, v3, :cond_0

    .line 35
    .line 36
    const v3, 0xfffd

    .line 37
    .line 38
    .line 39
    if-le v2, v3, :cond_2

    .line 40
    .line 41
    :cond_0
    const/high16 v3, 0x10000

    .line 42
    .line 43
    if-lt v2, v3, :cond_1

    .line 44
    .line 45
    const v3, 0x10ffff

    .line 46
    .line 47
    .line 48
    if-gt v2, v3, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    new-instance p1, Lorg/apache/xmlbeans/impl/piccolo/io/IllegalCharException;

    .line 52
    .line 53
    new-instance p2, Ljava/lang/StringBuffer;

    .line 54
    .line 55
    const-string v0, "Illegal XML Character: 0x"

    .line 56
    .line 57
    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v2, p2}, Lorg/apache/ftpserver/main/a;->f(ILjava/lang/StringBuffer;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-direct {p1, p2}, Lorg/apache/xmlbeans/impl/piccolo/io/IllegalCharException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p1

    .line 68
    :cond_2
    :goto_1
    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->sawCR:Z

    .line 69
    .line 70
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_4
    const/16 v3, 0x9

    .line 74
    .line 75
    if-eq v2, v3, :cond_3

    .line 76
    .line 77
    const/16 v3, 0xa

    .line 78
    .line 79
    if-eq v2, v3, :cond_6

    .line 80
    .line 81
    const/16 v3, 0xd

    .line 82
    .line 83
    if-ne v2, v3, :cond_5

    .line 84
    .line 85
    const/4 v2, 0x1

    .line 86
    iput-boolean v2, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->sawCR:Z

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_5
    new-instance p1, Lorg/apache/xmlbeans/impl/piccolo/io/IllegalCharException;

    .line 90
    .line 91
    new-instance p2, Ljava/lang/StringBuffer;

    .line 92
    .line 93
    const-string v0, "Illegal XML character: 0x"

    .line 94
    .line 95
    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-static {v2, p2}, Lorg/apache/ftpserver/main/a;->f(ILjava/lang/StringBuffer;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-direct {p1, p2}, Lorg/apache/xmlbeans/impl/piccolo/io/IllegalCharException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p1

    .line 106
    :cond_6
    iget-boolean v2, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->sawCR:Z

    .line 107
    .line 108
    if-eqz v2, :cond_3

    .line 109
    .line 110
    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->sawCR:Z

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_7
    iget-boolean v2, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->eofReached:Z

    .line 114
    .line 115
    if-eqz v2, :cond_8

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_8
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->fillCharBuffer()V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_9
    :goto_3
    if-nez v1, :cond_a

    .line 123
    .line 124
    iget-boolean p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;->eofReached:Z

    .line 125
    .line 126
    if-eqz p1, :cond_a

    .line 127
    .line 128
    const/4 v1, -0x1

    .line 129
    :cond_a
    int-to-long p1, v1

    .line 130
    return-wide p1
.end method
