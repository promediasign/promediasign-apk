.class final Lorg/h2/command/dml/ScriptCommand$4;
.super Ljava/io/Reader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/h2/command/dml/ScriptCommand;->combineClob(Ljava/sql/Connection;I)Ljava/io/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field private closed:Z

.field private current:Ljava/io/Reader;

.field final synthetic val$rs:Ljava/sql/ResultSet;


# direct methods
.method public constructor <init>(Ljava/sql/ResultSet;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/dml/ScriptCommand$4;->val$rs:Ljava/sql/ResultSet;

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-boolean v0, p0, Lorg/h2/command/dml/ScriptCommand$4;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/command/dml/ScriptCommand$4;->closed:Z

    :try_start_0
    iget-object v0, p0, Lorg/h2/command/dml/ScriptCommand$4;->val$rs:Ljava/sql/ResultSet;

    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/h2/message/DbException;->convertToIOException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public read()I
    .locals 2

    .line 1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/h2/command/dml/ScriptCommand$4;->current:Ljava/io/Reader;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/h2/command/dml/ScriptCommand$4;->closed:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/h2/command/dml/ScriptCommand$4;->val$rs:Ljava/sql/ResultSet;

    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/h2/command/dml/ScriptCommand$4;->close()V

    return v1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/h2/command/dml/ScriptCommand$4;->val$rs:Ljava/sql/ResultSet;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/sql/ResultSet;->getCharacterStream(I)Ljava/io/Reader;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/dml/ScriptCommand$4;->current:Ljava/io/Reader;

    new-instance v0, Ljava/io/BufferedReader;

    iget-object v1, p0, Lorg/h2/command/dml/ScriptCommand$4;->current:Ljava/io/Reader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/h2/command/dml/ScriptCommand$4;->current:Ljava/io/Reader;

    :cond_2
    iget-object v0, p0, Lorg/h2/command/dml/ScriptCommand$4;->current:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    if-ltz v0, :cond_3

    return v0

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/command/dml/ScriptCommand$4;->current:Ljava/io/Reader;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    invoke-static {v0}, Lorg/h2/message/DbException;->convertToIOException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public read([CII)I
    .locals 4

    .line 2
    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lorg/h2/command/dml/ScriptCommand$4;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    int-to-char v0, v0

    aput-char v0, p1, p2

    const/4 v0, 0x1

    :goto_0
    if-ge v0, p3, :cond_3

    invoke-virtual {p0}, Lorg/h2/command/dml/ScriptCommand$4;->read()I

    move-result v2

    if-ne v2, v1, :cond_2

    goto :goto_1

    :cond_2
    add-int v3, p2, v0

    int-to-char v2, v2

    aput-char v2, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method
