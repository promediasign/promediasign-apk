.class public final enum Lorg/apache/mina/proxy/event/IoSessionEventType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/mina/proxy/event/IoSessionEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/mina/proxy/event/IoSessionEventType;

.field public static final enum CLOSED:Lorg/apache/mina/proxy/event/IoSessionEventType;

.field public static final enum CREATED:Lorg/apache/mina/proxy/event/IoSessionEventType;

.field public static final enum IDLE:Lorg/apache/mina/proxy/event/IoSessionEventType;

.field public static final enum OPENED:Lorg/apache/mina/proxy/event/IoSessionEventType;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lorg/apache/mina/proxy/event/IoSessionEventType;

    const-string v1, "CREATED"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/mina/proxy/event/IoSessionEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/mina/proxy/event/IoSessionEventType;->CREATED:Lorg/apache/mina/proxy/event/IoSessionEventType;

    new-instance v1, Lorg/apache/mina/proxy/event/IoSessionEventType;

    const-string v4, "OPENED"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lorg/apache/mina/proxy/event/IoSessionEventType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/mina/proxy/event/IoSessionEventType;->OPENED:Lorg/apache/mina/proxy/event/IoSessionEventType;

    new-instance v4, Lorg/apache/mina/proxy/event/IoSessionEventType;

    const-string v6, "IDLE"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lorg/apache/mina/proxy/event/IoSessionEventType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/mina/proxy/event/IoSessionEventType;->IDLE:Lorg/apache/mina/proxy/event/IoSessionEventType;

    new-instance v6, Lorg/apache/mina/proxy/event/IoSessionEventType;

    const-string v8, "CLOSED"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lorg/apache/mina/proxy/event/IoSessionEventType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/apache/mina/proxy/event/IoSessionEventType;->CLOSED:Lorg/apache/mina/proxy/event/IoSessionEventType;

    new-array v8, v9, [Lorg/apache/mina/proxy/event/IoSessionEventType;

    aput-object v0, v8, v2

    aput-object v1, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    sput-object v8, Lorg/apache/mina/proxy/event/IoSessionEventType;->$VALUES:[Lorg/apache/mina/proxy/event/IoSessionEventType;

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

    iput p3, p0, Lorg/apache/mina/proxy/event/IoSessionEventType;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/mina/proxy/event/IoSessionEventType;
    .locals 1

    const-class v0, Lorg/apache/mina/proxy/event/IoSessionEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/mina/proxy/event/IoSessionEventType;

    return-object p0
.end method

.method public static values()[Lorg/apache/mina/proxy/event/IoSessionEventType;
    .locals 1

    sget-object v0, Lorg/apache/mina/proxy/event/IoSessionEventType;->$VALUES:[Lorg/apache/mina/proxy/event/IoSessionEventType;

    invoke-virtual {v0}, [Lorg/apache/mina/proxy/event/IoSessionEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/mina/proxy/event/IoSessionEventType;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Lorg/apache/mina/proxy/event/IoSessionEventType;->id:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/mina/proxy/event/IoSessionEventType$1;->$SwitchMap$org$apache$mina$proxy$event$IoSessionEventType:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_3

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x4

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v1, "- Event Id="

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lorg/apache/mina/proxy/event/IoSessionEventType;->id:I

    .line 29
    .line 30
    const-string v2, " -"

    .line 31
    .line 32
    invoke-static {v2, v1, v0}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0

    .line 37
    :cond_0
    const-string v0, "- CLOSED event -"

    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_1
    const-string v0, "- IDLE event -"

    .line 41
    .line 42
    return-object v0

    .line 43
    :cond_2
    const-string v0, "- OPENED event -"

    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_3
    const-string v0, "- CREATED event -"

    .line 47
    .line 48
    return-object v0
.end method
