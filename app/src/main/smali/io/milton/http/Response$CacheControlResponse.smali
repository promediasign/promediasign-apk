.class public final enum Lio/milton/http/Response$CacheControlResponse;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/milton/http/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CacheControlResponse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/milton/http/Response$CacheControlResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/milton/http/Response$CacheControlResponse;

.field public static final enum CACHE_EXT:Lio/milton/http/Response$CacheControlResponse;

.field public static final enum MAX_AGE:Lio/milton/http/Response$CacheControlResponse;

.field public static final enum MUST_REVALIDATE:Lio/milton/http/Response$CacheControlResponse;

.field public static final enum NO_CACHE:Lio/milton/http/Response$CacheControlResponse;

.field public static final enum NO_STORE:Lio/milton/http/Response$CacheControlResponse;

.field public static final enum NO_TRANSFORM:Lio/milton/http/Response$CacheControlResponse;

.field public static final enum PRIVATE:Lio/milton/http/Response$CacheControlResponse;

.field public static final enum PROXY_REVALIDATE:Lio/milton/http/Response$CacheControlResponse;

.field public static final enum PUBLIC:Lio/milton/http/Response$CacheControlResponse;

.field public static final enum S_MAX_AGE:Lio/milton/http/Response$CacheControlResponse;


# instance fields
.field public code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lio/milton/http/Response$CacheControlResponse;

    const/4 v1, 0x0

    const-string v2, "public"

    const-string v3, "PUBLIC"

    invoke-direct {v0, v3, v1, v2}, Lio/milton/http/Response$CacheControlResponse;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/milton/http/Response$CacheControlResponse;->PUBLIC:Lio/milton/http/Response$CacheControlResponse;

    new-instance v2, Lio/milton/http/Response$CacheControlResponse;

    const/4 v3, 0x1

    const-string v4, "private"

    const-string v5, "PRIVATE"

    invoke-direct {v2, v5, v3, v4}, Lio/milton/http/Response$CacheControlResponse;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lio/milton/http/Response$CacheControlResponse;->PRIVATE:Lio/milton/http/Response$CacheControlResponse;

    new-instance v4, Lio/milton/http/Response$CacheControlResponse;

    const/4 v5, 0x2

    const-string v6, "no-cache"

    const-string v7, "NO_CACHE"

    invoke-direct {v4, v7, v5, v6}, Lio/milton/http/Response$CacheControlResponse;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lio/milton/http/Response$CacheControlResponse;->NO_CACHE:Lio/milton/http/Response$CacheControlResponse;

    new-instance v6, Lio/milton/http/Response$CacheControlResponse;

    const/4 v7, 0x3

    const-string v8, "no-store"

    const-string v9, "NO_STORE"

    invoke-direct {v6, v9, v7, v8}, Lio/milton/http/Response$CacheControlResponse;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lio/milton/http/Response$CacheControlResponse;->NO_STORE:Lio/milton/http/Response$CacheControlResponse;

    new-instance v8, Lio/milton/http/Response$CacheControlResponse;

    const/4 v9, 0x4

    const-string v10, "no-transform"

    const-string v11, "NO_TRANSFORM"

    invoke-direct {v8, v11, v9, v10}, Lio/milton/http/Response$CacheControlResponse;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lio/milton/http/Response$CacheControlResponse;->NO_TRANSFORM:Lio/milton/http/Response$CacheControlResponse;

    new-instance v10, Lio/milton/http/Response$CacheControlResponse;

    const/4 v11, 0x5

    const-string v12, "must-revalidate"

    const-string v13, "MUST_REVALIDATE"

    invoke-direct {v10, v13, v11, v12}, Lio/milton/http/Response$CacheControlResponse;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lio/milton/http/Response$CacheControlResponse;->MUST_REVALIDATE:Lio/milton/http/Response$CacheControlResponse;

    new-instance v12, Lio/milton/http/Response$CacheControlResponse;

    const/4 v13, 0x6

    const-string v14, "proxy-revalidate"

    const-string v15, "PROXY_REVALIDATE"

    invoke-direct {v12, v15, v13, v14}, Lio/milton/http/Response$CacheControlResponse;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lio/milton/http/Response$CacheControlResponse;->PROXY_REVALIDATE:Lio/milton/http/Response$CacheControlResponse;

    new-instance v14, Lio/milton/http/Response$CacheControlResponse;

    const/4 v15, 0x7

    const-string v13, "max-age"

    const-string v11, "MAX_AGE"

    invoke-direct {v14, v11, v15, v13}, Lio/milton/http/Response$CacheControlResponse;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lio/milton/http/Response$CacheControlResponse;->MAX_AGE:Lio/milton/http/Response$CacheControlResponse;

    new-instance v11, Lio/milton/http/Response$CacheControlResponse;

    const/16 v13, 0x8

    const-string v15, "s-maxage"

    const-string v9, "S_MAX_AGE"

    invoke-direct {v11, v9, v13, v15}, Lio/milton/http/Response$CacheControlResponse;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lio/milton/http/Response$CacheControlResponse;->S_MAX_AGE:Lio/milton/http/Response$CacheControlResponse;

    new-instance v9, Lio/milton/http/Response$CacheControlResponse;

    const/16 v15, 0x9

    const-string v13, "cache-extension"

    const-string v7, "CACHE_EXT"

    invoke-direct {v9, v7, v15, v13}, Lio/milton/http/Response$CacheControlResponse;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lio/milton/http/Response$CacheControlResponse;->CACHE_EXT:Lio/milton/http/Response$CacheControlResponse;

    const/16 v7, 0xa

    new-array v7, v7, [Lio/milton/http/Response$CacheControlResponse;

    aput-object v0, v7, v1

    aput-object v2, v7, v3

    aput-object v4, v7, v5

    const/4 v0, 0x3

    aput-object v6, v7, v0

    const/4 v0, 0x4

    aput-object v8, v7, v0

    const/4 v0, 0x5

    aput-object v10, v7, v0

    const/4 v0, 0x6

    aput-object v12, v7, v0

    const/4 v0, 0x7

    aput-object v14, v7, v0

    const/16 v0, 0x8

    aput-object v11, v7, v0

    aput-object v9, v7, v15

    sput-object v7, Lio/milton/http/Response$CacheControlResponse;->$VALUES:[Lio/milton/http/Response$CacheControlResponse;

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

    iput-object p3, p0, Lio/milton/http/Response$CacheControlResponse;->code:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/milton/http/Response$CacheControlResponse;
    .locals 1

    const-class v0, Lio/milton/http/Response$CacheControlResponse;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/milton/http/Response$CacheControlResponse;

    return-object p0
.end method

.method public static values()[Lio/milton/http/Response$CacheControlResponse;
    .locals 1

    sget-object v0, Lio/milton/http/Response$CacheControlResponse;->$VALUES:[Lio/milton/http/Response$CacheControlResponse;

    invoke-virtual {v0}, [Lio/milton/http/Response$CacheControlResponse;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/milton/http/Response$CacheControlResponse;

    return-object v0
.end method
