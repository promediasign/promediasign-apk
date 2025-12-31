.class Landroidx/appcompat/view/SupportMenuInflater$InflatedOnMenuItemClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/SupportMenuInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InflatedOnMenuItemClickListener"
.end annotation


# static fields
.field private static final PARAM_TYPES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mMethod:Ljava/lang/reflect/Method;

.field private mRealOwner:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/view/MenuItem;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Landroidx/appcompat/view/SupportMenuInflater$InflatedOnMenuItemClickListener;->PARAM_TYPES:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/appcompat/view/SupportMenuInflater$InflatedOnMenuItemClickListener;->mRealOwner:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :try_start_0
    sget-object v0, Landroidx/appcompat/view/SupportMenuInflater$InflatedOnMenuItemClickListener;->PARAM_TYPES:[Ljava/lang/Class;

    .line 11
    .line 12
    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$InflatedOnMenuItemClickListener;->mMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    return-void

    .line 19
    :catch_0
    move-exception v0

    .line 20
    new-instance v1, Landroid/view/InflateException;

    .line 21
    .line 22
    const-string v2, "Couldn\'t resolve menu item onClick handler "

    .line 23
    .line 24
    const-string v3, " in class "

    .line 25
    .line 26
    invoke-static {v2, p2, v3}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {v1, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 45
    .line 46
    .line 47
    throw v1
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Landroidx/appcompat/view/SupportMenuInflater$InflatedOnMenuItemClickListener;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroidx/appcompat/view/SupportMenuInflater$InflatedOnMenuItemClickListener;->mMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Landroidx/appcompat/view/SupportMenuInflater$InflatedOnMenuItemClickListener;->mRealOwner:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroidx/appcompat/view/SupportMenuInflater$InflatedOnMenuItemClickListener;->mMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Landroidx/appcompat/view/SupportMenuInflater$InflatedOnMenuItemClickListener;->mRealOwner:Ljava/lang/Object;

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
