.class public Lio/milton/http/values/PriviledgeListValueWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/values/ValueWriter;


# static fields
.field private static final priviledgeToStringMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/milton/resource/AccessControlledResource$Priviledge;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lio/milton/http/values/PriviledgeListValueWriter;->initPriviledgeToStringMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/milton/http/values/PriviledgeListValueWriter;->priviledgeToStringMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static initPriviledgeToStringMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lio/milton/resource/AccessControlledResource$Priviledge;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lio/milton/resource/AccessControlledResource$Priviledge;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lio/milton/resource/AccessControlledResource$Priviledge;->READ:Lio/milton/resource/AccessControlledResource$Priviledge;

    const-string v2, "read"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lio/milton/resource/AccessControlledResource$Priviledge;->WRITE:Lio/milton/resource/AccessControlledResource$Priviledge;

    const-string v2, "write"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lio/milton/resource/AccessControlledResource$Priviledge;->READ_ACL:Lio/milton/resource/AccessControlledResource$Priviledge;

    const-string v2, "read-acl"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lio/milton/resource/AccessControlledResource$Priviledge;->WRITE_ACL:Lio/milton/resource/AccessControlledResource$Priviledge;

    const-string v2, "write-acl"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lio/milton/resource/AccessControlledResource$Priviledge;->UNLOCK:Lio/milton/resource/AccessControlledResource$Priviledge;

    const-string v2, "unlock"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lio/milton/resource/AccessControlledResource$Priviledge;->READ_CURRENT_USER_PRIVILEDGE:Lio/milton/resource/AccessControlledResource$Priviledge;

    const-string v2, "read-current-user-privilege-set"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lio/milton/resource/AccessControlledResource$Priviledge;->WRITE_PROPERTIES:Lio/milton/resource/AccessControlledResource$Priviledge;

    const-string v2, "write-properties"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lio/milton/resource/AccessControlledResource$Priviledge;->WRITE_CONTENT:Lio/milton/resource/AccessControlledResource$Priviledge;

    const-string v2, "write-content"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lio/milton/resource/AccessControlledResource$Priviledge;->BIND:Lio/milton/resource/AccessControlledResource$Priviledge;

    const-string v2, "bind"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lio/milton/resource/AccessControlledResource$Priviledge;->UNBIND:Lio/milton/resource/AccessControlledResource$Priviledge;

    const-string v2, "unbind"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lio/milton/resource/AccessControlledResource$Priviledge;->ALL:Lio/milton/resource/AccessControlledResource$Priviledge;

    const-string v2, "all"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not supported yet."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public supports(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 0

    const-class p1, Lio/milton/principal/PriviledgeList;

    invoke-virtual {p1, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public writeValue(Lio/milton/http/XmlWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/http/XmlWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p5, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Value is not correct type. Is a: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
