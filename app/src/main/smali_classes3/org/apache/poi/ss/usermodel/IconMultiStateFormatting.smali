.class public interface abstract Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;
    }
.end annotation


# virtual methods
.method public abstract createThreshold()Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold;
.end method

.method public abstract getIconSet()Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;
.end method

.method public abstract getThresholds()[Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold;
.end method

.method public abstract isIconOnly()Z
.end method

.method public abstract isReversed()Z
.end method

.method public abstract setIconOnly(Z)V
.end method

.method public abstract setIconSet(Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;)V
.end method

.method public abstract setReversed(Z)V
.end method

.method public abstract setThresholds([Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold;)V
.end method
