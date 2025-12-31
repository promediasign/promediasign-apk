.class public Lsk/mimac/slideshow/config/model/UserType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/simpleframework/xml/Namespace;
    reference = "http://slideshow.digital/configuration/v4_9"
.end annotation

.annotation runtime Lorg/simpleframework/xml/Root;
    name = "UserType"
.end annotation


# instance fields
.field private id:J
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "id"
        required = true
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "name"
        required = true
    .end annotation
.end field

.field private password:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "password"
        required = true
    .end annotation
.end field

.field private role:Lsk/mimac/slideshow/config/model/UserRoleType;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "role"
        required = true
    .end annotation
.end field

.field private username:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "username"
        required = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    iget-wide v0, p0, Lsk/mimac/slideshow/config/model/UserType;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/UserType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/UserType;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()Lsk/mimac/slideshow/config/model/UserRoleType;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/UserType;->role:Lsk/mimac/slideshow/config/model/UserRoleType;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/UserType;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setId(J)V
    .locals 0

    iput-wide p1, p0, Lsk/mimac/slideshow/config/model/UserType;->id:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/UserType;->name:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/UserType;->password:Ljava/lang/String;

    return-void
.end method

.method public setRole(Lsk/mimac/slideshow/config/model/UserRoleType;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/UserType;->role:Lsk/mimac/slideshow/config/model/UserRoleType;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/UserType;->username:Ljava/lang/String;

    return-void
.end method
