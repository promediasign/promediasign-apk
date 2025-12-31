.class public final enum Lio/milton/property/PropertyAuthoriser$PropertyPermission;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/milton/property/PropertyAuthoriser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PropertyPermission"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/milton/property/PropertyAuthoriser$PropertyPermission;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/milton/property/PropertyAuthoriser$PropertyPermission;

.field public static final enum READ:Lio/milton/property/PropertyAuthoriser$PropertyPermission;

.field public static final enum WRITE:Lio/milton/property/PropertyAuthoriser$PropertyPermission;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lio/milton/property/PropertyAuthoriser$PropertyPermission;

    const-string v1, "READ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/milton/property/PropertyAuthoriser$PropertyPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/milton/property/PropertyAuthoriser$PropertyPermission;->READ:Lio/milton/property/PropertyAuthoriser$PropertyPermission;

    new-instance v1, Lio/milton/property/PropertyAuthoriser$PropertyPermission;

    const-string v3, "WRITE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/milton/property/PropertyAuthoriser$PropertyPermission;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/milton/property/PropertyAuthoriser$PropertyPermission;->WRITE:Lio/milton/property/PropertyAuthoriser$PropertyPermission;

    const/4 v3, 0x2

    new-array v3, v3, [Lio/milton/property/PropertyAuthoriser$PropertyPermission;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lio/milton/property/PropertyAuthoriser$PropertyPermission;->$VALUES:[Lio/milton/property/PropertyAuthoriser$PropertyPermission;

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

.method public static valueOf(Ljava/lang/String;)Lio/milton/property/PropertyAuthoriser$PropertyPermission;
    .locals 1

    const-class v0, Lio/milton/property/PropertyAuthoriser$PropertyPermission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/milton/property/PropertyAuthoriser$PropertyPermission;

    return-object p0
.end method

.method public static values()[Lio/milton/property/PropertyAuthoriser$PropertyPermission;
    .locals 1

    sget-object v0, Lio/milton/property/PropertyAuthoriser$PropertyPermission;->$VALUES:[Lio/milton/property/PropertyAuthoriser$PropertyPermission;

    invoke-virtual {v0}, [Lio/milton/property/PropertyAuthoriser$PropertyPermission;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/milton/property/PropertyAuthoriser$PropertyPermission;

    return-object v0
.end method
