.class public abstract Lorg/apache/mina/util/ExceptionMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static instance:Lorg/apache/mina/util/ExceptionMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/mina/util/DefaultExceptionMonitor;

    invoke-direct {v0}, Lorg/apache/mina/util/DefaultExceptionMonitor;-><init>()V

    sput-object v0, Lorg/apache/mina/util/ExceptionMonitor;->instance:Lorg/apache/mina/util/ExceptionMonitor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/apache/mina/util/ExceptionMonitor;
    .locals 1

    sget-object v0, Lorg/apache/mina/util/ExceptionMonitor;->instance:Lorg/apache/mina/util/ExceptionMonitor;

    return-object v0
.end method

.method public static setInstance(Lorg/apache/mina/util/ExceptionMonitor;)V
    .locals 0

    if-nez p0, :cond_0

    new-instance p0, Lorg/apache/mina/util/DefaultExceptionMonitor;

    invoke-direct {p0}, Lorg/apache/mina/util/DefaultExceptionMonitor;-><init>()V

    :cond_0
    sput-object p0, Lorg/apache/mina/util/ExceptionMonitor;->instance:Lorg/apache/mina/util/ExceptionMonitor;

    return-void
.end method


# virtual methods
.method public abstract exceptionCaught(Ljava/lang/Throwable;)V
.end method
