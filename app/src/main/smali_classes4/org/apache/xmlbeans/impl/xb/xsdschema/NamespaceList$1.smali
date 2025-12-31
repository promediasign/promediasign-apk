.class synthetic Lorg/apache/xmlbeans/impl/xb/xsdschema/NamespaceList$1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static synthetic class$org$apache$xmlbeans$impl$xb$xsdschema$NamespaceList:Ljava/lang/Class;

.field static synthetic class$org$apache$xmlbeans$impl$xb$xsdschema$NamespaceList$Member:Ljava/lang/Class;

.field static synthetic class$org$apache$xmlbeans$impl$xb$xsdschema$NamespaceList$Member2:Ljava/lang/Class;

.field static synthetic class$org$apache$xmlbeans$impl$xb$xsdschema$NamespaceList$Member2$Item:Ljava/lang/Class;

.field static synthetic class$org$apache$xmlbeans$impl$xb$xsdschema$NamespaceList$Member2$Item$Member:Ljava/lang/Class;


# direct methods
.method public static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    invoke-static {p0}, Lorg/apache/ftpserver/main/a;->q(Ljava/lang/ClassNotFoundException;)Ljava/lang/Throwable;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    throw p0
.end method
