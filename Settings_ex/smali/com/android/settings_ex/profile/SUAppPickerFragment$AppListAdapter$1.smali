.class Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter$1;
.super Ljava/lang/Object;
.source "SUAppPickerFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter$1;->this$1:Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 212
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 213
    .local v3, "pos":I
    iget-object v4, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter$1;->this$1:Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;

    # getter for: Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;->mPackageInfoList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;->access$1300(Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/profile/SUAppPickerFragment$MyApplicationInfo;

    .line 214
    .local v0, "appinfo":Lcom/android/settings_ex/profile/SUAppPickerFragment$MyApplicationInfo;
    iget-object v4, v0, Lcom/android/settings_ex/profile/SUAppPickerFragment$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 215
    .local v2, "pkg":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 216
    iget-object v4, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter$1;->this$1:Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;

    iget-object v4, v4, Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;->this$0:Lcom/android/settings_ex/profile/SUAppPickerFragment;

    # getter for: Lcom/android/settings_ex/profile/SUAppPickerFragment;->mAppsListFromDB:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/settings_ex/profile/SUAppPickerFragment;->access$1200(Lcom/android/settings_ex/profile/SUAppPickerFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 217
    iget-object v4, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter$1;->this$1:Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;

    iget-object v4, v4, Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;->this$0:Lcom/android/settings_ex/profile/SUAppPickerFragment;

    # getter for: Lcom/android/settings_ex/profile/SUAppPickerFragment;->mAppsListFromDB:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/settings_ex/profile/SUAppPickerFragment;->access$1200(Lcom/android/settings_ex/profile/SUAppPickerFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter$1;->this$1:Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;

    iget-object v4, v4, Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;->this$0:Lcom/android/settings_ex/profile/SUAppPickerFragment;

    iget-object v5, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter$1;->this$1:Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;

    iget-object v5, v5, Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;->this$0:Lcom/android/settings_ex/profile/SUAppPickerFragment;

    # getter for: Lcom/android/settings_ex/profile/SUAppPickerFragment;->mAppsListFromDB:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/settings_ex/profile/SUAppPickerFragment;->access$1200(Lcom/android/settings_ex/profile/SUAppPickerFragment;)Ljava/util/ArrayList;

    move-result-object v5

    # invokes: Lcom/android/settings_ex/profile/SUAppPickerFragment;->list2string(Ljava/util/ArrayList;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/settings_ex/profile/SUAppPickerFragment;->access$1400(Lcom/android/settings_ex/profile/SUAppPickerFragment;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "blackList":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter$1;->this$1:Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;

    iget-object v4, v4, Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;->this$0:Lcom/android/settings_ex/profile/SUAppPickerFragment;

    invoke-virtual {v4}, Lcom/android/settings_ex/profile/SUAppPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "single_ui_black_list"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 226
    return-void

    .line 220
    .end local v1    # "blackList":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter$1;->this$1:Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;

    iget-object v4, v4, Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;->this$0:Lcom/android/settings_ex/profile/SUAppPickerFragment;

    # getter for: Lcom/android/settings_ex/profile/SUAppPickerFragment;->mAppsListFromDB:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/settings_ex/profile/SUAppPickerFragment;->access$1200(Lcom/android/settings_ex/profile/SUAppPickerFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 221
    iget-object v4, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter$1;->this$1:Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;

    iget-object v4, v4, Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;->this$0:Lcom/android/settings_ex/profile/SUAppPickerFragment;

    # getter for: Lcom/android/settings_ex/profile/SUAppPickerFragment;->mAppsListFromDB:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/settings_ex/profile/SUAppPickerFragment;->access$1200(Lcom/android/settings_ex/profile/SUAppPickerFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
