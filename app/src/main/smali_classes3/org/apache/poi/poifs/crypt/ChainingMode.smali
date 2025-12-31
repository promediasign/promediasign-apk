.class public final enum Lorg/apache/poi/poifs/crypt/ChainingMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/poifs/crypt/ChainingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/poifs/crypt/ChainingMode;

.field public static final enum cbc:Lorg/apache/poi/poifs/crypt/ChainingMode;

.field public static final enum cfb:Lorg/apache/poi/poifs/crypt/ChainingMode;

.field public static final enum ecb:Lorg/apache/poi/poifs/crypt/ChainingMode;


# instance fields
.field public final ecmaId:I

.field public final jceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/apache/poi/poifs/crypt/ChainingMode;

    const-string v1, "ecb"

    const/4 v2, 0x0

    const-string v3, "ECB"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/poifs/crypt/ChainingMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/poifs/crypt/ChainingMode;->ecb:Lorg/apache/poi/poifs/crypt/ChainingMode;

    new-instance v1, Lorg/apache/poi/poifs/crypt/ChainingMode;

    const-string v3, "cbc"

    const-string v5, "CBC"

    const/4 v6, 0x2

    invoke-direct {v1, v3, v4, v5, v6}, Lorg/apache/poi/poifs/crypt/ChainingMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/poifs/crypt/ChainingMode;->cbc:Lorg/apache/poi/poifs/crypt/ChainingMode;

    new-instance v3, Lorg/apache/poi/poifs/crypt/ChainingMode;

    const-string v5, "CFB8"

    const/4 v7, 0x3

    const-string v8, "cfb"

    invoke-direct {v3, v8, v6, v5, v7}, Lorg/apache/poi/poifs/crypt/ChainingMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lorg/apache/poi/poifs/crypt/ChainingMode;->cfb:Lorg/apache/poi/poifs/crypt/ChainingMode;

    new-array v5, v7, [Lorg/apache/poi/poifs/crypt/ChainingMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lorg/apache/poi/poifs/crypt/ChainingMode;->$VALUES:[Lorg/apache/poi/poifs/crypt/ChainingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/poifs/crypt/ChainingMode;->jceId:Ljava/lang/String;

    iput p4, p0, Lorg/apache/poi/poifs/crypt/ChainingMode;->ecmaId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/poifs/crypt/ChainingMode;
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/crypt/ChainingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/poifs/crypt/ChainingMode;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/poifs/crypt/ChainingMode;
    .locals 1

    sget-object v0, Lorg/apache/poi/poifs/crypt/ChainingMode;->$VALUES:[Lorg/apache/poi/poifs/crypt/ChainingMode;

    invoke-virtual {v0}, [Lorg/apache/poi/poifs/crypt/ChainingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/poifs/crypt/ChainingMode;

    return-object v0
.end method
