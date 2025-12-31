.class public final Lcom/google/android/gms/common/internal/zaz;
.super Lcom/google/android/gms/dynamic/RemoteCreator;
.source "SourceFile"


# static fields
.field private static final zaa:Lcom/google/android/gms/common/internal/zaz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/zaz;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/zaz;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/zaz;->zaa:Lcom/google/android/gms/common/internal/zaz;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.common.ui.SignInButtonCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/RemoteCreator;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zaa(Landroid/content/Context;II)Landroid/view/View;
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/common/internal/zaz;->zaa:Lcom/google/android/gms/common/internal/zaz;

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Lcom/google/android/gms/common/internal/zax;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v1, v2, p1, p2, v3}, Lcom/google/android/gms/common/internal/zax;-><init>(III[Lcom/google/android/gms/common/api/Scope;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0, p0}, Lcom/google/android/gms/dynamic/RemoteCreator;->getRemoteCreatorInstance(Landroid/content/Context;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lcom/google/android/gms/common/internal/zam;

    .line 19
    .line 20
    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/common/internal/zam;->zae(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/common/internal/zax;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    return-object p0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    new-instance v0, Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException;

    .line 33
    .line 34
    const-string v1, "Could not get button with size "

    .line 35
    .line 36
    const-string v2, " and color "

    .line 37
    .line 38
    invoke-static {v1, p1, v2, p2}, LA/g;->f(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    throw v0
.end method


# virtual methods
.method public final synthetic getRemoteCreator(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.common.internal.ISignInButtonCreator"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/common/internal/zam;

    if-eqz v1, :cond_1

    move-object p1, v0

    check-cast p1, Lcom/google/android/gms/common/internal/zam;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/internal/zam;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/internal/zam;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
