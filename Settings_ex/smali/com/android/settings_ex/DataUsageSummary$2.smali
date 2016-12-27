.class Lcom/android/settings_ex/DataUsageSummary$2;
.super Landroid/os/AsyncTask;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DataUsageSummary;->bindControlContainer(Landroid/view/LayoutInflater;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 564
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$2;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$2;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$100(Lcom/android/settings_ex/DataUsageSummary;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 564
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DataUsageSummary$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$2;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mRestrictBackgroundSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$200(Lcom/android/settings_ex/DataUsageSummary;)Lcn/nubia/commonui/widget/NubiaSwitch;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 572
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 564
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DataUsageSummary$2;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
