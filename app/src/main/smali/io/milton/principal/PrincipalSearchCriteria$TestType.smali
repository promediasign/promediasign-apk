.class public final enum Lio/milton/principal/PrincipalSearchCriteria$TestType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/milton/principal/PrincipalSearchCriteria$TestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/milton/principal/PrincipalSearchCriteria$TestType;

.field public static final enum ALL:Lio/milton/principal/PrincipalSearchCriteria$TestType;

.field public static final enum ANY:Lio/milton/principal/PrincipalSearchCriteria$TestType;


# instance fields
.field private code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lio/milton/principal/PrincipalSearchCriteria$TestType;

    const/4 v1, 0x0

    const-string v2, "anyof"

    const-string v3, "ANY"

    invoke-direct {v0, v3, v1, v2}, Lio/milton/principal/PrincipalSearchCriteria$TestType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/milton/principal/PrincipalSearchCriteria$TestType;->ANY:Lio/milton/principal/PrincipalSearchCriteria$TestType;

    new-instance v2, Lio/milton/principal/PrincipalSearchCriteria$TestType;

    const/4 v3, 0x1

    const-string v4, "allof"

    const-string v5, "ALL"

    invoke-direct {v2, v5, v3, v4}, Lio/milton/principal/PrincipalSearchCriteria$TestType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lio/milton/principal/PrincipalSearchCriteria$TestType;->ALL:Lio/milton/principal/PrincipalSearchCriteria$TestType;

    const/4 v4, 0x2

    new-array v4, v4, [Lio/milton/principal/PrincipalSearchCriteria$TestType;

    aput-object v0, v4, v1

    aput-object v2, v4, v3

    sput-object v4, Lio/milton/principal/PrincipalSearchCriteria$TestType;->$VALUES:[Lio/milton/principal/PrincipalSearchCriteria$TestType;

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

    iput-object p3, p0, Lio/milton/principal/PrincipalSearchCriteria$TestType;->code:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/milton/principal/PrincipalSearchCriteria$TestType;
    .locals 1

    const-class v0, Lio/milton/principal/PrincipalSearchCriteria$TestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/milton/principal/PrincipalSearchCriteria$TestType;

    return-object p0
.end method

.method public static values()[Lio/milton/principal/PrincipalSearchCriteria$TestType;
    .locals 1

    sget-object v0, Lio/milton/principal/PrincipalSearchCriteria$TestType;->$VALUES:[Lio/milton/principal/PrincipalSearchCriteria$TestType;

    invoke-virtual {v0}, [Lio/milton/principal/PrincipalSearchCriteria$TestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/milton/principal/PrincipalSearchCriteria$TestType;

    return-object v0
.end method
