.class public Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity;
.super Lorg/mozilla/javascript/tools/shell/SecurityProxy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$ContextPermissions;,
        Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$Loader;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/mozilla/javascript/tools/shell/SecurityProxy;-><init>()V

    new-instance v0, Ljava/security/CodeSource;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Ljava/security/CodeSource;-><init>(Ljava/net/URL;[Ljava/security/cert/Certificate;)V

    return-void
.end method

.method public static synthetic access$000(Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity;Ljava/lang/String;)Ljava/net/URL;
    .locals 0

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity;->getUrlObj(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity;Ljava/net/URL;)Ljava/security/ProtectionDomain;
    .locals 0

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity;->getUrlDomain(Ljava/net/URL;)Ljava/security/ProtectionDomain;

    move-result-object p0

    return-object p0
.end method

.method private getDynamicDomain(Ljava/security/ProtectionDomain;)Ljava/security/ProtectionDomain;
    .locals 2

    new-instance v0, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$ContextPermissions;

    invoke-direct {v0, p1}, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$ContextPermissions;-><init>(Ljava/security/ProtectionDomain;)V

    new-instance p1, Ljava/security/ProtectionDomain;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, Ljava/security/ProtectionDomain;-><init>(Ljava/security/CodeSource;Ljava/security/PermissionCollection;)V

    return-object p1
.end method

.method private getUrlDomain(Ljava/net/URL;)Ljava/security/ProtectionDomain;
    .locals 2

    new-instance v0, Ljava/security/CodeSource;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/security/CodeSource;-><init>(Ljava/net/URL;[Ljava/security/cert/Certificate;)V

    invoke-static {}, Ljava/security/Policy;->getPolicy()Ljava/security/Policy;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/security/Policy;->getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;

    move-result-object p1

    new-instance v1, Ljava/security/ProtectionDomain;

    invoke-direct {v1, v0, p1}, Ljava/security/ProtectionDomain;-><init>(Ljava/security/CodeSource;Ljava/security/PermissionCollection;)V

    return-object v1
.end method

.method private getUrlObj(Ljava/lang/String;)Ljava/net/URL;
    .locals 4

    .line 1
    const-string v0, "file:"

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljava/net/URL;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    nop

    .line 10
    const-string v1, "user.dir"

    .line 11
    .line 12
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/16 v2, 0x5c

    .line 17
    .line 18
    const/16 v3, 0x2f

    .line 19
    .line 20
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "/"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_0

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    :cond_0
    :try_start_1
    new-instance v2, Ljava/net/URL;

    .line 37
    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance v1, Ljava/net/URL;

    .line 54
    .line 55
    invoke-direct {v1, v2, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 56
    .line 57
    .line 58
    :goto_0
    return-object v1

    .line 59
    :catch_1
    move-exception v0

    .line 60
    new-instance v1, Ljava/lang/RuntimeException;

    .line 61
    .line 62
    const-string v2, "Can not construct file URL for \'"

    .line 63
    .line 64
    const-string v3, "\':"

    .line 65
    .line 66
    invoke-static {v2, p1, v3}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw v1
.end method


# virtual methods
.method public callProcessFileSecure(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$1;-><init>(Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void
.end method

.method public callWithDomain(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Ljava/security/ProtectionDomain;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity;->getDynamicDomain(Ljava/security/ProtectionDomain;)Ljava/security/ProtectionDomain;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/security/ProtectionDomain;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance p1, Ljava/security/AccessControlContext;

    invoke-direct {p1, v0}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;)V

    new-instance v0, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$3;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$3;-><init>(Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V

    invoke-static {v0, p1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createClassLoader(Ljava/lang/ClassLoader;Ljava/lang/Object;)Lorg/mozilla/javascript/GeneratedClassLoader;
    .locals 1

    check-cast p2, Ljava/security/ProtectionDomain;

    new-instance v0, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$2;

    invoke-direct {v0, p0, p1, p2}, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$2;-><init>(Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity;Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/GeneratedClassLoader;

    return-object p1
.end method

.method public getDynamicSecurityDomain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/security/ProtectionDomain;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity;->getDynamicDomain(Ljava/security/ProtectionDomain;)Ljava/security/ProtectionDomain;

    move-result-object p1

    return-object p1
.end method

.method public getStaticSecurityDomainClassInternal()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-class v0, Ljava/security/ProtectionDomain;

    return-object v0
.end method
