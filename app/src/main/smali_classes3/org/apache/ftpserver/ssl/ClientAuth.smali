.class public final enum Lorg/apache/ftpserver/ssl/ClientAuth;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/ftpserver/ssl/ClientAuth;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ftpserver/ssl/ClientAuth;

.field public static final enum NEED:Lorg/apache/ftpserver/ssl/ClientAuth;

.field public static final enum NONE:Lorg/apache/ftpserver/ssl/ClientAuth;

.field public static final enum WANT:Lorg/apache/ftpserver/ssl/ClientAuth;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/apache/ftpserver/ssl/ClientAuth;

    const-string v1, "NEED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/ftpserver/ssl/ClientAuth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ftpserver/ssl/ClientAuth;->NEED:Lorg/apache/ftpserver/ssl/ClientAuth;

    new-instance v1, Lorg/apache/ftpserver/ssl/ClientAuth;

    const-string v3, "WANT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/ftpserver/ssl/ClientAuth;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/ftpserver/ssl/ClientAuth;->WANT:Lorg/apache/ftpserver/ssl/ClientAuth;

    new-instance v3, Lorg/apache/ftpserver/ssl/ClientAuth;

    const-string v5, "NONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/ftpserver/ssl/ClientAuth;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/ftpserver/ssl/ClientAuth;->NONE:Lorg/apache/ftpserver/ssl/ClientAuth;

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/apache/ftpserver/ssl/ClientAuth;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lorg/apache/ftpserver/ssl/ClientAuth;->$VALUES:[Lorg/apache/ftpserver/ssl/ClientAuth;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ftpserver/ssl/ClientAuth;
    .locals 1

    const-class v0, Lorg/apache/ftpserver/ssl/ClientAuth;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/ftpserver/ssl/ClientAuth;

    return-object p0
.end method

.method public static values()[Lorg/apache/ftpserver/ssl/ClientAuth;
    .locals 1

    sget-object v0, Lorg/apache/ftpserver/ssl/ClientAuth;->$VALUES:[Lorg/apache/ftpserver/ssl/ClientAuth;

    invoke-virtual {v0}, [Lorg/apache/ftpserver/ssl/ClientAuth;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ftpserver/ssl/ClientAuth;

    return-object v0
.end method
