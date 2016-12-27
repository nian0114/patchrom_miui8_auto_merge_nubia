.class Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity$1;
.super Ljava/lang/Object;
.source "SleepWhiteListSelectActivity.java"

# interfaces
.implements Lnubia/widget/NubiaDialogActivity$OnButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity$1;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnNegativeButtonClick()V
    .locals 4

    .prologue
    .line 68
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 69
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 70
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "selected_contacts"

    iget-object v3, p0, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity$1;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;

    # getter for: Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->mSelectedContacts:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->access$000(Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 71
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 72
    iget-object v2, p0, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity$1;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->setResult(ILandroid/content/Intent;)V

    .line 73
    iget-object v2, p0, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity$1;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;

    invoke-virtual {v2}, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->finish()V

    .line 74
    return-void
.end method

.method public OnPositiveButtonClick()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity$1;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;

    invoke-virtual {v0}, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->finish()V

    .line 78
    return-void
.end method
