.class Lcom/android/settings_ex/DataUsageAppDetail$2;
.super Ljava/lang/Object;
.source "DataUsageAppDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageAppDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DataUsageAppDetail;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataUsageAppDetail;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageAppDetail$2;->this$0:Lcom/android/settings_ex/DataUsageAppDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageAppDetail$2;->this$0:Lcom/android/settings_ex/DataUsageAppDetail;

    invoke-virtual {v0}, Lcom/android/settings_ex/DataUsageAppDetail;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageAppDetail$2;->this$0:Lcom/android/settings_ex/DataUsageAppDetail;

    # getter for: Lcom/android/settings_ex/DataUsageAppDetail;->mAppSettingsIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageAppDetail;->access$200(Lcom/android/settings_ex/DataUsageAppDetail;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageAppDetail$2;->this$0:Lcom/android/settings_ex/DataUsageAppDetail;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageAppDetail$2;->this$0:Lcom/android/settings_ex/DataUsageAppDetail;

    # getter for: Lcom/android/settings_ex/DataUsageAppDetail;->mAppSettingsIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageAppDetail;->access$200(Lcom/android/settings_ex/DataUsageAppDetail;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DataUsageAppDetail;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
