.class Lorg/apache/xmlbeans/impl/inst2xsd/util/Type$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/common/PrefixResolver;


# instance fields
.field private final synthetic this$0:Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

.field private final synthetic val$xc:Lorg/apache/xmlbeans/XmlCursor;


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;Lorg/apache/xmlbeans/XmlCursor;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type$1;->this$0:Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type$1;->val$xc:Lorg/apache/xmlbeans/XmlCursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type$1;->val$xc:Lorg/apache/xmlbeans/XmlCursor;

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/XmlCursor;->namespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
