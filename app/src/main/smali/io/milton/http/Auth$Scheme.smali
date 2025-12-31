.class public final enum Lio/milton/http/Auth$Scheme;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/milton/http/Auth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Scheme"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/milton/http/Auth$Scheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/milton/http/Auth$Scheme;

.field public static final enum BASIC:Lio/milton/http/Auth$Scheme;

.field public static final enum BEARER:Lio/milton/http/Auth$Scheme;

.field public static final enum DIGEST:Lio/milton/http/Auth$Scheme;

.field public static final enum FORM:Lio/milton/http/Auth$Scheme;

.field public static final enum NEGOTIATE:Lio/milton/http/Auth$Scheme;

.field public static final enum NTLM:Lio/milton/http/Auth$Scheme;

.field public static final enum OAUTH:Lio/milton/http/Auth$Scheme;

.field public static final enum SESSION:Lio/milton/http/Auth$Scheme;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lio/milton/http/Auth$Scheme;

    const-string v1, "BASIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/milton/http/Auth$Scheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/milton/http/Auth$Scheme;->BASIC:Lio/milton/http/Auth$Scheme;

    new-instance v1, Lio/milton/http/Auth$Scheme;

    const-string v3, "DIGEST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/milton/http/Auth$Scheme;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/milton/http/Auth$Scheme;->DIGEST:Lio/milton/http/Auth$Scheme;

    new-instance v3, Lio/milton/http/Auth$Scheme;

    const-string v5, "NEGOTIATE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/milton/http/Auth$Scheme;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/milton/http/Auth$Scheme;->NEGOTIATE:Lio/milton/http/Auth$Scheme;

    new-instance v5, Lio/milton/http/Auth$Scheme;

    const-string v7, "FORM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/milton/http/Auth$Scheme;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/milton/http/Auth$Scheme;->FORM:Lio/milton/http/Auth$Scheme;

    new-instance v7, Lio/milton/http/Auth$Scheme;

    const-string v9, "SESSION"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/milton/http/Auth$Scheme;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/milton/http/Auth$Scheme;->SESSION:Lio/milton/http/Auth$Scheme;

    new-instance v9, Lio/milton/http/Auth$Scheme;

    const-string v11, "NTLM"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lio/milton/http/Auth$Scheme;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lio/milton/http/Auth$Scheme;->NTLM:Lio/milton/http/Auth$Scheme;

    new-instance v11, Lio/milton/http/Auth$Scheme;

    const-string v13, "OAUTH"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lio/milton/http/Auth$Scheme;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lio/milton/http/Auth$Scheme;->OAUTH:Lio/milton/http/Auth$Scheme;

    new-instance v13, Lio/milton/http/Auth$Scheme;

    const-string v15, "BEARER"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lio/milton/http/Auth$Scheme;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lio/milton/http/Auth$Scheme;->BEARER:Lio/milton/http/Auth$Scheme;

    const/16 v15, 0x8

    new-array v15, v15, [Lio/milton/http/Auth$Scheme;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lio/milton/http/Auth$Scheme;->$VALUES:[Lio/milton/http/Auth$Scheme;

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

.method public static valueOf(Ljava/lang/String;)Lio/milton/http/Auth$Scheme;
    .locals 1

    const-class v0, Lio/milton/http/Auth$Scheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/milton/http/Auth$Scheme;

    return-object p0
.end method

.method public static values()[Lio/milton/http/Auth$Scheme;
    .locals 1

    sget-object v0, Lio/milton/http/Auth$Scheme;->$VALUES:[Lio/milton/http/Auth$Scheme;

    invoke-virtual {v0}, [Lio/milton/http/Auth$Scheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/milton/http/Auth$Scheme;

    return-object v0
.end method
