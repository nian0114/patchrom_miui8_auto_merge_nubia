.class Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter$1;
.super Ljava/lang/Object;
.source "Z7VolleyAppSelector.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter$1;->this$1:Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 252
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 253
    .local v2, "pos":I
    iget-object v4, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter$1;->this$1:Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter;

    # getter for: Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter;->mPackageInfoList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter;->access$200(Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$MyApplicationInfo;

    .line 254
    .local v0, "appinfo":Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$MyApplicationInfo;
    if-eqz p2, :cond_1

    .line 255
    iget-object v4, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter$1;->this$1:Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter;

    iget-object v4, v4, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter;->this$0:Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;

    # getter for: Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->mVolleySettings:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->access$100(Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 257
    iget-object v4, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter$1;->this$1:Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter;

    iget-object v4, v4, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter;->this$0:Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;

    iget-object v5, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter$1;->this$1:Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter;

    iget-object v5, v5, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter;->this$0:Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;

    # getter for: Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->mVolleyBuilder:Ljava/lang/StringBuilder;
    invoke-static {v5}, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->access$300(Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->mVolleySettings:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->access$102(Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;Ljava/lang/String;)Ljava/lang/String;

    .line 272
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter$1;->this$1:Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter;

    iget-object v4, v4, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter;->this$0:Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;

    invoke-virtual {v4}, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "volley_white_list"

    iget-object v6, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter$1;->this$1:Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter;

    iget-object v6, v6, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter;->this$0:Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;

    # getter for: Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->mVolleySettings:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->access$100(Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 275
    return-void

    .line 261
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter$1;->this$1:Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter;

    iget-object v4, v4, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter;->this$0:Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;

    # getter for: Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->mVolleySettings:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->access$100(Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 263
    iget-object v4, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter$1;->this$1:Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter;

    iget-object v4, v4, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter;->this$0:Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;

    # getter for: Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->mVolleySettings:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->access$100(Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 265
    .local v3, "start":I
    iget-object v4, v0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    add-int/lit8 v1, v4, 0x1

    .line 267
    .local v1, "end":I
    iget-object v4, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter$1;->this$1:Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter;

    iget-object v4, v4, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter;->this$0:Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;

    iget-object v5, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter$1;->this$1:Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter;

    iget-object v5, v5, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$AppListAdapter;->this$0:Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;

    # getter for: Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->mVolleyBuilder:Ljava/lang/StringBuilder;
    invoke-static {v5}, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->access$300(Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->mVolleySettings:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;->access$102(Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0
.end method
