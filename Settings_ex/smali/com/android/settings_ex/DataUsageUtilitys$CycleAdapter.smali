.class public Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DataUsageUtilitys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageUtilitys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CycleAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings_ex/DataUsageUtilitys$CycleItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mChangeItem:Lcom/android/settings_ex/DataUsageUtilitys$CycleChangeItem;

.field private mChangePossible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 504
    const v0, 0x7f04006f

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 499
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;->mChangePossible:Z

    .line 505
    const v0, 0x7f040070

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;->setDropDownViewResource(I)V

    .line 506
    new-instance v0, Lcom/android/settings_ex/DataUsageUtilitys$CycleChangeItem;

    invoke-direct {v0, p1}, Lcom/android/settings_ex/DataUsageUtilitys$CycleChangeItem;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;->mChangeItem:Lcom/android/settings_ex/DataUsageUtilitys$CycleChangeItem;

    .line 507
    return-void
.end method

.method private updateChange()V
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;->mChangeItem:Lcom/android/settings_ex/DataUsageUtilitys$CycleChangeItem;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;->remove(Ljava/lang/Object;)V

    .line 516
    iget-boolean v0, p0, Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;->mChangePossible:Z

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;->mChangeItem:Lcom/android/settings_ex/DataUsageUtilitys$CycleChangeItem;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;->add(Ljava/lang/Object;)V

    .line 519
    :cond_0
    return-void
.end method


# virtual methods
.method public findNearestPosition(Lcom/android/settings_ex/DataUsageUtilitys$CycleItem;)I
    .locals 4
    .param p1, "target"    # Lcom/android/settings_ex/DataUsageUtilitys$CycleItem;

    .prologue
    .line 526
    if-eqz p1, :cond_2

    .line 527
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;->getCount()I

    move-result v0

    .line 528
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 529
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/DataUsageUtilitys$CycleItem;

    .line 530
    .local v2, "item":Lcom/android/settings_ex/DataUsageUtilitys$CycleItem;
    instance-of v3, v2, Lcom/android/settings_ex/DataUsageUtilitys$CycleChangeItem;

    if-eqz v3, :cond_1

    .line 528
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 532
    :cond_1
    invoke-virtual {v2, p1}, Lcom/android/settings_ex/DataUsageUtilitys$CycleItem;->compareTo(Lcom/android/settings_ex/DataUsageUtilitys$CycleItem;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 537
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/android/settings_ex/DataUsageUtilitys$CycleItem;
    :goto_1
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setChangePossible(Z)V
    .locals 0
    .param p1, "possible"    # Z

    .prologue
    .line 510
    iput-boolean p1, p0, Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;->mChangePossible:Z

    .line 511
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageUtilitys$CycleAdapter;->updateChange()V

    .line 512
    return-void
.end method
