.class final enum Lcom/dropbox/core/android/AuthActivity$TokenType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/android/AuthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TokenType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/android/AuthActivity$TokenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/android/AuthActivity$TokenType;

.field public static final enum OAUTH2:Lcom/dropbox/core/android/AuthActivity$TokenType;

.field public static final enum OAUTH2CODE:Lcom/dropbox/core/android/AuthActivity$TokenType;


# instance fields
.field private string:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/dropbox/core/android/AuthActivity$TokenType;

    const/4 v1, 0x0

    const-string v2, "oauth2:"

    const-string v3, "OAUTH2"

    invoke-direct {v0, v3, v1, v2}, Lcom/dropbox/core/android/AuthActivity$TokenType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dropbox/core/android/AuthActivity$TokenType;->OAUTH2:Lcom/dropbox/core/android/AuthActivity$TokenType;

    new-instance v2, Lcom/dropbox/core/android/AuthActivity$TokenType;

    const/4 v3, 0x1

    const-string v4, "oauth2code:"

    const-string v5, "OAUTH2CODE"

    invoke-direct {v2, v5, v3, v4}, Lcom/dropbox/core/android/AuthActivity$TokenType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/dropbox/core/android/AuthActivity$TokenType;->OAUTH2CODE:Lcom/dropbox/core/android/AuthActivity$TokenType;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/dropbox/core/android/AuthActivity$TokenType;

    aput-object v0, v4, v1

    aput-object v2, v4, v3

    sput-object v4, Lcom/dropbox/core/android/AuthActivity$TokenType;->$VALUES:[Lcom/dropbox/core/android/AuthActivity$TokenType;

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

    iput-object p3, p0, Lcom/dropbox/core/android/AuthActivity$TokenType;->string:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/android/AuthActivity$TokenType;->string:Ljava/lang/String;

    return-object v0
.end method
