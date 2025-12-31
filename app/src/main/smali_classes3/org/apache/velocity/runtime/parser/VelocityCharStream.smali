.class public final Lorg/apache/velocity/runtime/parser/VelocityCharStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/velocity/runtime/parser/CharStream;


# static fields
.field public static final staticFlag:Z


# instance fields
.field available:I

.field private bufcolumn:[I

.field private buffer:[C

.field private bufline:[I

.field public bufpos:I

.field bufsize:I

.field private column:I

.field private inBuf:I

.field private inputStream:Ljava/io/Reader;

.field private line:I

.field private maxNextCharInd:I

.field private nextBufExpand:I

.field private prevCharIsCR:Z

.field private prevCharIsLF:Z

.field tokenBegin:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;II)V
    .locals 1

    .line 1
    const/16 v0, 0x1000

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/velocity/runtime/parser/VelocityCharStream;-><init>(Ljava/io/InputStream;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;III)V
    .locals 1

    .line 2
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/apache/velocity/runtime/parser/VelocityCharStream;-><init>(Ljava/io/Reader;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;II)V
    .locals 1

    .line 3
    const/16 v0, 0x1000

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/velocity/runtime/parser/VelocityCharStream;-><init>(Ljava/io/Reader;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;III)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufpos:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->prevCharIsCR:Z

    iput-boolean v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->prevCharIsLF:Z

    iput v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->maxNextCharInd:I

    iput v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->inBuf:I

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->inputStream:Ljava/io/Reader;

    iput p2, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->line:I

    add-int/lit8 p3, p3, -0x1

    iput p3, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->column:I

    iput p4, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->nextBufExpand:I

    iput p4, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufsize:I

    iput p4, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->available:I

    new-array p1, p4, [C

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->buffer:[C

    new-array p1, p4, [I

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufline:[I

    new-array p1, p4, [I

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufcolumn:[I

    return-void
.end method

.method private ExpandBuff(Z)V
    .locals 6

    iget v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufsize:I

    iget v1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->nextBufExpand:I

    add-int v2, v0, v1

    new-array v2, v2, [C

    add-int v3, v0, v1

    new-array v3, v3, [I

    add-int/2addr v1, v0

    new-array v1, v1, [I

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->buffer:[C

    iget v5, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->tokenBegin:I

    sub-int/2addr v0, v5

    invoke-static {p1, v5, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->buffer:[C

    iget v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufsize:I

    iget v5, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->tokenBegin:I

    sub-int/2addr v0, v5

    iget v5, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufpos:I

    invoke-static {p1, v4, v2, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->buffer:[C

    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufline:[I

    iget v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->tokenBegin:I

    iget v2, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufsize:I

    sub-int/2addr v2, v0

    invoke-static {p1, v0, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufline:[I

    iget v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufsize:I

    iget v2, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->tokenBegin:I

    sub-int/2addr v0, v2

    iget v2, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufpos:I

    invoke-static {p1, v4, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufline:[I

    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufcolumn:[I

    iget v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->tokenBegin:I

    iget v2, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufsize:I

    sub-int/2addr v2, v0

    invoke-static {p1, v0, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufcolumn:[I

    iget v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufsize:I

    iget v2, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->tokenBegin:I

    sub-int/2addr v0, v2

    iget v2, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufpos:I

    invoke-static {p1, v4, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufcolumn:[I

    iget p1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufpos:I

    iget v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufsize:I

    iget v1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->tokenBegin:I

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufpos:I

    iput v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->maxNextCharInd:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->buffer:[C

    iget v5, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->tokenBegin:I

    sub-int/2addr v0, v5

    invoke-static {p1, v5, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->buffer:[C

    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufline:[I

    iget v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->tokenBegin:I

    iget v2, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufsize:I

    sub-int/2addr v2, v0

    invoke-static {p1, v0, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufline:[I

    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufcolumn:[I

    iget v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->tokenBegin:I

    iget v2, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufsize:I

    sub-int/2addr v2, v0

    invoke-static {p1, v0, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufcolumn:[I

    iget p1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufpos:I

    iget v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->tokenBegin:I

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufpos:I

    iput p1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->maxNextCharInd:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget p1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufsize:I

    iget v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->nextBufExpand:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufsize:I

    iput p1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->nextBufExpand:I

    iput p1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->available:I

    iput v4, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->tokenBegin:I

    return-void

    :goto_1
    new-instance v0, Ljava/lang/Error;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private FillBuff()V
    .locals 7

    iget v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->maxNextCharInd:I

    iget v1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->available:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_5

    iget v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufsize:I

    if-ne v1, v0, :cond_2

    iget v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->tokenBegin:I

    iget v1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->nextBufExpand:I

    if-le v0, v1, :cond_0

    iput v3, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->maxNextCharInd:I

    iput v3, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufpos:I

    :goto_0
    iput v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->available:I

    goto :goto_1

    :cond_0
    if-gez v0, :cond_1

    iput v3, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->maxNextCharInd:I

    iput v3, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufpos:I

    goto :goto_1

    :cond_1
    invoke-direct {p0, v3}, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->ExpandBuff(Z)V

    goto :goto_1

    :cond_2
    iget v4, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->tokenBegin:I

    if-le v1, v4, :cond_3

    goto :goto_0

    :cond_3
    sub-int v0, v4, v1

    iget v1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->nextBufExpand:I

    if-ge v0, v1, :cond_4

    invoke-direct {p0, v2}, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->ExpandBuff(Z)V

    goto :goto_1

    :cond_4
    iput v4, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->available:I

    :cond_5
    :goto_1
    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->inputStream:Ljava/io/Reader;

    iget-object v4, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->buffer:[C

    iget v5, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->maxNextCharInd:I

    iget v6, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->available:I

    sub-int/2addr v6, v5

    invoke-virtual {v1, v4, v5, v6}, Ljava/io/Reader;->read([CII)I

    move-result v1

    if-eq v1, v0, :cond_6

    iget v4, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->maxNextCharInd:I

    add-int/2addr v4, v1

    iput v4, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->maxNextCharInd:I

    return-void

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->inputStream:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget v4, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufpos:I

    sub-int/2addr v4, v2

    iput v4, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufpos:I

    invoke-virtual {p0, v3}, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->backup(I)V

    iget v2, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->tokenBegin:I

    if-ne v2, v0, :cond_7

    iget v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufpos:I

    iput v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->tokenBegin:I

    :cond_7
    throw v1
.end method

.method private UpdateLineColumn(C)V
    .locals 4

    iget v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->column:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->column:I

    iget-boolean v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->prevCharIsLF:Z

    const/16 v2, 0xa

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->prevCharIsLF:Z

    :cond_0
    iget v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->line:I

    iput v1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->column:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->line:I

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->prevCharIsCR:Z

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->prevCharIsCR:Z

    if-ne p1, v2, :cond_0

    iput-boolean v1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->prevCharIsLF:Z

    :cond_2
    :goto_0
    const/16 v0, 0x9

    if-eq p1, v0, :cond_5

    if-eq p1, v2, :cond_4

    const/16 v0, 0xd

    if-eq p1, v0, :cond_3

    goto :goto_1

    :cond_3
    iput-boolean v1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->prevCharIsCR:Z

    goto :goto_1

    :cond_4
    iput-boolean v1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->prevCharIsLF:Z

    goto :goto_1

    :cond_5
    iget p1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->column:I

    sub-int/2addr p1, v1

    and-int/lit8 v0, p1, 0x7

    rsub-int/lit8 v0, v0, 0x8

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->column:I

    :goto_1
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufline:[I

    iget v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufpos:I

    iget v1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->line:I

    aput v1, p1, v0

    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufcolumn:[I

    iget v1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->column:I

    aput v1, p1, v0

    return-void
.end method


# virtual methods
.method public final BeginToken()C
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->tokenBegin:I

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->readChar()C

    move-result v0

    iget v1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufpos:I

    iput v1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->tokenBegin:I

    return v0
.end method

.method public Done()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->buffer:[C

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufline:[I

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufcolumn:[I

    return-void
.end method

.method public final GetImage()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufpos:I

    iget v1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->tokenBegin:I

    if-lt v0, v1, :cond_0

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->buffer:[C

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v2, v3, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->buffer:[C

    iget v3, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufsize:I

    sub-int/2addr v3, v1

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([CII)V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->buffer:[C

    iget v3, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufpos:I

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final GetSuffix(I)[C
    .locals 6

    new-array v0, p1, [C

    iget v1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufpos:I

    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-lt v2, p1, :cond_0

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->buffer:[C

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v2, v1, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->buffer:[C

    iget v4, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufsize:I

    sub-int v5, p1, v1

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v4, v5

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v2, v4, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->buffer:[C

    iget v2, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufpos:I

    sub-int/2addr p1, v2

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v0
.end method

.method public ReInit(Ljava/io/InputStream;II)V
    .locals 1

    .line 1
    const/16 v0, 0x1000

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->ReInit(Ljava/io/InputStream;III)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;III)V
    .locals 1

    .line 2
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->ReInit(Ljava/io/Reader;III)V

    return-void
.end method

.method public ReInit(Ljava/io/Reader;II)V
    .locals 1

    .line 3
    const/16 v0, 0x1000

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->ReInit(Ljava/io/Reader;III)V

    return-void
.end method

.method public ReInit(Ljava/io/Reader;III)V
    .locals 0

    .line 4
    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->inputStream:Ljava/io/Reader;

    iput p2, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->line:I

    add-int/lit8 p3, p3, -0x1

    iput p3, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->column:I

    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->buffer:[C

    if-eqz p1, :cond_0

    array-length p1, p1

    if-eq p4, p1, :cond_1

    :cond_0
    iput p4, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->nextBufExpand:I

    iput p4, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufsize:I

    iput p4, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->available:I

    new-array p1, p4, [C

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->buffer:[C

    new-array p1, p4, [I

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufline:[I

    new-array p1, p4, [I

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufcolumn:[I

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->prevCharIsCR:Z

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->prevCharIsLF:Z

    iput p1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->maxNextCharInd:I

    iput p1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->inBuf:I

    iput p1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->tokenBegin:I

    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufpos:I

    return-void
.end method

.method public adjustBeginLineColumn(II)V
    .locals 9

    iget v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->tokenBegin:I

    iget v1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufpos:I

    if-lt v1, v0, :cond_0

    sub-int/2addr v1, v0

    iget v2, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->inBuf:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v2, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufsize:I

    sub-int/2addr v2, v0

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    iget v1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->inBuf:I

    add-int/2addr v1, v2

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufline:[I

    iget v5, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufsize:I

    rem-int v6, v0, v5

    aget v7, v3, v6

    add-int/lit8 v0, v0, 0x1

    rem-int v5, v0, v5

    aget v8, v3, v5

    if-ne v7, v8, :cond_1

    aput p1, v3, v6

    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufcolumn:[I

    aget v5, v3, v5

    add-int/2addr v5, v4

    aget v7, v3, v6

    sub-int/2addr v5, v7

    add-int/2addr v4, p2

    aput v4, v3, v6

    add-int/lit8 v2, v2, 0x1

    move v4, v5

    move v3, v6

    goto :goto_1

    :cond_1
    move v3, v6

    :cond_2
    if-ge v2, v1, :cond_4

    iget-object v5, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufline:[I

    add-int/lit8 v6, p1, 0x1

    aput p1, v5, v3

    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufcolumn:[I

    add-int/2addr p2, v4

    aput p2, p1, v3

    :goto_2
    add-int/lit8 p1, v2, 0x1

    if-ge v2, v1, :cond_4

    iget-object p2, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufline:[I

    iget v2, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufsize:I

    rem-int v3, v0, v2

    aget v4, p2, v3

    add-int/lit8 v0, v0, 0x1

    rem-int v2, v0, v2

    aget v2, p2, v2

    if-eq v4, v2, :cond_3

    add-int/lit8 v2, v6, 0x1

    aput v6, p2, v3

    move v6, v2

    :goto_3
    move v2, p1

    goto :goto_2

    :cond_3
    aput v6, p2, v3

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufline:[I

    aget p1, p1, v3

    iput p1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->line:I

    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufcolumn:[I

    aget p1, p1, v3

    iput p1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->column:I

    return-void
.end method

.method public final backup(I)V
    .locals 1

    iget v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->inBuf:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->inBuf:I

    iget v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufpos:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufpos:I

    if-gez v0, :cond_0

    iget p1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufsize:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufpos:I

    :cond_0
    return-void
.end method

.method public final getBeginColumn()I
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufcolumn:[I

    iget v1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->tokenBegin:I

    aget v0, v0, v1

    return v0
.end method

.method public final getBeginLine()I
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufline:[I

    iget v1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->tokenBegin:I

    aget v0, v0, v1

    return v0
.end method

.method public final getEndColumn()I
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufcolumn:[I

    iget v1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public final getEndLine()I
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufline:[I

    iget v1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public final readChar()C
    .locals 3

    iget v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->inBuf:I

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->inBuf:I

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->buffer:[C

    iget v1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufpos:I

    iget v2, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufsize:I

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufpos:I

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_1
    aget-char v0, v0, v1

    return v0

    :cond_1
    iget v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufpos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufpos:I

    iget v1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->maxNextCharInd:I

    if-lt v0, v1, :cond_2

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->FillBuff()V

    :cond_2
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->buffer:[C

    iget v1, p0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->bufpos:I

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->UpdateLineColumn(C)V

    return v0
.end method
