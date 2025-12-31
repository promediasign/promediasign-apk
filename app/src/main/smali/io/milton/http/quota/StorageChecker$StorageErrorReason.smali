.class public final enum Lio/milton/http/quota/StorageChecker$StorageErrorReason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/milton/http/quota/StorageChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StorageErrorReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/milton/http/quota/StorageChecker$StorageErrorReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/milton/http/quota/StorageChecker$StorageErrorReason;

.field public static final enum SER_DISK_FULL:Lio/milton/http/quota/StorageChecker$StorageErrorReason;

.field public static final enum SER_QUOTA_EXCEEDED:Lio/milton/http/quota/StorageChecker$StorageErrorReason;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lio/milton/http/quota/StorageChecker$StorageErrorReason;

    const-string v1, "SER_QUOTA_EXCEEDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/milton/http/quota/StorageChecker$StorageErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/milton/http/quota/StorageChecker$StorageErrorReason;->SER_QUOTA_EXCEEDED:Lio/milton/http/quota/StorageChecker$StorageErrorReason;

    new-instance v1, Lio/milton/http/quota/StorageChecker$StorageErrorReason;

    const-string v3, "SER_DISK_FULL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/milton/http/quota/StorageChecker$StorageErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/milton/http/quota/StorageChecker$StorageErrorReason;->SER_DISK_FULL:Lio/milton/http/quota/StorageChecker$StorageErrorReason;

    const/4 v3, 0x2

    new-array v3, v3, [Lio/milton/http/quota/StorageChecker$StorageErrorReason;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lio/milton/http/quota/StorageChecker$StorageErrorReason;->$VALUES:[Lio/milton/http/quota/StorageChecker$StorageErrorReason;

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

.method public static valueOf(Ljava/lang/String;)Lio/milton/http/quota/StorageChecker$StorageErrorReason;
    .locals 1

    const-class v0, Lio/milton/http/quota/StorageChecker$StorageErrorReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/milton/http/quota/StorageChecker$StorageErrorReason;

    return-object p0
.end method

.method public static values()[Lio/milton/http/quota/StorageChecker$StorageErrorReason;
    .locals 1

    sget-object v0, Lio/milton/http/quota/StorageChecker$StorageErrorReason;->$VALUES:[Lio/milton/http/quota/StorageChecker$StorageErrorReason;

    invoke-virtual {v0}, [Lio/milton/http/quota/StorageChecker$StorageErrorReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/milton/http/quota/StorageChecker$StorageErrorReason;

    return-object v0
.end method
