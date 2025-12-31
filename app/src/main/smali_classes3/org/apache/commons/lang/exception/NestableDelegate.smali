.class public Lorg/apache/commons/lang/exception/NestableDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L

.field public static topDown:Z = true

.field public static trimStackFrames:Z = true


# instance fields
.field private nestable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lorg/apache/commons/lang/exception/Nestable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/exception/NestableDelegate;->nestable:Ljava/lang/Throwable;

    instance-of v0, p1, Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Throwable;

    iput-object p1, p0, Lorg/apache/commons/lang/exception/NestableDelegate;->nestable:Ljava/lang/Throwable;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The Nestable implementation passed to the NestableDelegate(Nestable) constructor must extend java.lang.Throwable"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getStackFrames(Ljava/lang/Throwable;)[Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    instance-of v2, p1, Lorg/apache/commons/lang/exception/Nestable;

    if-eqz v2, :cond_0

    check-cast p1, Lorg/apache/commons/lang/exception/Nestable;

    invoke-interface {p1, v1}, Lorg/apache/commons/lang/exception/Nestable;->printPartialStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getStackFrames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public printStackTrace()V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/exception/NestableDelegate;->printStackTrace(Ljava/io/PrintStream;)V

    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 2

    .line 2
    monitor-enter p1

    :try_start_0
    new-instance v0, Ljava/io/PrintWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/exception/NestableDelegate;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 6

    .line 3
    iget-object v0, p0, Lorg/apache/commons/lang/exception/NestableDelegate;->nestable:Ljava/lang/Throwable;

    invoke-static {}, Lorg/apache/commons/lang/exception/ExceptionUtils;->isThrowableNested()Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, v0, Lorg/apache/commons/lang/exception/Nestable;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/commons/lang/exception/Nestable;

    invoke-interface {v0, p1}, Lorg/apache/commons/lang/exception/Nestable;->printPartialStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/exception/NestableDelegate;->getStackFrames(Ljava/lang/Throwable;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, "Caused by: "

    sget-boolean v2, Lorg/apache/commons/lang/exception/NestableDelegate;->topDown:Z

    if-nez v2, :cond_3

    const-string v0, "Rethrown as: "

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_3
    sget-boolean v2, Lorg/apache/commons/lang/exception/NestableDelegate;->trimStackFrames:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/exception/NestableDelegate;->trimStackFrames(Ljava/util/List;)V

    :cond_4
    monitor-enter p1

    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_6

    aget-object v5, v2, v4

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    monitor-exit p1

    return-void

    :goto_4
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public trimStackFrames(Ljava/util/List;)V
    .locals 5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3, v4}, Lorg/apache/commons/lang/exception/ExceptionUtils;->removeCommonFrames(Ljava/util/List;Ljava/util/List;)V

    array-length v1, v1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v1, v2

    if-lez v1, :cond_0

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v4, "\t... "

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " more"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method
