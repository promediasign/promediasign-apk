.class public Lorg/h2/jdbc/JdbcBatchUpdateException;
.super Ljava/sql/BatchUpdateException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/sql/SQLException;[I)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v2

    invoke-direct {p0, v0, v1, v2, p2}, Ljava/sql/BatchUpdateException;-><init>(Ljava/lang/String;Ljava/lang/String;I[I)V

    invoke-virtual {p0, p1}, Ljava/sql/SQLException;->setNextException(Ljava/sql/SQLException;)V

    return-void
.end method


# virtual methods
.method public printStackTrace()V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcBatchUpdateException;->printStackTrace(Ljava/io/PrintStream;)V

    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 1

    .line 2
    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Ljava/sql/BatchUpdateException;->printStackTrace(Ljava/io/PrintStream;)V

    invoke-virtual {p0}, Ljava/sql/SQLException;->getNextException()Ljava/sql/SQLException;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/sql/SQLException;->getNextException()Ljava/sql/SQLException;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_0
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 1

    .line 3
    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Ljava/sql/BatchUpdateException;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {p0}, Ljava/sql/SQLException;->getNextException()Ljava/sql/SQLException;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/sql/SQLException;->getNextException()Ljava/sql/SQLException;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method
