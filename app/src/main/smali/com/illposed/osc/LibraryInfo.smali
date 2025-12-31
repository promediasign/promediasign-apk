.class public abstract Lcom/illposed/osc/LibraryInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final UNINTERESTING_PKGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Package;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "java.lang"

    invoke-static {v1}, Ljava/lang/Package;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "java.util"

    invoke-static {v1}, Ljava/lang/Package;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/illposed/osc/LibraryInfo;->hasAwtColor()Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Ljava/awt/Color;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    const-class v1, Lcom/illposed/osc/argument/OSCImpulse;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/illposed/osc/LibraryInfo;->UNINTERESTING_PKGS:Ljava/util/Set;

    return-void
.end method

.method public static hasAwtColor()Z
    .locals 1

    :try_start_0
    sget-object v0, Ljava/awt/Color;->white:Ljava/awt/Color;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static hasStandardProtocolFamily()Z
    .locals 1

    :try_start_0
    const-string v0, "java.net.StandardProtocolFamily"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method
