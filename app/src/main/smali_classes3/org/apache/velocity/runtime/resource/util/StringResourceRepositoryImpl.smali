.class public Lorg/apache/velocity/runtime/resource/util/StringResourceRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/velocity/runtime/resource/util/StringResourceRepository;


# instance fields
.field private encoding:Ljava/lang/String;

.field protected resources:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, LA/g;->r()Ljava/util/Map;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lorg/apache/velocity/runtime/resource/util/StringResourceRepositoryImpl;->resources:Ljava/util/Map;

    .line 9
    .line 10
    const-string v0, "UTF-8"

    .line 11
    .line 12
    iput-object v0, p0, Lorg/apache/velocity/runtime/resource/util/StringResourceRepositoryImpl;->encoding:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public getEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/util/StringResourceRepositoryImpl;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getStringResource(Ljava/lang/String;)Lorg/apache/velocity/runtime/resource/util/StringResource;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/util/StringResourceRepositoryImpl;->resources:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/velocity/runtime/resource/util/StringResource;

    return-object p1
.end method

.method public putStringResource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/util/StringResourceRepositoryImpl;->resources:Ljava/util/Map;

    new-instance v1, Lorg/apache/velocity/runtime/resource/util/StringResource;

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/resource/util/StringResourceRepositoryImpl;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Lorg/apache/velocity/runtime/resource/util/StringResource;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putStringResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/util/StringResourceRepositoryImpl;->resources:Ljava/util/Map;

    new-instance v1, Lorg/apache/velocity/runtime/resource/util/StringResource;

    invoke-direct {v1, p2, p3}, Lorg/apache/velocity/runtime/resource/util/StringResource;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeStringResource(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/util/StringResourceRepositoryImpl;->resources:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/velocity/runtime/resource/util/StringResourceRepositoryImpl;->encoding:Ljava/lang/String;

    return-void
.end method
