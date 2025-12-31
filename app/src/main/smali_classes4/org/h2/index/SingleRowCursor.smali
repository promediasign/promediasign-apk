.class public Lorg/h2/index/SingleRowCursor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/index/Cursor;


# instance fields
.field private end:Z

.field private row:Lorg/h2/result/Row;


# direct methods
.method public constructor <init>(Lorg/h2/result/Row;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/h2/index/SingleRowCursor;->row:Lorg/h2/result/Row;

    return-void
.end method


# virtual methods
.method public get()Lorg/h2/result/Row;
    .locals 1

    iget-object v0, p0, Lorg/h2/index/SingleRowCursor;->row:Lorg/h2/result/Row;

    return-object v0
.end method

.method public getSearchRow()Lorg/h2/result/SearchRow;
    .locals 1

    iget-object v0, p0, Lorg/h2/index/SingleRowCursor;->row:Lorg/h2/result/Row;

    return-object v0
.end method

.method public next()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/index/SingleRowCursor;->row:Lorg/h2/result/Row;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/h2/index/SingleRowCursor;->end:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/index/SingleRowCursor;->end:Z

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/index/SingleRowCursor;->row:Lorg/h2/result/Row;

    const/4 v0, 0x0

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
