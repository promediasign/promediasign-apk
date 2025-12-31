.class public Lorg/h2/util/Profiler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LINE_SEPARATOR:Ljava/lang/String;

.field private static final MAX_ELEMENTS:I = 0x3e8

.field private static instrumentation:Ljava/lang/instrument/Instrumentation;


# instance fields
.field private final counts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public depth:I

.field private final ignoreLines:[Ljava/lang/String;

.field private final ignorePackages:[Ljava/lang/String;

.field private final ignoreThreads:[Ljava/lang/String;

.field public interval:I

.field private minCount:I

.field public paused:Z

.field private pid:I

.field private start:J

.field private volatile stop:Z

.field public sumClasses:Z

.field public sumMethods:Z

.field private final summary:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private thread:Ljava/lang/Thread;

.field private threadDumps:I

.field private time:J

.field private total:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/h2/util/Profiler;->LINE_SEPARATOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lorg/h2/util/Profiler;->interval:I

    const/16 v0, 0x30

    iput v0, p0, Lorg/h2/util/Profiler;->depth:I

    const-string v0, "java,sun,com.sun.,com.google.common.,com.mongodb.,org.bson.,"

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/util/Profiler;->ignoreLines:[Ljava/lang/String;

    const-string v0, "java,sun,com.sun.,com.google.common.,com.mongodb.,org.bson"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/util/Profiler;->ignorePackages:[Ljava/lang/String;

    const-string v0, "java.lang.Object.wait,java.lang.Thread.dumpThreads,java.lang.Thread.getThreads,java.lang.Thread.sleep,java.lang.UNIXProcess.waitForProcessExit,java.net.PlainDatagramSocketImpl.receive0,java.net.PlainSocketImpl.accept,java.net.PlainSocketImpl.socketAccept,java.net.SocketInputStream.socketRead,java.net.SocketOutputStream.socketWrite,org.eclipse.jetty.io.nio.SelectorManager$SelectSet.doSelect,sun.awt.windows.WToolkit.eventLoop,sun.misc.Unsafe.park,sun.nio.ch.EPollArrayWrapper.epollWait,sun.nio.ch.KQueueArrayWrapper.kevent0,sun.nio.ch.ServerSocketChannelImpl.accept,dalvik.system.VMStack.getThreadStackTrace,dalvik.system.NativeStart.run"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/util/Profiler;->ignoreThreads:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/h2/util/Profiler;->counts:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/h2/util/Profiler;->summary:Ljava/util/HashMap;

    const/4 v0, 0x1

    iput v0, p0, Lorg/h2/util/Profiler;->minCount:I

    return-void
.end method

.method private static appendTop(Ljava/lang/StringBuilder;Ljava/util/HashMap;IIZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;IIZ)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v7, v5, :cond_1

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v4, v6

    goto :goto_1

    :cond_2
    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    add-int/2addr v1, v3

    if-lt v1, p2, :cond_5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v5, v2, :cond_4

    :goto_2
    return-void

    :cond_4
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_5
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    mul-int/lit8 v6, v5, 0x64

    invoke-static {p3, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    div-int/2addr v6, v7

    if-eqz p4, :cond_6

    if-le v6, v3, :cond_0

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "%: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lorg/h2/util/Profiler;->LINE_SEPARATOR:Ljava/lang/String;

    :goto_3
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "%):"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lorg/h2/util/Profiler;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method private static copyInThread(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2

    new-instance v0, Lorg/h2/util/Profiler$1;

    const-string v1, "Profiler stream copy"

    invoke-direct {v0, v1, p0, p1}, Lorg/h2/util/Profiler$1;-><init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static varargs exec([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "UTF-8"

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/h2/util/Profiler;->copyInThread(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3, v1}, Lorg/h2/util/Profiler;->copyInThread(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    new-instance p0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {p0, v1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    new-instance p0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {p0, v1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getInstrumentation()Ljava/lang/instrument/Instrumentation;
    .locals 1

    sget-object v0, Lorg/h2/util/Profiler;->instrumentation:Ljava/lang/instrument/Instrumentation;

    return-object v0
.end method

.method private static getRunnableStackTraces()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v3

    sget-object v4, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/StackTraceElement;

    if-eqz v2, :cond_0

    array-length v3, v2

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private getTopTraces(I)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Profiler: top "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " stack trace(s) of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/h2/util/Profiler;->time:J

    const-wide/16 v3, 0x0

    const-string v5, " of "

    cmp-long v6, v1, v3

    if-lez v6, :cond_0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p0, Lorg/h2/util/Profiler;->time:J

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p0, Lorg/h2/util/Profiler;->threadDumps:I

    if-lez v1, :cond_1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/util/Profiler;->threadDumps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " thread dumps"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/h2/util/Profiler;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/h2/util/Profiler;->counts:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "(none)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lorg/h2/util/Profiler;->counts:Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget v3, p0, Lorg/h2/util/Profiler;->total:I

    const/4 v4, 0x0

    invoke-static {v0, v2, p1, v3, v4}, Lorg/h2/util/Profiler;->appendTop(Ljava/lang/StringBuilder;Ljava/util/HashMap;IIZ)V

    const-string v2, "summary:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lorg/h2/util/Profiler;->summary:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget v2, p0, Lorg/h2/util/Profiler;->total:I

    const/4 v3, 0x1

    invoke-static {v0, v1, p1, v2, v3}, Lorg/h2/util/Profiler;->appendTop(Ljava/lang/StringBuilder;Ljava/util/HashMap;IIZ)V

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static increment(Ljava/util/HashMap;Ljava/lang/String;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p1

    const/16 v0, 0x3e8

    if-le p1, v0, :cond_4

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v1, p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p1

    if-le p1, v0, :cond_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    return p2
.end method

.method public static varargs main([Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/h2/util/Profiler;

    invoke-direct {v0}, Lorg/h2/util/Profiler;-><init>()V

    invoke-direct {v0, p0}, Lorg/h2/util/Profiler;->run([Ljava/lang/String;)V

    return-void
.end method

.method public static premain(Ljava/lang/String;Ljava/lang/instrument/Instrumentation;)V
    .locals 0

    sput-object p1, Lorg/h2/util/Profiler;->instrumentation:Ljava/lang/instrument/Instrumentation;

    return-void
.end method

.method private processList(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/util/Profiler;->ignoreThreads:[Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/h2/util/Profiler;->startsWithAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    array-length v7, v0

    const/4 v8, 0x1

    if-ge v4, v7, :cond_9

    iget v7, p0, Lorg/h2/util/Profiler;->depth:I

    if-ge v5, v7, :cond_9

    aget-object v7, v0, v4

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    iget-object v9, p0, Lorg/h2/util/Profiler;->ignoreLines:[Ljava/lang/String;

    invoke-static {v7, v9}, Lorg/h2/util/Profiler;->startsWithAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v3, "at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lorg/h2/util/Profiler;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v6, :cond_7

    iget-object v3, p0, Lorg/h2/util/Profiler;->ignorePackages:[Ljava/lang/String;

    invoke-static {v7, v3}, Lorg/h2/util/Profiler;->startsWithAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v9, 0x28

    if-ge v3, v6, :cond_3

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v9, :cond_3

    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    const/16 v6, 0x2e

    if-lez v3, :cond_4

    add-int/lit8 v10, v3, -0x1

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v6, :cond_4

    add-int/lit8 v3, v3, -0x1

    :cond_4
    iget-boolean v10, p0, Lorg/h2/util/Profiler;->sumClasses:Z

    if-eqz v10, :cond_5

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v7, v6, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    if-ltz v6, :cond_5

    move v3, v6

    :cond_5
    iget-boolean v6, p0, Lorg/h2/util/Profiler;->sumMethods:Z

    if-eqz v6, :cond_6

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v7, v9, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    if-ltz v6, :cond_6

    move v3, v6

    :cond_6
    invoke-virtual {v7, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lorg/h2/util/Profiler;->summary:Ljava/util/HashMap;

    invoke-static {v6, v3, v1}, Lorg/h2/util/Profiler;->increment(Ljava/util/HashMap;Ljava/lang/String;I)I

    const/4 v6, 0x1

    :cond_7
    add-int/lit8 v5, v5, 0x1

    move-object v3, v7

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/h2/util/Profiler;->counts:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lorg/h2/util/Profiler;->minCount:I

    invoke-static {v0, v1, v2}, Lorg/h2/util/Profiler;->increment(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/h2/util/Profiler;->minCount:I

    iget v0, p0, Lorg/h2/util/Profiler;->total:I

    add-int/2addr v0, v8

    iput v0, p0, Lorg/h2/util/Profiler;->total:I

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private static readRunnableStackTraces(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    :try_start_0
    const-string v1, "jstack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/util/Profiler;->exec([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/LineNumberReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v0}, Lorg/h2/util/Profiler;->readStackTrace(Ljava/io/LineNumberReader;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static readStackTrace(Ljava/io/LineNumberReader;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/LineNumberReader;",
            ")",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    :goto_1
    return-object v0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.Thread.State: RUNNABLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    const-string v3, "at "

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private varargs run([Ljava/lang/String;)V
    .locals 10

    .line 2
    const-string v0, "CP1252"

    array-length v1, p1

    if-nez v1, :cond_0

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Show profiling data"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Usage: java "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " <pid> | <stackTraceFileNames>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "Processes:"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "jps"

    const-string v1, "-l"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/Profiler;->exec([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/h2/util/Profiler;->start:J

    const/4 v1, 0x0

    aget-object v2, p1, v1

    const-string v3, "\\d+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/h2/util/Profiler;->pid:I

    const-wide/16 v0, 0x0

    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/h2/util/Profiler;->tick()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long v4, v2, v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x5

    invoke-virtual {p1, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    cmp-long p1, v4, v6

    if-lez p1, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v4, p0, Lorg/h2/util/Profiler;->start:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lorg/h2/util/Profiler;->time:J

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/h2/util/Profiler;->getTopTraces(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-wide v0, v2

    goto :goto_0

    :cond_2
    :try_start_0
    array-length v2, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_9

    aget-object v4, p1, v3

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_6

    const-string v5, "-classes"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iput-boolean v6, p0, Lorg/h2/util/Profiler;->sumClasses:Z

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_3
    const-string v5, "-methods"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iput-boolean v6, p0, Lorg/h2/util/Profiler;->sumMethods:Z

    goto :goto_3

    :cond_4
    const-string v5, "-packages"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iput-boolean v1, p0, Lorg/h2/util/Profiler;->sumClasses:Z

    iput-boolean v1, p0, Lorg/h2/util/Profiler;->sumMethods:Z

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v7, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v7, Ljava/io/LineNumberReader;

    invoke-direct {v7, v5}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    :cond_7
    :goto_2
    invoke-virtual {v7}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_8

    invoke-virtual {v5}, Ljava/io/Reader;->close()V

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v4, Ljava/io/LineNumberReader;

    invoke-direct {v4, v5}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v4}, Lorg/h2/util/Profiler;->readStackTrace(Ljava/io/LineNumberReader;)Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/h2/util/Profiler;->processList(Ljava/util/List;)V

    invoke-virtual {v5}, Ljava/io/Reader;->close()V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    const-string v9, "Full thread dump"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget v8, p0, Lorg/h2/util/Profiler;->threadDumps:I

    add-int/2addr v8, v6

    iput v8, p0, Lorg/h2/util/Profiler;->threadDumps:I

    goto :goto_2

    :cond_9
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lorg/h2/util/Profiler;->getTopTraces(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static startsWithAny(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private tick()V
    .locals 2

    iget v0, p0, Lorg/h2/util/Profiler;->interval:I

    if-lez v0, :cond_1

    iget-boolean v1, p0, Lorg/h2/util/Profiler;->paused:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    int-to-long v0, v0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_1
    :goto_0
    iget v0, p0, Lorg/h2/util/Profiler;->pid:I

    if-eqz v0, :cond_2

    invoke-static {v0}, Lorg/h2/util/Profiler;->readRunnableStackTraces(I)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {}, Lorg/h2/util/Profiler;->getRunnableStackTraces()Ljava/util/List;

    move-result-object v0

    :goto_1
    iget v1, p0, Lorg/h2/util/Profiler;->threadDumps:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/h2/util/Profiler;->threadDumps:I

    invoke-direct {p0, v0}, Lorg/h2/util/Profiler;->processList(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getTop(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/h2/util/Profiler;->stopCollecting()Lorg/h2/util/Profiler;

    invoke-direct {p0, p1}, Lorg/h2/util/Profiler;->getTopTraces(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/util/Profiler;->start:J

    :goto_0
    iget-boolean v0, p0, Lorg/h2/util/Profiler;->stop:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lorg/h2/util/Profiler;->tick()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/h2/util/Profiler;->start:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/h2/util/Profiler;->time:J

    return-void
.end method

.method public startCollecting()Lorg/h2/util/Profiler;
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "Profiler"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/h2/util/Profiler;->thread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object v0, p0, Lorg/h2/util/Profiler;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-object p0
.end method

.method public stopCollecting()Lorg/h2/util/Profiler;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/util/Profiler;->stop:Z

    iget-object v0, p0, Lorg/h2/util/Profiler;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/util/Profiler;->thread:Ljava/lang/Thread;

    :cond_0
    return-object p0
.end method
