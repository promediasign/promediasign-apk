.class public final enum Lorg/apache/ftpserver/ftplet/DataType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/ftpserver/ftplet/DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ftpserver/ftplet/DataType;

.field public static final enum ASCII:Lorg/apache/ftpserver/ftplet/DataType;

.field public static final enum BINARY:Lorg/apache/ftpserver/ftplet/DataType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/apache/ftpserver/ftplet/DataType;

    const-string v1, "BINARY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/ftpserver/ftplet/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ftpserver/ftplet/DataType;->BINARY:Lorg/apache/ftpserver/ftplet/DataType;

    new-instance v1, Lorg/apache/ftpserver/ftplet/DataType;

    const-string v3, "ASCII"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/ftpserver/ftplet/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/ftpserver/ftplet/DataType;->ASCII:Lorg/apache/ftpserver/ftplet/DataType;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/apache/ftpserver/ftplet/DataType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lorg/apache/ftpserver/ftplet/DataType;->$VALUES:[Lorg/apache/ftpserver/ftplet/DataType;

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

.method public static parseArgument(C)Lorg/apache/ftpserver/ftplet/DataType;
    .locals 3

    const/16 v0, 0x41

    if-eq p0, v0, :cond_2

    const/16 v0, 0x49

    if-eq p0, v0, :cond_1

    const/16 v0, 0x61

    if-eq p0, v0, :cond_2

    const/16 v0, 0x69

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown data type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    sget-object p0, Lorg/apache/ftpserver/ftplet/DataType;->BINARY:Lorg/apache/ftpserver/ftplet/DataType;

    return-object p0

    :cond_2
    sget-object p0, Lorg/apache/ftpserver/ftplet/DataType;->ASCII:Lorg/apache/ftpserver/ftplet/DataType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/DataType;
    .locals 1

    const-class v0, Lorg/apache/ftpserver/ftplet/DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/ftpserver/ftplet/DataType;

    return-object p0
.end method

.method public static values()[Lorg/apache/ftpserver/ftplet/DataType;
    .locals 1

    sget-object v0, Lorg/apache/ftpserver/ftplet/DataType;->$VALUES:[Lorg/apache/ftpserver/ftplet/DataType;

    invoke-virtual {v0}, [Lorg/apache/ftpserver/ftplet/DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ftpserver/ftplet/DataType;

    return-object v0
.end method
