.class public Lio/milton/property/PropertyAuthoriser$CheckResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/milton/property/PropertyAuthoriser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckResult"
.end annotation


# instance fields
.field private final description:Ljava/lang/String;

.field private final field:Ljavax/xml/namespace/QName;

.field private final resource:Lio/milton/resource/Resource;

.field private final status:Lio/milton/http/Response$Status;


# direct methods
.method public constructor <init>(Ljavax/xml/namespace/QName;Lio/milton/http/Response$Status;Ljava/lang/String;Lio/milton/resource/Resource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/property/PropertyAuthoriser$CheckResult;->field:Ljavax/xml/namespace/QName;

    iput-object p2, p0, Lio/milton/property/PropertyAuthoriser$CheckResult;->status:Lio/milton/http/Response$Status;

    iput-object p3, p0, Lio/milton/property/PropertyAuthoriser$CheckResult;->description:Ljava/lang/String;

    iput-object p4, p0, Lio/milton/property/PropertyAuthoriser$CheckResult;->resource:Lio/milton/resource/Resource;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/milton/property/PropertyAuthoriser$CheckResult;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getField()Ljavax/xml/namespace/QName;
    .locals 1

    iget-object v0, p0, Lio/milton/property/PropertyAuthoriser$CheckResult;->field:Ljavax/xml/namespace/QName;

    return-object v0
.end method

.method public getStatus()Lio/milton/http/Response$Status;
    .locals 1

    iget-object v0, p0, Lio/milton/property/PropertyAuthoriser$CheckResult;->status:Lio/milton/http/Response$Status;

    return-object v0
.end method
