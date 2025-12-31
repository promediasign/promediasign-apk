.class public final enum Lio/milton/http/Response$ContentType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/milton/http/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/milton/http/Response$ContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/milton/http/Response$ContentType;

.field public static final enum HTTP:Lio/milton/http/Response$ContentType;

.field public static final enum IMAGE_JPG:Lio/milton/http/Response$ContentType;

.field public static final enum MULTIPART:Lio/milton/http/Response$ContentType;

.field public static final enum XML:Lio/milton/http/Response$ContentType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lio/milton/http/Response$ContentType;

    const-string v1, "HTTP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/milton/http/Response$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/milton/http/Response$ContentType;->HTTP:Lio/milton/http/Response$ContentType;

    new-instance v1, Lio/milton/http/Response$ContentType;

    const-string v3, "MULTIPART"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/milton/http/Response$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/milton/http/Response$ContentType;->MULTIPART:Lio/milton/http/Response$ContentType;

    new-instance v3, Lio/milton/http/Response$ContentType;

    const-string v5, "IMAGE_JPG"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/milton/http/Response$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/milton/http/Response$ContentType;->IMAGE_JPG:Lio/milton/http/Response$ContentType;

    new-instance v5, Lio/milton/http/Response$ContentType;

    const-string v7, "XML"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/milton/http/Response$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/milton/http/Response$ContentType;->XML:Lio/milton/http/Response$ContentType;

    const/4 v7, 0x4

    new-array v7, v7, [Lio/milton/http/Response$ContentType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lio/milton/http/Response$ContentType;->$VALUES:[Lio/milton/http/Response$ContentType;

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

.method public static valueOf(Ljava/lang/String;)Lio/milton/http/Response$ContentType;
    .locals 1

    const-class v0, Lio/milton/http/Response$ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/milton/http/Response$ContentType;

    return-object p0
.end method

.method public static values()[Lio/milton/http/Response$ContentType;
    .locals 1

    sget-object v0, Lio/milton/http/Response$ContentType;->$VALUES:[Lio/milton/http/Response$ContentType;

    invoke-virtual {v0}, [Lio/milton/http/Response$ContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/milton/http/Response$ContentType;

    return-object v0
.end method
