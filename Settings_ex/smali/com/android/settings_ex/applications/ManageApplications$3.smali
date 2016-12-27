.class Lcom/android/settings_ex/applications/ManageApplications$3;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/applications/ManageApplications;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/ManageApplications;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/ManageApplications;)V
    .locals 0

    .prologue
    .line 1244
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications$3;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$3;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$3;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lcom/android/settings_ex/applications/ManageApplications;->access$700(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/ManageApplications;->updateCurrentTab(I)V

    .line 1250
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$3;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # invokes: Lcom/android/settings_ex/applications/ManageApplications;->updateNumTabs()V
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$1600(Lcom/android/settings_ex/applications/ManageApplications;)V

    .line 1252
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$3;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mPagerTab:Lcom/android/settings_ex/widget/SettingsNubiaPagerTab;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$1700(Lcom/android/settings_ex/applications/ManageApplications;)Lcom/android/settings_ex/widget/SettingsNubiaPagerTab;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$3;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lcom/android/settings_ex/applications/ManageApplications;->access$700(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SettingsNubiaPagerTab;->onPageSelected(I)V

    .line 1253
    return-void
.end method
