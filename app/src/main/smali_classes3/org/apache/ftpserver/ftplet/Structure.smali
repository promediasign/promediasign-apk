.class public final enum Lorg/apache/ftpserver/ftplet/Structure;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/ftpserver/ftplet/Structure;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ftpserver/ftplet/Structure;

.field public static final enum FILE:Lorg/apache/ftpserver/ftplet/Structure;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/ftpserver/ftplet/Structure;

    const-string v1, "FILE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/ftpserver/ftplet/Structure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ftpserver/ftplet/Structure;->FILE:Lorg/apache/ftpserver/ftplet/Structure;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/ftpserver/ftplet/Structure;

    aput-object v0, v1, v2

    sput-object v1, Lorg/apache/ftpserver/ftplet/Structure;->$VALUES:[Lorg/apache/ftpserver/ftplet/Structure;

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

.method public static parseArgument(C)Lorg/apache/ftpserver/ftplet/Structure;
    .locals 3

    const/16 v0, 0x46

    if-eq p0, v0, :cond_1

    const/16 v0, 0x66

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown structure: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    sget-object p0, Lorg/apache/ftpserver/ftplet/Structure;->FILE:Lorg/apache/ftpserver/ftplet/Structure;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/Structure;
    .locals 1

    const-class v0, Lorg/apache/ftpserver/ftplet/Structure;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/ftpserver/ftplet/Structure;

    return-object p0
.end method

.method public static values()[Lorg/apache/ftpserver/ftplet/Structure;
    .locals 1

    sget-object v0, Lorg/apache/ftpserver/ftplet/Structure;->$VALUES:[Lorg/apache/ftpserver/ftplet/Structure;

    invoke-virtual {v0}, [Lorg/apache/ftpserver/ftplet/Structure;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ftpserver/ftplet/Structure;

    return-object v0
.end method
