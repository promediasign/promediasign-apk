.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "cttrackchangec317type"

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, LA/g;->s(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    .line 12
    .line 13
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract getAuthor()Ljava/lang/String;
.end method

.method public abstract getDate()Ljava/util/Calendar;
.end method

.method public abstract isSetDate()Z
.end method

.method public abstract setAuthor(Ljava/lang/String;)V
.end method

.method public abstract setDate(Ljava/util/Calendar;)V
.end method

.method public abstract unsetDate()V
.end method

.method public abstract xgetAuthor()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STString;
.end method

.method public abstract xgetDate()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDateTime;
.end method

.method public abstract xsetAuthor(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STString;)V
.end method

.method public abstract xsetDate(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDateTime;)V
.end method
