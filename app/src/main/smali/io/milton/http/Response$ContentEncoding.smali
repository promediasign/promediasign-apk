.class public final enum Lio/milton/http/Response$ContentEncoding;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/milton/http/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentEncoding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/milton/http/Response$ContentEncoding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/milton/http/Response$ContentEncoding;

.field public static final enum GZIP:Lio/milton/http/Response$ContentEncoding;


# instance fields
.field public code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lio/milton/http/Response$ContentEncoding;

    const/4 v1, 0x0

    const-string v2, "gzip"

    const-string v3, "GZIP"

    invoke-direct {v0, v3, v1, v2}, Lio/milton/http/Response$ContentEncoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/milton/http/Response$ContentEncoding;->GZIP:Lio/milton/http/Response$ContentEncoding;

    const/4 v2, 0x1

    new-array v2, v2, [Lio/milton/http/Response$ContentEncoding;

    aput-object v0, v2, v1

    sput-object v2, Lio/milton/http/Response$ContentEncoding;->$VALUES:[Lio/milton/http/Response$ContentEncoding;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lio/milton/http/Response$ContentEncoding;->code:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/milton/http/Response$ContentEncoding;
    .locals 1

    const-class v0, Lio/milton/http/Response$ContentEncoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/milton/http/Response$ContentEncoding;

    return-object p0
.end method

.method public static values()[Lio/milton/http/Response$ContentEncoding;
    .locals 1

    sget-object v0, Lio/milton/http/Response$ContentEncoding;->$VALUES:[Lio/milton/http/Response$ContentEncoding;

    invoke-virtual {v0}, [Lio/milton/http/Response$ContentEncoding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/milton/http/Response$ContentEncoding;

    return-object v0
.end method
