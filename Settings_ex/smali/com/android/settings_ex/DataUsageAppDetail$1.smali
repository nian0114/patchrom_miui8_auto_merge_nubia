.class Lcom/android/settings_ex/DataUsageAppDetail$1;
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
    .line 160
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageAppDetail$1;->this$0:Lcom/android/settings_ex/DataUsageAppDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 163
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageAppDetail$1;->this$0:Lcom/android/settings_ex/DataUsageAppDetail;

    # getter for: Lcom/android/settings_ex/DataUsageAppDetail;->mAppRestrict:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/settings_ex/DataUsageAppDetail;->access$000(Lcom/android/settings_ex/DataUsageAppDetail;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 165
    .local v0, "restrictBackground":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 169
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageAppDetail$1;->this$0:Lcom/android/settings_ex/DataUsageAppDetail;

    invoke-static {v1}, Lcom/android/settings_ex/DataUsageAppDetail$ConfirmAppRestrictFragment;->show(Lcom/android/settings_ex/DataUsageAppDetail;)V

    .line 173
    :goto_1
    return-void

    .end local v0    # "restrictBackground":Z
    :cond_0
    move v0, v1

    .line 163
    goto :goto_0

    .line 171
    .restart local v0    # "restrictBackground":Z
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageAppDetail$1;->this$0:Lcom/android/settings_ex/DataUsageAppDetail;

    # invokes: Lcom/android/settings_ex/DataUsageAppDetail;->setAppRestrictBackground(Z)V
    invoke-static {v2, v1}, Lcom/android/settings_ex/DataUsageAppDetail;->access$100(Lcom/android/settings_ex/DataUsageAppDetail;Z)V

    goto :goto_1
.end method
