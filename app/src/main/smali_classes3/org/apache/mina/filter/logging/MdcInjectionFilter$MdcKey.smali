.class public final enum Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/filter/logging/MdcInjectionFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MdcKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

.field public static final enum handlerClass:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

.field public static final enum localAddress:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

.field public static final enum localIp:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

.field public static final enum localPort:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

.field public static final enum remoteAddress:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

.field public static final enum remoteIp:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

.field public static final enum remotePort:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    const-string v1, "handlerClass"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->handlerClass:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    new-instance v1, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    const-string v3, "remoteAddress"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->remoteAddress:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    new-instance v3, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    const-string v5, "localAddress"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->localAddress:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    new-instance v5, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    const-string v7, "remoteIp"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->remoteIp:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    new-instance v7, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    const-string v9, "remotePort"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->remotePort:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    new-instance v9, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    const-string v11, "localIp"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->localIp:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    new-instance v11, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    const-string v13, "localPort"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->localPort:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    const/4 v13, 0x7

    new-array v13, v13, [Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->$VALUES:[Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;
    .locals 1

    const-class v0, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    return-object p0
.end method

.method public static values()[Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;
    .locals 1

    sget-object v0, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->$VALUES:[Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    invoke-virtual {v0}, [Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    return-object v0
.end method
