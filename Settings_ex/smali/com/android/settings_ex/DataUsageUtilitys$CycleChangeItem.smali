.class public Lcom/android/settings_ex/DataUsageUtilitys$CycleChangeItem;
.super Lcom/android/settings_ex/DataUsageUtilitys$CycleItem;
.source "DataUsageUtilitys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageUtilitys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CycleChangeItem"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 494
    const v0, 0x7f0c086d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/DataUsageUtilitys$CycleItem;-><init>(Ljava/lang/CharSequence;)V

    .line 495
    return-void
.end method
