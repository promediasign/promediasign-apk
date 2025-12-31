.class public final enum Lio/milton/http/LockInfo$LockScope;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/milton/http/LockInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LockScope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/milton/http/LockInfo$LockScope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/milton/http/LockInfo$LockScope;

.field public static final enum EXCLUSIVE:Lio/milton/http/LockInfo$LockScope;

.field public static final enum NONE:Lio/milton/http/LockInfo$LockScope;

.field public static final enum SHARED:Lio/milton/http/LockInfo$LockScope;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lio/milton/http/LockInfo$LockScope;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/milton/http/LockInfo$LockScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/milton/http/LockInfo$LockScope;->NONE:Lio/milton/http/LockInfo$LockScope;

    new-instance v1, Lio/milton/http/LockInfo$LockScope;

    const-string v3, "SHARED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/milton/http/LockInfo$LockScope;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/milton/http/LockInfo$LockScope;->SHARED:Lio/milton/http/LockInfo$LockScope;

    new-instance v3, Lio/milton/http/LockInfo$LockScope;

    const-string v5, "EXCLUSIVE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/milton/http/LockInfo$LockScope;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/milton/http/LockInfo$LockScope;->EXCLUSIVE:Lio/milton/http/LockInfo$LockScope;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/milton/http/LockInfo$LockScope;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lio/milton/http/LockInfo$LockScope;->$VALUES:[Lio/milton/http/LockInfo$LockScope;

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

.method public static valueOf(Ljava/lang/String;)Lio/milton/http/LockInfo$LockScope;
    .locals 1

    const-class v0, Lio/milton/http/LockInfo$LockScope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/milton/http/LockInfo$LockScope;

    return-object p0
.end method

.method public static values()[Lio/milton/http/LockInfo$LockScope;
    .locals 1

    sget-object v0, Lio/milton/http/LockInfo$LockScope;->$VALUES:[Lio/milton/http/LockInfo$LockScope;

    invoke-virtual {v0}, [Lio/milton/http/LockInfo$LockScope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/milton/http/LockInfo$LockScope;

    return-object v0
.end method
