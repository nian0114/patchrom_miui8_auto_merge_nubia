.class Lcom/android/settings_ex/applications/ManageApplications$4$1;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/applications/ManageApplications$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/applications/ManageApplications$4;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/ManageApplications$4;)V
    .locals 0

    .prologue
    .line 1426
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications$4$1;->this$1:Lcom/android/settings_ex/applications/ManageApplications$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1429
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$4$1;->this$1:Lcom/android/settings_ex/applications/ManageApplications$4;

    iget-object v2, v2, Lcom/android/settings_ex/applications/ManageApplications$4;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v2}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$4$1;->this$1:Lcom/android/settings_ex/applications/ManageApplications$4;

    iget-object v2, v2, Lcom/android/settings_ex/applications/ManageApplications$4;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mActivityResumed:Z
    invoke-static {v2}, Lcom/android/settings_ex/applications/ManageApplications;->access$1800(Lcom/android/settings_ex/applications/ManageApplications;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1431
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$4$1;->this$1:Lcom/android/settings_ex/applications/ManageApplications$4;

    iget-object v2, v2, Lcom/android/settings_ex/applications/ManageApplications$4;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/settings_ex/applications/ManageApplications;->access$900(Lcom/android/settings_ex/applications/ManageApplications;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1432
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$4$1;->this$1:Lcom/android/settings_ex/applications/ManageApplications$4;

    iget-object v2, v2, Lcom/android/settings_ex/applications/ManageApplications$4;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/settings_ex/applications/ManageApplications;->access$900(Lcom/android/settings_ex/applications/ManageApplications;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    .line 1433
    .local v1, "tab":Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    iget-object v2, v1, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v2, :cond_0

    .line 1434
    iget-object v2, v1, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v2}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->pause()V

    .line 1431
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1437
    .end local v1    # "tab":Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$4$1;->this$1:Lcom/android/settings_ex/applications/ManageApplications$4;

    iget-object v2, v2, Lcom/android/settings_ex/applications/ManageApplications$4;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    invoke-static {v2}, Lcom/android/settings_ex/applications/ManageApplications;->access$800(Lcom/android/settings_ex/applications/ManageApplications;)Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1438
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$4$1;->this$1:Lcom/android/settings_ex/applications/ManageApplications$4;

    iget-object v2, v2, Lcom/android/settings_ex/applications/ManageApplications$4;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    invoke-static {v2}, Lcom/android/settings_ex/applications/ManageApplications;->access$800(Lcom/android/settings_ex/applications/ManageApplications;)Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$4$1;->this$1:Lcom/android/settings_ex/applications/ManageApplications$4;

    iget-object v3, v3, Lcom/android/settings_ex/applications/ManageApplications$4;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I
    invoke-static {v3}, Lcom/android/settings_ex/applications/ManageApplications;->access$1200(Lcom/android/settings_ex/applications/ManageApplications;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->resume(I)V

    .line 1441
    .end local v0    # "i":I
    :cond_2
    return-void
.end method
