.class public final enum Lio/milton/ldap/Condition$Operator;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/milton/ldap/Condition$Operator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/milton/ldap/Condition$Operator;

.field public static final enum And:Lio/milton/ldap/Condition$Operator;

.field public static final enum Contains:Lio/milton/ldap/Condition$Operator;

.field public static final enum IsEqualTo:Lio/milton/ldap/Condition$Operator;

.field public static final enum IsFalse:Lio/milton/ldap/Condition$Operator;

.field public static final enum IsGreaterThan:Lio/milton/ldap/Condition$Operator;

.field public static final enum IsGreaterThanOrEqualTo:Lio/milton/ldap/Condition$Operator;

.field public static final enum IsLessThan:Lio/milton/ldap/Condition$Operator;

.field public static final enum IsLessThanOrEqualTo:Lio/milton/ldap/Condition$Operator;

.field public static final enum IsNull:Lio/milton/ldap/Condition$Operator;

.field public static final enum IsTrue:Lio/milton/ldap/Condition$Operator;

.field public static final enum Like:Lio/milton/ldap/Condition$Operator;

.field public static final enum Not:Lio/milton/ldap/Condition$Operator;

.field public static final enum Or:Lio/milton/ldap/Condition$Operator;

.field public static final enum StartsWith:Lio/milton/ldap/Condition$Operator;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lio/milton/ldap/Condition$Operator;

    const-string v1, "Or"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/milton/ldap/Condition$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/milton/ldap/Condition$Operator;->Or:Lio/milton/ldap/Condition$Operator;

    new-instance v1, Lio/milton/ldap/Condition$Operator;

    const-string v3, "And"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/milton/ldap/Condition$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/milton/ldap/Condition$Operator;->And:Lio/milton/ldap/Condition$Operator;

    new-instance v3, Lio/milton/ldap/Condition$Operator;

    const-string v5, "Not"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/milton/ldap/Condition$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/milton/ldap/Condition$Operator;->Not:Lio/milton/ldap/Condition$Operator;

    new-instance v5, Lio/milton/ldap/Condition$Operator;

    const-string v7, "IsEqualTo"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/milton/ldap/Condition$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/milton/ldap/Condition$Operator;->IsEqualTo:Lio/milton/ldap/Condition$Operator;

    new-instance v7, Lio/milton/ldap/Condition$Operator;

    const-string v9, "IsGreaterThan"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/milton/ldap/Condition$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/milton/ldap/Condition$Operator;->IsGreaterThan:Lio/milton/ldap/Condition$Operator;

    new-instance v9, Lio/milton/ldap/Condition$Operator;

    const-string v11, "IsGreaterThanOrEqualTo"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lio/milton/ldap/Condition$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lio/milton/ldap/Condition$Operator;->IsGreaterThanOrEqualTo:Lio/milton/ldap/Condition$Operator;

    new-instance v11, Lio/milton/ldap/Condition$Operator;

    const-string v13, "IsLessThan"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lio/milton/ldap/Condition$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lio/milton/ldap/Condition$Operator;->IsLessThan:Lio/milton/ldap/Condition$Operator;

    new-instance v13, Lio/milton/ldap/Condition$Operator;

    const-string v15, "IsLessThanOrEqualTo"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lio/milton/ldap/Condition$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lio/milton/ldap/Condition$Operator;->IsLessThanOrEqualTo:Lio/milton/ldap/Condition$Operator;

    new-instance v15, Lio/milton/ldap/Condition$Operator;

    const-string v14, "IsNull"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lio/milton/ldap/Condition$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lio/milton/ldap/Condition$Operator;->IsNull:Lio/milton/ldap/Condition$Operator;

    new-instance v14, Lio/milton/ldap/Condition$Operator;

    const-string v12, "IsTrue"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lio/milton/ldap/Condition$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lio/milton/ldap/Condition$Operator;->IsTrue:Lio/milton/ldap/Condition$Operator;

    new-instance v12, Lio/milton/ldap/Condition$Operator;

    const-string v10, "IsFalse"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lio/milton/ldap/Condition$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lio/milton/ldap/Condition$Operator;->IsFalse:Lio/milton/ldap/Condition$Operator;

    new-instance v10, Lio/milton/ldap/Condition$Operator;

    const-string v8, "Like"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lio/milton/ldap/Condition$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lio/milton/ldap/Condition$Operator;->Like:Lio/milton/ldap/Condition$Operator;

    new-instance v8, Lio/milton/ldap/Condition$Operator;

    const-string v6, "StartsWith"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lio/milton/ldap/Condition$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lio/milton/ldap/Condition$Operator;->StartsWith:Lio/milton/ldap/Condition$Operator;

    new-instance v6, Lio/milton/ldap/Condition$Operator;

    const-string v4, "Contains"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lio/milton/ldap/Condition$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lio/milton/ldap/Condition$Operator;->Contains:Lio/milton/ldap/Condition$Operator;

    const/16 v4, 0xe

    new-array v4, v4, [Lio/milton/ldap/Condition$Operator;

    const/16 v16, 0x0

    aput-object v0, v4, v16

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    aput-object v6, v4, v2

    sput-object v4, Lio/milton/ldap/Condition$Operator;->$VALUES:[Lio/milton/ldap/Condition$Operator;

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

.method public static valueOf(Ljava/lang/String;)Lio/milton/ldap/Condition$Operator;
    .locals 1

    const-class v0, Lio/milton/ldap/Condition$Operator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/milton/ldap/Condition$Operator;

    return-object p0
.end method

.method public static values()[Lio/milton/ldap/Condition$Operator;
    .locals 1

    sget-object v0, Lio/milton/ldap/Condition$Operator;->$VALUES:[Lio/milton/ldap/Condition$Operator;

    invoke-virtual {v0}, [Lio/milton/ldap/Condition$Operator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/milton/ldap/Condition$Operator;

    return-object v0
.end method
