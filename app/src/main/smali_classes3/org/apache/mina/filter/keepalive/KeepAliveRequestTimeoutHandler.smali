.class public interface abstract Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CLOSE:Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

.field public static final DEAF_SPEAKER:Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

.field public static final EXCEPTION:Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

.field public static final LOG:Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

.field public static final NOOP:Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler$1;

    invoke-direct {v0}, Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler$1;-><init>()V

    sput-object v0, Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;->NOOP:Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

    new-instance v0, Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler$2;

    invoke-direct {v0}, Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler$2;-><init>()V

    sput-object v0, Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;->LOG:Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

    new-instance v0, Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler$3;

    invoke-direct {v0}, Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler$3;-><init>()V

    sput-object v0, Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;->EXCEPTION:Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

    new-instance v0, Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler$4;

    invoke-direct {v0}, Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler$4;-><init>()V

    sput-object v0, Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;->CLOSE:Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

    new-instance v0, Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler$5;

    invoke-direct {v0}, Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler$5;-><init>()V

    sput-object v0, Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;->DEAF_SPEAKER:Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

    return-void
.end method


# virtual methods
.method public abstract keepAliveRequestTimedOut(Lorg/apache/mina/filter/keepalive/KeepAliveFilter;Lorg/apache/mina/core/session/IoSession;)V
.end method
