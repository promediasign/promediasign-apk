.class public final enum Lcom/goterl/lazysodium/interfaces/StreamJava$Method;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/goterl/lazysodium/interfaces/StreamJava$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/goterl/lazysodium/interfaces/StreamJava$Method;

.field public static final enum SALSA20_12:Lcom/goterl/lazysodium/interfaces/StreamJava$Method;

.field public static final enum SALSA20_8:Lcom/goterl/lazysodium/interfaces/StreamJava$Method;

.field public static final enum XCHACHA20:Lcom/goterl/lazysodium/interfaces/StreamJava$Method;


# direct methods
.method private static synthetic $values()[Lcom/goterl/lazysodium/interfaces/StreamJava$Method;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/goterl/lazysodium/interfaces/StreamJava$Method;

    sget-object v1, Lcom/goterl/lazysodium/interfaces/StreamJava$Method;->SALSA20_12:Lcom/goterl/lazysodium/interfaces/StreamJava$Method;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/goterl/lazysodium/interfaces/StreamJava$Method;->SALSA20_8:Lcom/goterl/lazysodium/interfaces/StreamJava$Method;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/goterl/lazysodium/interfaces/StreamJava$Method;->XCHACHA20:Lcom/goterl/lazysodium/interfaces/StreamJava$Method;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/goterl/lazysodium/interfaces/StreamJava$Method;

    const-string v1, "SALSA20_12"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/goterl/lazysodium/interfaces/StreamJava$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/goterl/lazysodium/interfaces/StreamJava$Method;->SALSA20_12:Lcom/goterl/lazysodium/interfaces/StreamJava$Method;

    new-instance v0, Lcom/goterl/lazysodium/interfaces/StreamJava$Method;

    const-string v1, "SALSA20_8"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/goterl/lazysodium/interfaces/StreamJava$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/goterl/lazysodium/interfaces/StreamJava$Method;->SALSA20_8:Lcom/goterl/lazysodium/interfaces/StreamJava$Method;

    new-instance v0, Lcom/goterl/lazysodium/interfaces/StreamJava$Method;

    const-string v1, "XCHACHA20"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/goterl/lazysodium/interfaces/StreamJava$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/goterl/lazysodium/interfaces/StreamJava$Method;->XCHACHA20:Lcom/goterl/lazysodium/interfaces/StreamJava$Method;

    invoke-static {}, Lcom/goterl/lazysodium/interfaces/StreamJava$Method;->$values()[Lcom/goterl/lazysodium/interfaces/StreamJava$Method;

    move-result-object v0

    sput-object v0, Lcom/goterl/lazysodium/interfaces/StreamJava$Method;->$VALUES:[Lcom/goterl/lazysodium/interfaces/StreamJava$Method;

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

.method public static valueOf(Ljava/lang/String;)Lcom/goterl/lazysodium/interfaces/StreamJava$Method;
    .locals 1

    const-class v0, Lcom/goterl/lazysodium/interfaces/StreamJava$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/goterl/lazysodium/interfaces/StreamJava$Method;

    return-object p0
.end method

.method public static values()[Lcom/goterl/lazysodium/interfaces/StreamJava$Method;
    .locals 1

    sget-object v0, Lcom/goterl/lazysodium/interfaces/StreamJava$Method;->$VALUES:[Lcom/goterl/lazysodium/interfaces/StreamJava$Method;

    invoke-virtual {v0}, [Lcom/goterl/lazysodium/interfaces/StreamJava$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/goterl/lazysodium/interfaces/StreamJava$Method;

    return-object v0
.end method
