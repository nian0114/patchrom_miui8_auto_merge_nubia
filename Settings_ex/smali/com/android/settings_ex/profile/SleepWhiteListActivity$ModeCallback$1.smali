.class Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback$1;
.super Ljava/lang/Object;
.source "SleepWhiteListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;
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
    .line 291
    iput-object p1, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback$1;->this$1:Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 295
    iget-object v6, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback$1;->this$1:Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;

    # getter for: Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->mMode:Landroid/view/ActionMode;
    invoke-static {v6}, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->access$100(Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;)Landroid/view/ActionMode;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ActionMode;->finish()V

    .line 298
    new-instance v4, Ljava/util/LinkedList;

    iget-object v6, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback$1;->this$1:Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;

    iget-object v6, v6, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    # getter for: Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mSelectedId:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->access$200(Lcom/android/settings_ex/profile/SleepWhiteListActivity;)Ljava/util/HashSet;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 299
    .local v4, "setSort":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v6

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 300
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 301
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 302
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 303
    .local v1, "count":I
    iget-object v6, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback$1;->this$1:Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;

    iget-object v6, v6, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    # getter for: Lcom/android/settings_ex/profile/SleepWhiteListActivity;->showCustomizeContacts:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->access$300(Lcom/android/settings_ex/profile/SleepWhiteListActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    const-string v7, "name"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 304
    .local v3, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback$1;->this$1:Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;

    iget-object v6, v6, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    # getter for: Lcom/android/settings_ex/profile/SleepWhiteListActivity;->showCustomizeContacts:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->access$300(Lcom/android/settings_ex/profile/SleepWhiteListActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    const-string v7, "tel"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 305
    .local v5, "tel":Ljava/lang/String;
    const/4 v6, 0x2

    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v0, v6

    const/4 v6, 0x1

    aput-object v5, v0, v6

    .line 306
    .local v0, "contact":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback$1;->this$1:Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;

    iget-object v6, v6, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    # getter for: Lcom/android/settings_ex/profile/SleepWhiteListActivity;->newConfig:Landroid/service/notification/ZenModeConfig;
    invoke-static {v6}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->access$400(Lcom/android/settings_ex/profile/SleepWhiteListActivity;)Landroid/service/notification/ZenModeConfig;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/service/notification/ZenModeConfig;->removeArrayList([Ljava/lang/String;)V

    .line 307
    iget-object v6, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback$1;->this$1:Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;

    iget-object v6, v6, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    # getter for: Lcom/android/settings_ex/profile/SleepWhiteListActivity;->showCustomizeContacts:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->access$300(Lcom/android/settings_ex/profile/SleepWhiteListActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 309
    .end local v0    # "contact":[Ljava/lang/String;
    .end local v1    # "count":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "tel":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback$1;->this$1:Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;

    iget-object v6, v6, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    # getter for: Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mZenModeModel:Lcom/android/settings_ex/notification/ZenModeSettingsModel;
    invoke-static {v6}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->access$500(Lcom/android/settings_ex/profile/SleepWhiteListActivity;)Lcom/android/settings_ex/notification/ZenModeSettingsModel;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback$1;->this$1:Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;

    iget-object v7, v7, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    # getter for: Lcom/android/settings_ex/profile/SleepWhiteListActivity;->newConfig:Landroid/service/notification/ZenModeConfig;
    invoke-static {v7}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->access$400(Lcom/android/settings_ex/profile/SleepWhiteListActivity;)Landroid/service/notification/ZenModeConfig;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/notification/ZenModeSettingsModel;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    .line 310
    iget-object v6, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback$1;->this$1:Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;

    iget-object v6, v6, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    # getter for: Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mListAdapter:Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;
    invoke-static {v6}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->access$600(Lcom/android/settings_ex/profile/SleepWhiteListActivity;)Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settings_ex/profile/SleepWhiteListActivity$CustomizeContactsListAdapter;->refreshData()V

    .line 311
    iget-object v6, p0, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback$1;->this$1:Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;

    iget-object v6, v6, Lcom/android/settings_ex/profile/SleepWhiteListActivity$ModeCallback;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    # getter for: Lcom/android/settings_ex/profile/SleepWhiteListActivity;->mSelectedId:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/settings_ex/profile/SleepWhiteListActivity;->access$200(Lcom/android/settings_ex/profile/SleepWhiteListActivity;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 312
    return-void
.end method
