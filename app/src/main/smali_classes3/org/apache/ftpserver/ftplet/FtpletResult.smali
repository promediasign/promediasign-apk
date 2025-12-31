.class public final enum Lorg/apache/ftpserver/ftplet/FtpletResult;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/ftpserver/ftplet/FtpletResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ftpserver/ftplet/FtpletResult;

.field public static final enum DEFAULT:Lorg/apache/ftpserver/ftplet/FtpletResult;

.field public static final enum DISCONNECT:Lorg/apache/ftpserver/ftplet/FtpletResult;

.field public static final enum NO_FTPLET:Lorg/apache/ftpserver/ftplet/FtpletResult;

.field public static final enum SKIP:Lorg/apache/ftpserver/ftplet/FtpletResult;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/apache/ftpserver/ftplet/FtpletResult;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/ftpserver/ftplet/FtpletResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ftpserver/ftplet/FtpletResult;->DEFAULT:Lorg/apache/ftpserver/ftplet/FtpletResult;

    new-instance v1, Lorg/apache/ftpserver/ftplet/FtpletResult;

    const-string v3, "NO_FTPLET"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/ftpserver/ftplet/FtpletResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/ftpserver/ftplet/FtpletResult;->NO_FTPLET:Lorg/apache/ftpserver/ftplet/FtpletResult;

    new-instance v3, Lorg/apache/ftpserver/ftplet/FtpletResult;

    const-string v5, "SKIP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/ftpserver/ftplet/FtpletResult;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/ftpserver/ftplet/FtpletResult;->SKIP:Lorg/apache/ftpserver/ftplet/FtpletResult;

    new-instance v5, Lorg/apache/ftpserver/ftplet/FtpletResult;

    const-string v7, "DISCONNECT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/ftpserver/ftplet/FtpletResult;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/ftpserver/ftplet/FtpletResult;->DISCONNECT:Lorg/apache/ftpserver/ftplet/FtpletResult;

    const/4 v7, 0x4

    new-array v7, v7, [Lorg/apache/ftpserver/ftplet/FtpletResult;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lorg/apache/ftpserver/ftplet/FtpletResult;->$VALUES:[Lorg/apache/ftpserver/ftplet/FtpletResult;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 1

    const-class v0, Lorg/apache/ftpserver/ftplet/FtpletResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/ftpserver/ftplet/FtpletResult;

    return-object p0
.end method

.method public static values()[Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 1

    sget-object v0, Lorg/apache/ftpserver/ftplet/FtpletResult;->$VALUES:[Lorg/apache/ftpserver/ftplet/FtpletResult;

    invoke-virtual {v0}, [Lorg/apache/ftpserver/ftplet/FtpletResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ftpserver/ftplet/FtpletResult;

    return-object v0
.end method
