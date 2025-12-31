.class public final enum Lio/milton/http/LockInfo$LockDepth;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/milton/http/LockInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LockDepth"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/milton/http/LockInfo$LockDepth;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/milton/http/LockInfo$LockDepth;

.field public static final enum INFINITY:Lio/milton/http/LockInfo$LockDepth;

.field public static final enum ZERO:Lio/milton/http/LockInfo$LockDepth;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lio/milton/http/LockInfo$LockDepth;

    const-string v1, "ZERO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/milton/http/LockInfo$LockDepth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/milton/http/LockInfo$LockDepth;->ZERO:Lio/milton/http/LockInfo$LockDepth;

    new-instance v1, Lio/milton/http/LockInfo$LockDepth;

    const-string v3, "INFINITY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/milton/http/LockInfo$LockDepth;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/milton/http/LockInfo$LockDepth;->INFINITY:Lio/milton/http/LockInfo$LockDepth;

    const/4 v3, 0x2

    new-array v3, v3, [Lio/milton/http/LockInfo$LockDepth;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lio/milton/http/LockInfo$LockDepth;->$VALUES:[Lio/milton/http/LockInfo$LockDepth;

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

.method public static valueOf(Ljava/lang/String;)Lio/milton/http/LockInfo$LockDepth;
    .locals 1

    const-class v0, Lio/milton/http/LockInfo$LockDepth;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/milton/http/LockInfo$LockDepth;

    return-object p0
.end method

.method public static values()[Lio/milton/http/LockInfo$LockDepth;
    .locals 1

    sget-object v0, Lio/milton/http/LockInfo$LockDepth;->$VALUES:[Lio/milton/http/LockInfo$LockDepth;

    invoke-virtual {v0}, [Lio/milton/http/LockInfo$LockDepth;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/milton/http/LockInfo$LockDepth;

    return-object v0
.end method
