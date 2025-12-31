.class final Lcom/fasterxml/aalto/in/ReaderConfig$EncodingContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/aalto/in/ReaderConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EncodingContext"
.end annotation


# instance fields
.field mAsciiTable:Lcom/fasterxml/aalto/in/ByteBasedPNameTable;

.field mGeneralTable:Lcom/fasterxml/aalto/in/CharBasedPNameTable;

.field mLatin1Table:Lcom/fasterxml/aalto/in/ByteBasedPNameTable;

.field mUtf8Table:Lcom/fasterxml/aalto/in/ByteBasedPNameTable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getAsciiSymbols()Lcom/fasterxml/aalto/in/ByteBasedPNameTable;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig$EncodingContext;->mAsciiTable:Lcom/fasterxml/aalto/in/ByteBasedPNameTable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/fasterxml/aalto/in/ByteBasedPNameTable;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/fasterxml/aalto/in/ByteBasedPNameTable;-><init>(I)V

    iput-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig$EncodingContext;->mAsciiTable:Lcom/fasterxml/aalto/in/ByteBasedPNameTable;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v0, Lcom/fasterxml/aalto/in/ByteBasedPNameTable;

    iget-object v1, p0, Lcom/fasterxml/aalto/in/ReaderConfig$EncodingContext;->mAsciiTable:Lcom/fasterxml/aalto/in/ByteBasedPNameTable;

    invoke-direct {v0, v1}, Lcom/fasterxml/aalto/in/ByteBasedPNameTable;-><init>(Lcom/fasterxml/aalto/in/ByteBasedPNameTable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLatin1Symbols()Lcom/fasterxml/aalto/in/ByteBasedPNameTable;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig$EncodingContext;->mLatin1Table:Lcom/fasterxml/aalto/in/ByteBasedPNameTable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/fasterxml/aalto/in/ByteBasedPNameTable;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/fasterxml/aalto/in/ByteBasedPNameTable;-><init>(I)V

    iput-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig$EncodingContext;->mLatin1Table:Lcom/fasterxml/aalto/in/ByteBasedPNameTable;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v0, Lcom/fasterxml/aalto/in/ByteBasedPNameTable;

    iget-object v1, p0, Lcom/fasterxml/aalto/in/ReaderConfig$EncodingContext;->mLatin1Table:Lcom/fasterxml/aalto/in/ByteBasedPNameTable;

    invoke-direct {v0, v1}, Lcom/fasterxml/aalto/in/ByteBasedPNameTable;-><init>(Lcom/fasterxml/aalto/in/ByteBasedPNameTable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSymbols()Lcom/fasterxml/aalto/in/CharBasedPNameTable;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig$EncodingContext;->mGeneralTable:Lcom/fasterxml/aalto/in/CharBasedPNameTable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/fasterxml/aalto/in/CharBasedPNameTable;-><init>(I)V

    iput-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig$EncodingContext;->mGeneralTable:Lcom/fasterxml/aalto/in/CharBasedPNameTable;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v0, Lcom/fasterxml/aalto/in/CharBasedPNameTable;

    iget-object v1, p0, Lcom/fasterxml/aalto/in/ReaderConfig$EncodingContext;->mGeneralTable:Lcom/fasterxml/aalto/in/CharBasedPNameTable;

    invoke-direct {v0, v1}, Lcom/fasterxml/aalto/in/CharBasedPNameTable;-><init>(Lcom/fasterxml/aalto/in/CharBasedPNameTable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUtf8Symbols()Lcom/fasterxml/aalto/in/ByteBasedPNameTable;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig$EncodingContext;->mUtf8Table:Lcom/fasterxml/aalto/in/ByteBasedPNameTable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/fasterxml/aalto/in/ByteBasedPNameTable;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/fasterxml/aalto/in/ByteBasedPNameTable;-><init>(I)V

    iput-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig$EncodingContext;->mUtf8Table:Lcom/fasterxml/aalto/in/ByteBasedPNameTable;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v0, Lcom/fasterxml/aalto/in/ByteBasedPNameTable;

    iget-object v1, p0, Lcom/fasterxml/aalto/in/ReaderConfig$EncodingContext;->mUtf8Table:Lcom/fasterxml/aalto/in/ByteBasedPNameTable;

    invoke-direct {v0, v1}, Lcom/fasterxml/aalto/in/ByteBasedPNameTable;-><init>(Lcom/fasterxml/aalto/in/ByteBasedPNameTable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateAsciiSymbols(Lcom/fasterxml/aalto/in/ByteBasedPNameTable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig$EncodingContext;->mAsciiTable:Lcom/fasterxml/aalto/in/ByteBasedPNameTable;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/in/ByteBasedPNameTable;->mergeFromChild(Lcom/fasterxml/aalto/in/ByteBasedPNameTable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateLatin1Symbols(Lcom/fasterxml/aalto/in/ByteBasedPNameTable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig$EncodingContext;->mLatin1Table:Lcom/fasterxml/aalto/in/ByteBasedPNameTable;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/in/ByteBasedPNameTable;->mergeFromChild(Lcom/fasterxml/aalto/in/ByteBasedPNameTable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateSymbols(Lcom/fasterxml/aalto/in/CharBasedPNameTable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig$EncodingContext;->mGeneralTable:Lcom/fasterxml/aalto/in/CharBasedPNameTable;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->mergeFromChild(Lcom/fasterxml/aalto/in/CharBasedPNameTable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateUtf8Symbols(Lcom/fasterxml/aalto/in/ByteBasedPNameTable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderConfig$EncodingContext;->mUtf8Table:Lcom/fasterxml/aalto/in/ByteBasedPNameTable;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/in/ByteBasedPNameTable;->mergeFromChild(Lcom/fasterxml/aalto/in/ByteBasedPNameTable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
