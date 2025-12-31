.class public Lio/milton/http/HandlerHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final authenticationService:Lio/milton/http/AuthenticationService;

.field private enableExpectContinue:Z

.field private final storageCheckers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/milton/http/quota/StorageChecker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/HandlerHelper;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/HandlerHelper;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lio/milton/http/AuthenticationService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/milton/http/HandlerHelper;->enableExpectContinue:Z

    iput-object p1, p0, Lio/milton/http/HandlerHelper;->authenticationService:Lio/milton/http/AuthenticationService;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/milton/http/HandlerHelper;->storageCheckers:Ljava/util/List;

    new-instance v0, Lio/milton/http/quota/DefaultStorageChecker;

    invoke-direct {v0}, Lio/milton/http/quota/DefaultStorageChecker;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public checkAuthentication(Lio/milton/http/HttpManager;Lio/milton/resource/Resource;Lio/milton/http/Request;)Lio/milton/http/AuthenticationService$AuthStatus;
    .locals 1

    sget-object p1, Lio/milton/http/HandlerHelper;->log:Lorg/slf4j/Logger;

    const-string v0, "checkAuthentication"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    iget-object v0, p0, Lio/milton/http/HandlerHelper;->authenticationService:Lio/milton/http/AuthenticationService;

    invoke-virtual {v0, p2, p3}, Lio/milton/http/AuthenticationService;->authenticate(Lio/milton/resource/Resource;Lio/milton/http/Request;)Lio/milton/http/AuthenticationService$AuthStatus;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "checkAuthentication: null authStatus"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "checkAuthentication: authStatus.failed ="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p2, Lio/milton/http/AuthenticationService$AuthStatus;->loginFailed:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-object p2
.end method

.method public checkAuthorisation(Lio/milton/http/HttpManager;Lio/milton/resource/Resource;Lio/milton/http/Request;)Z
    .locals 7

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lio/milton/http/HandlerHelper;->checkAuthentication(Lio/milton/http/HttpManager;Lio/milton/resource/Resource;Lio/milton/http/Request;)Lio/milton/http/AuthenticationService$AuthStatus;

    move-result-object v0

    sget-object v1, Lio/milton/http/HandlerHelper;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkAuthorisation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lio/milton/http/AuthenticationService$AuthStatus;->loginFailed:Z

    if-eqz v2, :cond_0

    const-string p1, "checkAuthorisation: loginFailed"

    invoke-interface {v1, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz v0, :cond_1

    const-string v2, "checkAuthorisation: got auth object"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    iget-object v0, v0, Lio/milton/http/AuthenticationService$AuthStatus;->auth:Lio/milton/http/Auth;

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_1
    const-string v0, "checkAuthorisation: authStatus is null, no authentication was attempted"

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-interface {p3}, Lio/milton/http/Request;->getMethod()Lio/milton/http/Request$Method;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lio/milton/http/HandlerHelper;->checkAuthorisation(Lio/milton/http/HttpManager;Lio/milton/resource/Resource;Lio/milton/http/Request;Lio/milton/http/Request$Method;Lio/milton/http/Auth;)Z

    move-result p1

    return p1
.end method

.method public checkAuthorisation(Lio/milton/http/HttpManager;Lio/milton/resource/Resource;Lio/milton/http/Request;Lio/milton/http/Request$Method;Lio/milton/http/Auth;)Z
    .locals 1

    .line 2
    invoke-interface {p2, p3, p4, p5}, Lio/milton/resource/Resource;->authorise(Lio/milton/http/Request;Lio/milton/http/Request$Method;Lio/milton/http/Auth;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lio/milton/http/HandlerHelper;->log:Lorg/slf4j/Logger;

    invoke-interface {p1}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result p4

    if-eqz p4, :cond_0

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "authorisation declined, requesting authentication: "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p3}, Lio/milton/http/Request;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ". resource type: "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_0
    if-eqz p5, :cond_1

    invoke-interface {p1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "  - auth: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5}, Lio/milton/http/Auth;->getUser()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " tag: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lio/milton/http/Auth;->getTag()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p2, "  - anonymous request rejected"

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1

    :cond_3
    sget-object p1, Lio/milton/http/HandlerHelper;->log:Lorg/slf4j/Logger;

    const-string p2, "checkAuthorisation: request permitted"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public checkExpects(Lio/milton/http/http11/Http11ResponseHandler;Lio/milton/http/Request;Lio/milton/http/Response;)Z
    .locals 4

    const/4 p1, 0x0

    iget-boolean v0, p0, Lio/milton/http/HandlerHelper;->enableExpectContinue:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lio/milton/http/Request;->getExpectHeader()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lio/milton/http/HandlerHelper;->log:Lorg/slf4j/Logger;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "checkExpects"

    aput-object v3, v2, p1

    aput-object p2, v2, v1

    invoke-static {v0, v2}, Lio/milton/common/LogUtils;->trace(Lorg/slf4j/Logger;[Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_0

    sget-object p2, Lio/milton/http/Response$Status;->SC_CONTINUE:Lio/milton/http/Response$Status;

    invoke-interface {p3, p2}, Lio/milton/http/Response;->setStatus(Lio/milton/http/Response$Status;)V

    return p1

    :cond_0
    return v1
.end method

.method public checkStorageOnAdd(Lio/milton/http/Request;Lio/milton/resource/CollectionResource;Lio/milton/common/Path;Ljava/lang/String;)Lio/milton/http/quota/StorageChecker$StorageErrorReason;
    .locals 3

    iget-object v0, p0, Lio/milton/http/HandlerHelper;->storageCheckers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/milton/http/quota/StorageChecker;

    invoke-interface {v1, p1, p2, p3, p4}, Lio/milton/http/quota/StorageChecker;->checkStorageOnAdd(Lio/milton/http/Request;Lio/milton/resource/CollectionResource;Lio/milton/common/Path;Ljava/lang/String;)Lio/milton/http/quota/StorageChecker$StorageErrorReason;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object p1, Lio/milton/http/HandlerHelper;->log:Lorg/slf4j/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "insufficient storage reason: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " reported by: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-object v2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public checkStorageOnReplace(Lio/milton/http/Request;Lio/milton/resource/CollectionResource;Lio/milton/resource/Resource;Ljava/lang/String;)Lio/milton/http/quota/StorageChecker$StorageErrorReason;
    .locals 3

    iget-object v0, p0, Lio/milton/http/HandlerHelper;->storageCheckers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/milton/http/quota/StorageChecker;

    invoke-interface {v1, p1, p2, p3, p4}, Lio/milton/http/quota/StorageChecker;->checkStorageOnReplace(Lio/milton/http/Request;Lio/milton/resource/CollectionResource;Lio/milton/resource/Resource;Ljava/lang/String;)Lio/milton/http/quota/StorageChecker$StorageErrorReason;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object p1, Lio/milton/http/HandlerHelper;->log:Lorg/slf4j/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "insufficient storage reason: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " reported by: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-object v2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public doCheckRedirect(Lio/milton/http/http11/Http11ResponseHandler;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)Z
    .locals 1

    invoke-interface {p4, p2}, Lio/milton/resource/Resource;->checkRedirect(Lio/milton/http/Request;)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1, p3, p2, p4}, Lio/milton/http/http11/Http11ResponseHandler;->respondRedirect(Lio/milton/http/Response;Lio/milton/http/Request;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isLocked(Lio/milton/resource/Resource;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Lio/milton/resource/LockableResource;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lio/milton/resource/LockableResource;

    invoke-interface {p1}, Lio/milton/resource/LockableResource;->getCurrentLock()Lio/milton/http/LockToken;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public isLockedOut(Lio/milton/http/Request;Lio/milton/resource/Resource;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_8

    .line 3
    .line 4
    instance-of v1, p2, Lio/milton/resource/LockableResource;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto/16 :goto_2

    .line 9
    .line 10
    :cond_0
    check-cast p2, Lio/milton/resource/LockableResource;

    .line 11
    .line 12
    invoke-interface {p2}, Lio/milton/resource/LockableResource;->getCurrentLock()Lio/milton/http/LockToken;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    if-eqz p2, :cond_8

    .line 17
    .line 18
    invoke-interface {p1}, Lio/milton/http/Request;->getAuthorization()Lio/milton/http/Auth;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1}, Lio/milton/http/Auth;->getUser()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v2, 0x0

    .line 30
    :goto_0
    iget-object v3, p2, Lio/milton/http/LockToken;->info:Lio/milton/http/LockInfo;

    .line 31
    .line 32
    if-nez v3, :cond_2

    .line 33
    .line 34
    sget-object p1, Lio/milton/http/HandlerHelper;->log:Lorg/slf4j/Logger;

    .line 35
    .line 36
    const-string p2, "Found a lock on this resource, but it has no info property so is ignored"

    .line 37
    .line 38
    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return v0

    .line 42
    :cond_2
    iget-object v3, v3, Lio/milton/http/LockInfo;->lockedByUser:Ljava/lang/String;

    .line 43
    .line 44
    if-nez v3, :cond_3

    .line 45
    .line 46
    sget-object p1, Lio/milton/http/HandlerHelper;->log:Lorg/slf4j/Logger;

    .line 47
    .line 48
    const-string p2, "Resource is locked with a null user. Ignoring the lock"

    .line 49
    .line 50
    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return v0

    .line 54
    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-nez v4, :cond_8

    .line 59
    .line 60
    sget-object v4, Lio/milton/http/HandlerHelper;->log:Lorg/slf4j/Logger;

    .line 61
    .line 62
    invoke-interface {v4}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-eqz v5, :cond_5

    .line 67
    .line 68
    const-string v5, "lock owned by: "

    .line 69
    .line 70
    if-nez v1, :cond_4

    .line 71
    .line 72
    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-interface {v4, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_4
    const-string v6, " not by "

    .line 81
    .line 82
    invoke-static {v5, v3, v6}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v1}, Lio/milton/http/Auth;->getUser()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-interface {v4, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :cond_5
    :goto_1
    invoke-interface {p1}, Lio/milton/http/Request;->getIfHeader()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    if-eqz v1, :cond_6

    .line 105
    .line 106
    iget-object v5, p2, Lio/milton/http/LockToken;->tokenId:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    if-eqz v5, :cond_6

    .line 113
    .line 114
    const-string p1, "Request contains valid If lock-token so operation is permitted"

    .line 115
    .line 116
    invoke-interface {v4, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    return v0

    .line 120
    :cond_6
    invoke-interface {p1}, Lio/milton/http/Request;->getLockTokenHeader()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    if-eqz p1, :cond_7

    .line 125
    .line 126
    iget-object v5, p2, Lio/milton/http/LockToken;->tokenId:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    if-eqz v5, :cond_7

    .line 133
    .line 134
    const-string p1, "Request contains valid lock-token so operation is permitted"

    .line 135
    .line 136
    invoke-interface {v4, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    return v0

    .line 140
    :cond_7
    const-string v0, "Locked out. ifHeader="

    .line 141
    .line 142
    const-string v5, " lock-token header="

    .line 143
    .line 144
    const-string v6, ", but actual token: "

    .line 145
    .line 146
    invoke-static {v0, v1, v5, p1, v6}, Lorg/apache/ftpserver/main/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    iget-object p2, p2, Lio/milton/http/LockToken;->tokenId:Ljava/lang/String;

    .line 151
    .line 152
    const-string v0, " LockedByUser="

    .line 153
    .line 154
    const-string v1, " RequestUser="

    .line 155
    .line 156
    invoke-static {p1, p2, v0, v3, v1}, LA/g;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-interface {v4, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    const/4 p1, 0x1

    .line 170
    return p1

    .line 171
    :cond_8
    :goto_2
    return v0
.end method

.method public isNotCompatible(Lio/milton/resource/Resource;Lio/milton/http/Request$Method;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public missingLock(Lio/milton/http/Request;Lio/milton/resource/Resource;)Z
    .locals 0

    invoke-interface {p1}, Lio/milton/http/Request;->getIfHeader()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "(<DAV:no-lock>)"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lio/milton/http/HandlerHelper;->log:Lorg/slf4j/Logger;

    const-string p2, "Contained valid token. so is unlocked"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setEnableExpectContinue(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/milton/http/HandlerHelper;->enableExpectContinue:Z

    return-void
.end method
