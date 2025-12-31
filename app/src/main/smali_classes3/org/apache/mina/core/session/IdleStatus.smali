.class public Lorg/apache/mina/core/session/IdleStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

.field public static final READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

.field public static final WRITER_IDLE:Lorg/apache/mina/core/session/IdleStatus;


# instance fields
.field private final strValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/mina/core/session/IdleStatus;

    const-string v1, "reader idle"

    invoke-direct {v0, v1}, Lorg/apache/mina/core/session/IdleStatus;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    new-instance v0, Lorg/apache/mina/core/session/IdleStatus;

    const-string v1, "writer idle"

    invoke-direct {v0, v1}, Lorg/apache/mina/core/session/IdleStatus;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/core/session/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    new-instance v0, Lorg/apache/mina/core/session/IdleStatus;

    const-string v1, "both idle"

    invoke-direct {v0, v1}, Lorg/apache/mina/core/session/IdleStatus;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/core/session/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/core/session/IdleStatus;->strValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/core/session/IdleStatus;->strValue:Ljava/lang/String;

    return-object v0
.end method
