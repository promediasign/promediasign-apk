.class public final enum Lsk/mimac/slideshow/exception/ApiException$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/exception/ApiException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsk/mimac/slideshow/exception/ApiException$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsk/mimac/slideshow/exception/ApiException$Type;

.field public static final enum BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

.field public static final enum FORBIDDEN:Lsk/mimac/slideshow/exception/ApiException$Type;

.field public static final enum INTERNAL_SERVER_ERROR:Lsk/mimac/slideshow/exception/ApiException$Type;

.field public static final enum NOT_FOUND:Lsk/mimac/slideshow/exception/ApiException$Type;


# instance fields
.field private final code:I


# direct methods
.method private static synthetic $values()[Lsk/mimac/slideshow/exception/ApiException$Type;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lsk/mimac/slideshow/exception/ApiException$Type;

    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->FORBIDDEN:Lsk/mimac/slideshow/exception/ApiException$Type;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->NOT_FOUND:Lsk/mimac/slideshow/exception/ApiException$Type;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->INTERNAL_SERVER_ERROR:Lsk/mimac/slideshow/exception/ApiException$Type;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lsk/mimac/slideshow/exception/ApiException$Type;

    const/4 v1, 0x0

    const/16 v2, 0x190

    const-string v3, "BAD_REQUEST"

    invoke-direct {v0, v3, v1, v2}, Lsk/mimac/slideshow/exception/ApiException$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    new-instance v0, Lsk/mimac/slideshow/exception/ApiException$Type;

    const/4 v1, 0x1

    const/16 v2, 0x193

    const-string v3, "FORBIDDEN"

    invoke-direct {v0, v3, v1, v2}, Lsk/mimac/slideshow/exception/ApiException$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsk/mimac/slideshow/exception/ApiException$Type;->FORBIDDEN:Lsk/mimac/slideshow/exception/ApiException$Type;

    new-instance v0, Lsk/mimac/slideshow/exception/ApiException$Type;

    const/4 v1, 0x2

    const/16 v2, 0x194

    const-string v3, "NOT_FOUND"

    invoke-direct {v0, v3, v1, v2}, Lsk/mimac/slideshow/exception/ApiException$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsk/mimac/slideshow/exception/ApiException$Type;->NOT_FOUND:Lsk/mimac/slideshow/exception/ApiException$Type;

    new-instance v0, Lsk/mimac/slideshow/exception/ApiException$Type;

    const/4 v1, 0x3

    const/16 v2, 0x1f4

    const-string v3, "INTERNAL_SERVER_ERROR"

    invoke-direct {v0, v3, v1, v2}, Lsk/mimac/slideshow/exception/ApiException$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsk/mimac/slideshow/exception/ApiException$Type;->INTERNAL_SERVER_ERROR:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-static {}, Lsk/mimac/slideshow/exception/ApiException$Type;->$values()[Lsk/mimac/slideshow/exception/ApiException$Type;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/exception/ApiException$Type;->$VALUES:[Lsk/mimac/slideshow/exception/ApiException$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lsk/mimac/slideshow/exception/ApiException$Type;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/exception/ApiException$Type;
    .locals 1

    const-class v0, Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsk/mimac/slideshow/exception/ApiException$Type;

    return-object p0
.end method

.method public static values()[Lsk/mimac/slideshow/exception/ApiException$Type;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/exception/ApiException$Type;->$VALUES:[Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-virtual {v0}, [Lsk/mimac/slideshow/exception/ApiException$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsk/mimac/slideshow/exception/ApiException$Type;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/exception/ApiException$Type;->code:I

    return v0
.end method
