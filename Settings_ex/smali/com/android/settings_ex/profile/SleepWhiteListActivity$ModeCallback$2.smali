.class Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback$2;
.super Ljava/lang/Object;
.source "SleepWhiteListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback$2;->this$1:Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback$2;->this$1:Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;

    iget-object v0, v0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    # getter for: Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mSelectedId:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->access$200(Lcom/android/settings_ex/profile/SleepWhiteListActivity;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback$2;->this$1:Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;

    iget-object v1, v1, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    # getter for: Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mListAdapter:Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;
    invoke-static {v1}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->access$600(Lcom/android/settings_ex/profile/SleepWhiteListActivity;)Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;->getCount()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 379
    iget-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback$2;->this$1:Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;

    # invokes: Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->selectAll()V
    invoke-static {v0}, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->access$1400(Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;)V

    .line 383
    :goto_0
    return-void

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback$2;->this$1:Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;

    # invokes: Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->unSelectAll()V
    invoke-static {v0}, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->access$1500(Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;)V

    goto :goto_0
.end method
