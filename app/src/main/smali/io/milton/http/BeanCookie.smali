.class public Lio/milton/http/BeanCookie;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/Cookie;


# instance fields
.field private expiry:I

.field private httpOnly:Z

.field private final name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private value:Ljava/lang/String;

.field private version:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/http/BeanCookie;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/milton/http/BeanCookie;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setExpiry(I)V
    .locals 0

    iput p1, p0, Lio/milton/http/BeanCookie;->expiry:I

    return-void
.end method

.method public setHttpOnly(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/milton/http/BeanCookie;->httpOnly:Z

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/milton/http/BeanCookie;->path:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/milton/http/BeanCookie;->value:Ljava/lang/String;

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    iput p1, p0, Lio/milton/http/BeanCookie;->version:I

    return-void
.end method
