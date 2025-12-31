.class public Lorg/jdom/IllegalTargetException;
.super Ljava/lang/IllegalArgumentException;
.source "SourceFile"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: IllegalTargetException.java,v $ $Revision: 1.15 $ $Date: 2007/11/10 05:28:59 $ $Name:  $"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "The target \""

    const-string v1, "\" is not legal for JDOM/XML Processing Instructions: "

    const-string v2, "."

    .line 2
    invoke-static {v0, p1, v1, p2, v2}, LA/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-void
.end method
