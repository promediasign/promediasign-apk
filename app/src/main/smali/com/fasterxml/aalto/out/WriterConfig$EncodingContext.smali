.class final Lcom/fasterxml/aalto/out/WriterConfig$EncodingContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/aalto/out/WriterConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EncodingContext"
.end annotation


# instance fields
.field mAsciiTable:Lcom/fasterxml/aalto/out/WNameTable;

.field mCharTable:Lcom/fasterxml/aalto/out/WNameTable;

.field mLatin1Table:Lcom/fasterxml/aalto/out/WNameTable;

.field mUtf8Table:Lcom/fasterxml/aalto/out/WNameTable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getAsciiSymbols(Lcom/fasterxml/aalto/out/WNameFactory;)Lcom/fasterxml/aalto/out/WNameTable;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/aalto/out/WriterConfig$EncodingContext;->mAsciiTable:Lcom/fasterxml/aalto/out/WNameTable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/fasterxml/aalto/out/WNameTable;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/fasterxml/aalto/out/WNameTable;-><init>(I)V

    iput-object v0, p0, Lcom/fasterxml/aalto/out/WriterConfig$EncodingContext;->mAsciiTable:Lcom/fasterxml/aalto/out/WNameTable;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/aalto/out/WriterConfig$EncodingContext;->mAsciiTable:Lcom/fasterxml/aalto/out/WNameTable;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/out/WNameTable;->createChild(Lcom/fasterxml/aalto/out/WNameFactory;)Lcom/fasterxml/aalto/out/WNameTable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCharSymbols(Lcom/fasterxml/aalto/out/WNameFactory;)Lcom/fasterxml/aalto/out/WNameTable;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/aalto/out/WriterConfig$EncodingContext;->mCharTable:Lcom/fasterxml/aalto/out/WNameTable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/fasterxml/aalto/out/WNameTable;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/fasterxml/aalto/out/WNameTable;-><init>(I)V

    iput-object v0, p0, Lcom/fasterxml/aalto/out/WriterConfig$EncodingContext;->mCharTable:Lcom/fasterxml/aalto/out/WNameTable;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/aalto/out/WriterConfig$EncodingContext;->mCharTable:Lcom/fasterxml/aalto/out/WNameTable;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/out/WNameTable;->createChild(Lcom/fasterxml/aalto/out/WNameFactory;)Lcom/fasterxml/aalto/out/WNameTable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getLatin1Symbols(Lcom/fasterxml/aalto/out/WNameFactory;)Lcom/fasterxml/aalto/out/WNameTable;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/aalto/out/WriterConfig$EncodingContext;->mLatin1Table:Lcom/fasterxml/aalto/out/WNameTable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/fasterxml/aalto/out/WNameTable;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/fasterxml/aalto/out/WNameTable;-><init>(I)V

    iput-object v0, p0, Lcom/fasterxml/aalto/out/WriterConfig$EncodingContext;->mLatin1Table:Lcom/fasterxml/aalto/out/WNameTable;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/aalto/out/WriterConfig$EncodingContext;->mLatin1Table:Lcom/fasterxml/aalto/out/WNameTable;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/out/WNameTable;->createChild(Lcom/fasterxml/aalto/out/WNameFactory;)Lcom/fasterxml/aalto/out/WNameTable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getUtf8Symbols(Lcom/fasterxml/aalto/out/WNameFactory;)Lcom/fasterxml/aalto/out/WNameTable;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/aalto/out/WriterConfig$EncodingContext;->mUtf8Table:Lcom/fasterxml/aalto/out/WNameTable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/fasterxml/aalto/out/WNameTable;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/fasterxml/aalto/out/WNameTable;-><init>(I)V

    iput-object v0, p0, Lcom/fasterxml/aalto/out/WriterConfig$EncodingContext;->mUtf8Table:Lcom/fasterxml/aalto/out/WNameTable;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/aalto/out/WriterConfig$EncodingContext;->mUtf8Table:Lcom/fasterxml/aalto/out/WNameTable;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/out/WNameTable;->createChild(Lcom/fasterxml/aalto/out/WNameFactory;)Lcom/fasterxml/aalto/out/WNameTable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_1
    monitor-exit p0

    throw p1
.end method
