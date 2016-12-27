.class Lcom/android/settings_ex/DataUsageSummary$RestrictBackgroundThread;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RestrictBackgroundThread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRestrictBackground:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "restrictBackground"    # Z

    .prologue
    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$RestrictBackgroundThread;->mContext:Landroid/content/Context;

    .line 326
    iput-boolean p2, p0, Lcom/android/settings_ex/DataUsageSummary$RestrictBackgroundThread;->mRestrictBackground:Z

    .line 327
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 331
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$RestrictBackgroundThread;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$RestrictBackgroundThread;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings_ex/DataUsageUtilitys;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/DataUsageUtilitys;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/DataUsageUtilitys;->getPolicyManager()Landroid/net/NetworkPolicyManager;

    move-result-object v0

    .line 334
    .local v0, "policyManager":Landroid/net/NetworkPolicyManager;
    if-eqz v0, :cond_0

    .line 335
    iget-boolean v1, p0, Lcom/android/settings_ex/DataUsageSummary$RestrictBackgroundThread;->mRestrictBackground:Z

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 339
    .end local v0    # "policyManager":Landroid/net/NetworkPolicyManager;
    :cond_0
    return-void
.end method
