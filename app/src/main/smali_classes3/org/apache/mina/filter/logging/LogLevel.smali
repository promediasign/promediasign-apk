.class public final enum Lorg/apache/mina/filter/logging/LogLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/mina/filter/logging/LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/mina/filter/logging/LogLevel;

.field public static final enum DEBUG:Lorg/apache/mina/filter/logging/LogLevel;

.field public static final enum ERROR:Lorg/apache/mina/filter/logging/LogLevel;

.field public static final enum INFO:Lorg/apache/mina/filter/logging/LogLevel;

.field public static final enum NONE:Lorg/apache/mina/filter/logging/LogLevel;

.field public static final enum TRACE:Lorg/apache/mina/filter/logging/LogLevel;

.field public static final enum WARN:Lorg/apache/mina/filter/logging/LogLevel;


# instance fields
.field private level:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lorg/apache/mina/filter/logging/LogLevel;

    const-string v1, "TRACE"

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/mina/filter/logging/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/mina/filter/logging/LogLevel;->TRACE:Lorg/apache/mina/filter/logging/LogLevel;

    new-instance v1, Lorg/apache/mina/filter/logging/LogLevel;

    const-string v4, "DEBUG"

    const/4 v5, 0x1

    const/4 v6, 0x4

    invoke-direct {v1, v4, v5, v6}, Lorg/apache/mina/filter/logging/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/mina/filter/logging/LogLevel;->DEBUG:Lorg/apache/mina/filter/logging/LogLevel;

    new-instance v4, Lorg/apache/mina/filter/logging/LogLevel;

    const-string v7, "INFO"

    const/4 v8, 0x2

    const/4 v9, 0x3

    invoke-direct {v4, v7, v8, v9}, Lorg/apache/mina/filter/logging/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/mina/filter/logging/LogLevel;->INFO:Lorg/apache/mina/filter/logging/LogLevel;

    new-instance v7, Lorg/apache/mina/filter/logging/LogLevel;

    const-string v10, "WARN"

    invoke-direct {v7, v10, v9, v8}, Lorg/apache/mina/filter/logging/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lorg/apache/mina/filter/logging/LogLevel;->WARN:Lorg/apache/mina/filter/logging/LogLevel;

    new-instance v10, Lorg/apache/mina/filter/logging/LogLevel;

    const-string v11, "ERROR"

    invoke-direct {v10, v11, v6, v5}, Lorg/apache/mina/filter/logging/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lorg/apache/mina/filter/logging/LogLevel;->ERROR:Lorg/apache/mina/filter/logging/LogLevel;

    new-instance v11, Lorg/apache/mina/filter/logging/LogLevel;

    const-string v12, "NONE"

    invoke-direct {v11, v12, v3, v2}, Lorg/apache/mina/filter/logging/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lorg/apache/mina/filter/logging/LogLevel;->NONE:Lorg/apache/mina/filter/logging/LogLevel;

    const/4 v12, 0x6

    new-array v12, v12, [Lorg/apache/mina/filter/logging/LogLevel;

    aput-object v0, v12, v2

    aput-object v1, v12, v5

    aput-object v4, v12, v8

    aput-object v7, v12, v9

    aput-object v10, v12, v6

    aput-object v11, v12, v3

    sput-object v12, Lorg/apache/mina/filter/logging/LogLevel;->$VALUES:[Lorg/apache/mina/filter/logging/LogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/mina/filter/logging/LogLevel;->level:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/mina/filter/logging/LogLevel;
    .locals 1

    const-class v0, Lorg/apache/mina/filter/logging/LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/mina/filter/logging/LogLevel;

    return-object p0
.end method

.method public static values()[Lorg/apache/mina/filter/logging/LogLevel;
    .locals 1

    sget-object v0, Lorg/apache/mina/filter/logging/LogLevel;->$VALUES:[Lorg/apache/mina/filter/logging/LogLevel;

    invoke-virtual {v0}, [Lorg/apache/mina/filter/logging/LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/mina/filter/logging/LogLevel;

    return-object v0
.end method


# virtual methods
.method public getLevel()I
    .locals 1

    iget v0, p0, Lorg/apache/mina/filter/logging/LogLevel;->level:I

    return v0
.end method
