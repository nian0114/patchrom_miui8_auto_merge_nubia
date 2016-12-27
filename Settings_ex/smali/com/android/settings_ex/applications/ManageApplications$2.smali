.class Lcom/android/settings_ex/applications/ManageApplications$2;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/applications/ManageApplications;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/ManageApplications;

.field final synthetic val$menuAlphaStrs:[Ljava/lang/CharSequence;

.field final synthetic val$menuShowServiceStrs:[Ljava/lang/CharSequence;

.field final synthetic val$menuSizeStrs:[Ljava/lang/CharSequence;

.field final synthetic val$processPermenuSizeStrs:[Ljava/lang/CharSequence;

.field final synthetic val$sa:Lcom/android/settings_ex/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/ManageApplications;Lcom/android/settings_ex/SettingsActivity;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1023
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications$2;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    iput-object p2, p0, Lcom/android/settings_ex/applications/ManageApplications$2;->val$sa:Lcom/android/settings_ex/SettingsActivity;

    iput-object p3, p0, Lcom/android/settings_ex/applications/ManageApplications$2;->val$processPermenuSizeStrs:[Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/settings_ex/applications/ManageApplications$2;->val$menuSizeStrs:[Ljava/lang/CharSequence;

    iput-object p5, p0, Lcom/android/settings_ex/applications/ManageApplications$2;->val$menuShowServiceStrs:[Ljava/lang/CharSequence;

    iput-object p6, p0, Lcom/android/settings_ex/applications/ManageApplications$2;->val$menuAlphaStrs:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1026
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$2;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v4}, Lcom/android/settings_ex/applications/ManageApplications;->access$700(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/support/v4/view/ViewPager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 1027
    .local v0, "currentItem":I
    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageApplications$2;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$2;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/settings_ex/applications/ManageApplications;->access$900(Lcom/android/settings_ex/applications/ManageApplications;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    # setter for: Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    invoke-static {v5, v4}, Lcom/android/settings_ex/applications/ManageApplications;->access$802(Lcom/android/settings_ex/applications/ManageApplications;Lcom/android/settings_ex/applications/ManageApplications$TabInfo;)Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    .line 1028
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$2;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings_ex/applications/ManageApplications;->access$1000(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "cn.nubia.security2"

    invoke-static {v4, v5}, Lcom/android/settings_ex/Utils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 1029
    .local v2, "isNubiaSecurityExist":Z
    new-instance v3, Lcn/nubia/commonui/widget/NubiaMorePopup;

    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$2;->val$sa:Lcom/android/settings_ex/SettingsActivity;

    invoke-direct {v3, v4}, Lcn/nubia/commonui/widget/NubiaMorePopup;-><init>(Landroid/content/Context;)V

    .line 1030
    .local v3, "pop":Lcn/nubia/commonui/widget/NubiaMorePopup;
    invoke-virtual {v3, p1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->setAnchorView(Landroid/view/View;)V

    .line 1031
    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$2;->val$processPermenuSizeStrs:[Ljava/lang/CharSequence;

    .line 1032
    .local v1, "currentStrs":[Ljava/lang/CharSequence;
    :goto_0
    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .line 1033
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$2;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    invoke-static {v4}, Lcom/android/settings_ex/applications/ManageApplications;->access$800(Lcom/android/settings_ex/applications/ManageApplications;)Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$2;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    invoke-static {v4}, Lcom/android/settings_ex/applications/ManageApplications;->access$800(Lcom/android/settings_ex/applications/ManageApplications;)Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    move-result-object v4

    # getter for: Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;
    invoke-static {v4}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->access$1100(Lcom/android/settings_ex/applications/ManageApplications$TabInfo;)Lcom/android/settings_ex/applications/RunningProcessesView;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$2;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    invoke-static {v4}, Lcom/android/settings_ex/applications/ManageApplications;->access$800(Lcom/android/settings_ex/applications/ManageApplications;)Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    move-result-object v4

    # getter for: Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;
    invoke-static {v4}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->access$1100(Lcom/android/settings_ex/applications/ManageApplications$TabInfo;)Lcom/android/settings_ex/applications/RunningProcessesView;

    move-result-object v4

    iget-object v4, v4, Lcom/android/settings_ex/applications/RunningProcessesView;->mAdapter:Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;

    if-eqz v4, :cond_0

    .line 1036
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$2;->val$menuShowServiceStrs:[Ljava/lang/CharSequence;

    .line 1045
    :cond_0
    :goto_1
    new-instance v4, Lcom/android/settings_ex/applications/ManageApplications$2$1;

    invoke-direct {v4, p0, v0, v2, v3}, Lcom/android/settings_ex/applications/ManageApplications$2$1;-><init>(Lcom/android/settings_ex/applications/ManageApplications$2;IZLcn/nubia/commonui/widget/NubiaMorePopup;)V

    invoke-virtual {v3, v1, v4}, Lcn/nubia/commonui/widget/NubiaMorePopup;->setItems([Ljava/lang/CharSequence;Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;)V

    .line 1123
    invoke-virtual {v3}, Lcn/nubia/commonui/widget/NubiaMorePopup;->show()V

    .line 1124
    return-void

    .line 1031
    .end local v1    # "currentStrs":[Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$2;->val$menuSizeStrs:[Ljava/lang/CharSequence;

    goto :goto_0

    .line 1042
    .restart local v1    # "currentStrs":[Ljava/lang/CharSequence;
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$2;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I
    invoke-static {v4}, Lcom/android/settings_ex/applications/ManageApplications;->access$1200(Lcom/android/settings_ex/applications/ManageApplications;)I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 1043
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$2;->val$menuAlphaStrs:[Ljava/lang/CharSequence;

    goto :goto_1
.end method
