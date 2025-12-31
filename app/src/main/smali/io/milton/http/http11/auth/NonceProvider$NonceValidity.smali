.class public final enum Lio/milton/http/http11/auth/NonceProvider$NonceValidity;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/milton/http/http11/auth/NonceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NonceValidity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/milton/http/http11/auth/NonceProvider$NonceValidity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/milton/http/http11/auth/NonceProvider$NonceValidity;

.field public static final enum EXPIRED:Lio/milton/http/http11/auth/NonceProvider$NonceValidity;

.field public static final enum INVALID:Lio/milton/http/http11/auth/NonceProvider$NonceValidity;

.field public static final enum OK:Lio/milton/http/http11/auth/NonceProvider$NonceValidity;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lio/milton/http/http11/auth/NonceProvider$NonceValidity;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/milton/http/http11/auth/NonceProvider$NonceValidity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/milton/http/http11/auth/NonceProvider$NonceValidity;->OK:Lio/milton/http/http11/auth/NonceProvider$NonceValidity;

    new-instance v1, Lio/milton/http/http11/auth/NonceProvider$NonceValidity;

    const-string v3, "EXPIRED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/milton/http/http11/auth/NonceProvider$NonceValidity;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/milton/http/http11/auth/NonceProvider$NonceValidity;->EXPIRED:Lio/milton/http/http11/auth/NonceProvider$NonceValidity;

    new-instance v3, Lio/milton/http/http11/auth/NonceProvider$NonceValidity;

    const-string v5, "INVALID"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/milton/http/http11/auth/NonceProvider$NonceValidity;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/milton/http/http11/auth/NonceProvider$NonceValidity;->INVALID:Lio/milton/http/http11/auth/NonceProvider$NonceValidity;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/milton/http/http11/auth/NonceProvider$NonceValidity;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lio/milton/http/http11/auth/NonceProvider$NonceValidity;->$VALUES:[Lio/milton/http/http11/auth/NonceProvider$NonceValidity;

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

.method public static valueOf(Ljava/lang/String;)Lio/milton/http/http11/auth/NonceProvider$NonceValidity;
    .locals 1

    const-class v0, Lio/milton/http/http11/auth/NonceProvider$NonceValidity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/milton/http/http11/auth/NonceProvider$NonceValidity;

    return-object p0
.end method

.method public static values()[Lio/milton/http/http11/auth/NonceProvider$NonceValidity;
    .locals 1

    sget-object v0, Lio/milton/http/http11/auth/NonceProvider$NonceValidity;->$VALUES:[Lio/milton/http/http11/auth/NonceProvider$NonceValidity;

    invoke-virtual {v0}, [Lio/milton/http/http11/auth/NonceProvider$NonceValidity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/milton/http/http11/auth/NonceProvider$NonceValidity;

    return-object v0
.end method
