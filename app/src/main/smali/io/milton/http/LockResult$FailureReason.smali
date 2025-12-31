.class public final enum Lio/milton/http/LockResult$FailureReason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/milton/http/LockResult$FailureReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/milton/http/LockResult$FailureReason;

.field public static final enum ALREADY_LOCKED:Lio/milton/http/LockResult$FailureReason;

.field public static final enum PRECONDITION_FAILED:Lio/milton/http/LockResult$FailureReason;


# instance fields
.field public status:Lio/milton/http/Response$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lio/milton/http/LockResult$FailureReason;

    sget-object v1, Lio/milton/http/Response$Status;->SC_LOCKED:Lio/milton/http/Response$Status;

    const-string v2, "ALREADY_LOCKED"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lio/milton/http/LockResult$FailureReason;-><init>(Ljava/lang/String;ILio/milton/http/Response$Status;)V

    sput-object v0, Lio/milton/http/LockResult$FailureReason;->ALREADY_LOCKED:Lio/milton/http/LockResult$FailureReason;

    new-instance v2, Lio/milton/http/LockResult$FailureReason;

    const-string v4, "PRECONDITION_FAILED"

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5, v1}, Lio/milton/http/LockResult$FailureReason;-><init>(Ljava/lang/String;ILio/milton/http/Response$Status;)V

    sput-object v2, Lio/milton/http/LockResult$FailureReason;->PRECONDITION_FAILED:Lio/milton/http/LockResult$FailureReason;

    const/4 v1, 0x2

    new-array v1, v1, [Lio/milton/http/LockResult$FailureReason;

    aput-object v0, v1, v3

    aput-object v2, v1, v5

    sput-object v1, Lio/milton/http/LockResult$FailureReason;->$VALUES:[Lio/milton/http/LockResult$FailureReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILio/milton/http/Response$Status;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/http/Response$Status;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lio/milton/http/LockResult$FailureReason;->status:Lio/milton/http/Response$Status;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/milton/http/LockResult$FailureReason;
    .locals 1

    const-class v0, Lio/milton/http/LockResult$FailureReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/milton/http/LockResult$FailureReason;

    return-object p0
.end method

.method public static values()[Lio/milton/http/LockResult$FailureReason;
    .locals 1

    sget-object v0, Lio/milton/http/LockResult$FailureReason;->$VALUES:[Lio/milton/http/LockResult$FailureReason;

    invoke-virtual {v0}, [Lio/milton/http/LockResult$FailureReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/milton/http/LockResult$FailureReason;

    return-object v0
.end method
