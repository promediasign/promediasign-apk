.class public Lorg/h2/index/FunctionCursor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/index/Cursor;


# instance fields
.field private final result:Lorg/h2/result/ResultInterface;

.field private row:Lorg/h2/result/Row;

.field private session:Lorg/h2/engine/Session;

.field private values:[Lorg/h2/value/Value;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;Lorg/h2/result/ResultInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/h2/index/FunctionCursor;->session:Lorg/h2/engine/Session;

    iput-object p2, p0, Lorg/h2/index/FunctionCursor;->result:Lorg/h2/result/ResultInterface;

    return-void
.end method


# virtual methods
.method public get()Lorg/h2/result/Row;
    .locals 3

    iget-object v0, p0, Lorg/h2/index/FunctionCursor;->values:[Lorg/h2/value/Value;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/h2/index/FunctionCursor;->row:Lorg/h2/result/Row;

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/h2/index/FunctionCursor;->session:Lorg/h2/engine/Session;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/h2/engine/Session;->createRow([Lorg/h2/value/Value;I)Lorg/h2/result/Row;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/index/FunctionCursor;->row:Lorg/h2/result/Row;

    :cond_1
    iget-object v0, p0, Lorg/h2/index/FunctionCursor;->row:Lorg/h2/result/Row;

    return-object v0
.end method

.method public getSearchRow()Lorg/h2/result/SearchRow;
    .locals 1

    invoke-virtual {p0}, Lorg/h2/index/FunctionCursor;->get()Lorg/h2/result/Row;

    move-result-object v0

    return-object v0
.end method

.method public next()Z
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/index/FunctionCursor;->row:Lorg/h2/result/Row;

    iget-object v1, p0, Lorg/h2/index/FunctionCursor;->result:Lorg/h2/result/ResultInterface;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->next()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/h2/index/FunctionCursor;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->currentRow()[Lorg/h2/value/Value;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/index/FunctionCursor;->values:[Lorg/h2/value/Value;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lorg/h2/index/FunctionCursor;->values:[Lorg/h2/value/Value;

    :goto_0
    iget-object v0, p0, Lorg/h2/index/FunctionCursor;->values:[Lorg/h2/value/Value;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public previous()Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
