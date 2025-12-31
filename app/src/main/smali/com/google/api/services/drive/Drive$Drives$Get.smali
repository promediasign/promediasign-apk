.class public Lcom/google/api/services/drive/Drive$Drives$Get;
.super Lcom/google/api/services/drive/DriveRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/drive/Drive$Drives;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Get"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/drive/DriveRequest<",
        "Lcom/google/api/services/drive/model/Drive;",
        ">;"
    }
.end annotation


# instance fields
.field private driveId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/drive/Drive$Drives;

.field private useDomainAdminAccess:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/api/services/drive/Drive$Drives;Ljava/lang/String;)V
    .locals 6

    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Drives$Get;->this$1:Lcom/google/api/services/drive/Drive$Drives;

    iget-object v1, p1, Lcom/google/api/services/drive/Drive$Drives;->this$0:Lcom/google/api/services/drive/Drive;

    const/4 v4, 0x0

    const-class v5, Lcom/google/api/services/drive/model/Drive;

    const-string v2, "GET"

    const-string v3, "drives/{driveId}"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/drive/DriveRequest;-><init>(Lcom/google/api/services/drive/Drive;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    const-string p1, "Required parameter driveId must be specified."

    invoke-static {p2, p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Drives$Get;->driveId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public buildHttpRequestUsingHead()Lcom/google/api/client/http/HttpRequest;
    .locals 1

    invoke-super {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->buildHttpRequestUsingHead()Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public executeUsingHead()Lcom/google/api/client/http/HttpResponse;
    .locals 1

    invoke-super {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->executeUsingHead()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDriveId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Drives$Get;->driveId:Ljava/lang/String;

    return-object v0
.end method

.method public getUseDomainAdminAccess()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Drives$Get;->useDomainAdminAccess:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isUseDomainAdminAccess()Z
    .locals 2

    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Drives$Get;->useDomainAdminAccess:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/google/api/client/util/Data;->NULL_BOOLEAN:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Drives$Get;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Drives$Get;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Drives$Get;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Drives$Get;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Drives$Get;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Drives$Get;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Drives$Get;
    .locals 0

    .line 4
    invoke-super {p0, p1, p2}, Lcom/google/api/services/drive/DriveRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/Drive$Drives$Get;

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/DriveRequest;
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Drives$Get;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Drives$Get;

    move-result-object p1

    return-object p1
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Drives$Get;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/Drive$Drives$Get;

    return-object p1
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Drives$Get;->setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Drives$Get;

    move-result-object p1

    return-object p1
.end method

.method public setDriveId(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Drives$Get;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Drives$Get;->driveId:Ljava/lang/String;

    return-object p0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Drives$Get;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/Drive$Drives$Get;

    return-object p1
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Drives$Get;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Drives$Get;

    move-result-object p1

    return-object p1
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Drives$Get;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/Drive$Drives$Get;

    return-object p1
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Drives$Get;->setKey(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Drives$Get;

    move-result-object p1

    return-object p1
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Drives$Get;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/Drive$Drives$Get;

    return-object p1
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Drives$Get;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Drives$Get;

    move-result-object p1

    return-object p1
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Drives$Get;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/Drive$Drives$Get;

    return-object p1
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/DriveRequest;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Drives$Get;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Drives$Get;

    move-result-object p1

    return-object p1
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Drives$Get;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/Drive$Drives$Get;

    return-object p1
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Drives$Get;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Drives$Get;

    move-result-object p1

    return-object p1
.end method

.method public setUseDomainAdminAccess(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Drives$Get;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Drives$Get;->useDomainAdminAccess:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Drives$Get;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/Drive$Drives$Get;

    return-object p1
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Drives$Get;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Drives$Get;

    move-result-object p1

    return-object p1
.end method
