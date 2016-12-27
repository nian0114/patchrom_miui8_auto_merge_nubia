.class Lcom/android/settings_ex/DataUsageSummary$14$1;
.super Landroid/os/AsyncTask;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DataUsageSummary$14;->onLoadFinished(Landroid/content/Loader;Landroid/net/NetworkStats;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[I>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/DataUsageSummary$14;

.field final synthetic val$data:Landroid/net/NetworkStats;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataUsageSummary$14;Landroid/net/NetworkStats;)V
    .locals 0

    .prologue
    .line 1255
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$14$1;->this$1:Lcom/android/settings_ex/DataUsageSummary$14;

    iput-object p2, p0, Lcom/android/settings_ex/DataUsageSummary$14$1;->val$data:Landroid/net/NetworkStats;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1255
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DataUsageSummary$14$1;->doInBackground([Ljava/lang/Void;)[I

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[I
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1258
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$14$1;->this$1:Lcom/android/settings_ex/DataUsageSummary$14;

    iget-object v1, v1, Lcom/android/settings_ex/DataUsageSummary$14;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$100(Lcom/android/settings_ex/DataUsageSummary;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v0

    .line 1260
    .local v0, "restrictedUids":[I
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1255
    check-cast p1, [I

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DataUsageSummary$14$1;->onPostExecute([I)V

    return-void
.end method

.method protected onPostExecute([I)V
    .locals 2
    .param p1, "restrictedUids"    # [I

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$14$1;->this$1:Lcom/android/settings_ex/DataUsageSummary$14;

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary$14;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$1900(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/DataUsageUtilitys;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$14$1;->val$data:Landroid/net/NetworkStats;

    invoke-virtual {v0, p1, v1}, Lcom/android/settings_ex/DataUsageUtilitys;->setAdapter([ILandroid/net/NetworkStats;)V

    .line 1266
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$14$1;->this$1:Lcom/android/settings_ex/DataUsageSummary$14;

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary$14;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mUtilitys:Lcom/android/settings_ex/DataUsageUtilitys;
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$1900(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/DataUsageUtilitys;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/DataUsageUtilitys;->getAdapter()Lcom/android/settings_ex/DataUsageUtilitys$DataUsageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/DataUsageUtilitys$DataUsageAdapter;->notifyDataSetChanged()V

    .line 1267
    return-void
.end method
