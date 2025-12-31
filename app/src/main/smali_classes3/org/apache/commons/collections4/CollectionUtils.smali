.class public abstract Lorg/apache/commons/collections4/CollectionUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY_COLLECTION:Ljava/util/Collection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lorg/apache/commons/collections4/collection/UnmodifiableCollection;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections4/CollectionUtils;->EMPTY_COLLECTION:Ljava/util/Collection;

    return-void
.end method
