.class Lcom/android/settings_ex/profile/SleepWhiteListActivity$1;
.super Ljava/lang/Object;
.source "SleepWhiteListActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/profile/SleepWhiteListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/profile/SleepWhiteListActivity;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$1;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 169
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 170
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$1;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    const-class v2, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 171
    iget-object v1, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$1;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 172
    iget-object v1, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$1;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    invoke-static {v1}, Lcom/android/settings_ex/Utils$NubiaDialogAnim;->overridePendingTransition(Landroid/content/Context;)V

    .line 173
    const/4 v1, 0x1

    return v1
.end method
