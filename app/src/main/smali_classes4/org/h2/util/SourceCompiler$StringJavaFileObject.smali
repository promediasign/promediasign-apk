.class Lorg/h2/util/SourceCompiler$StringJavaFileObject;
.super Ljavax/tools/SimpleJavaFileObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/util/SourceCompiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringJavaFileObject"
.end annotation


# instance fields
.field private final sourceCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "string:///"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljavax/tools/JavaFileObject$Kind;->SOURCE:Ljavax/tools/JavaFileObject$Kind;

    iget-object p1, p1, Ljavax/tools/JavaFileObject$Kind;->extension:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    sget-object v0, Ljavax/tools/JavaFileObject$Kind;->SOURCE:Ljavax/tools/JavaFileObject$Kind;

    invoke-direct {p0, p1, v0}, Ljavax/tools/SimpleJavaFileObject;-><init>(Ljava/net/URI;Ljavax/tools/JavaFileObject$Kind;)V

    iput-object p2, p0, Lorg/h2/util/SourceCompiler$StringJavaFileObject;->sourceCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCharContent(Z)Ljava/lang/CharSequence;
    .locals 0

    iget-object p1, p0, Lorg/h2/util/SourceCompiler$StringJavaFileObject;->sourceCode:Ljava/lang/String;

    return-object p1
.end method
