.class public final enum Lcom/goterl/lazysodium/interfaces/Auth$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/goterl/lazysodium/interfaces/Auth$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/goterl/lazysodium/interfaces/Auth$Type;

.field public static final enum SHA256:Lcom/goterl/lazysodium/interfaces/Auth$Type;

.field public static final enum SHA512:Lcom/goterl/lazysodium/interfaces/Auth$Type;

.field public static final enum SHA512256:Lcom/goterl/lazysodium/interfaces/Auth$Type;


# direct methods
.method private static synthetic $values()[Lcom/goterl/lazysodium/interfaces/Auth$Type;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/goterl/lazysodium/interfaces/Auth$Type;

    sget-object v1, Lcom/goterl/lazysodium/interfaces/Auth$Type;->SHA256:Lcom/goterl/lazysodium/interfaces/Auth$Type;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/goterl/lazysodium/interfaces/Auth$Type;->SHA512:Lcom/goterl/lazysodium/interfaces/Auth$Type;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/goterl/lazysodium/interfaces/Auth$Type;->SHA512256:Lcom/goterl/lazysodium/interfaces/Auth$Type;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/goterl/lazysodium/interfaces/Auth$Type;

    const-string v1, "SHA256"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/goterl/lazysodium/interfaces/Auth$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/goterl/lazysodium/interfaces/Auth$Type;->SHA256:Lcom/goterl/lazysodium/interfaces/Auth$Type;

    new-instance v0, Lcom/goterl/lazysodium/interfaces/Auth$Type;

    const-string v1, "SHA512"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/goterl/lazysodium/interfaces/Auth$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/goterl/lazysodium/interfaces/Auth$Type;->SHA512:Lcom/goterl/lazysodium/interfaces/Auth$Type;

    new-instance v0, Lcom/goterl/lazysodium/interfaces/Auth$Type;

    const-string v1, "SHA512256"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/goterl/lazysodium/interfaces/Auth$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/goterl/lazysodium/interfaces/Auth$Type;->SHA512256:Lcom/goterl/lazysodium/interfaces/Auth$Type;

    invoke-static {}, Lcom/goterl/lazysodium/interfaces/Auth$Type;->$values()[Lcom/goterl/lazysodium/interfaces/Auth$Type;

    move-result-object v0

    sput-object v0, Lcom/goterl/lazysodium/interfaces/Auth$Type;->$VALUES:[Lcom/goterl/lazysodium/interfaces/Auth$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/goterl/lazysodium/interfaces/Auth$Type;
    .locals 1

    const-class v0, Lcom/goterl/lazysodium/interfaces/Auth$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/goterl/lazysodium/interfaces/Auth$Type;

    return-object p0
.end method

.method public static values()[Lcom/goterl/lazysodium/interfaces/Auth$Type;
    .locals 1

    sget-object v0, Lcom/goterl/lazysodium/interfaces/Auth$Type;->$VALUES:[Lcom/goterl/lazysodium/interfaces/Auth$Type;

    invoke-virtual {v0}, [Lcom/goterl/lazysodium/interfaces/Auth$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/goterl/lazysodium/interfaces/Auth$Type;

    return-object v0
.end method
