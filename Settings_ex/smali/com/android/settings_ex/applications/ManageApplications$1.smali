.class Lcom/android/settings_ex/applications/ManageApplications$1;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/applications/ManageApplications;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCurPos:I

.field final synthetic this$0:Lcom/android/settings_ex/applications/ManageApplications;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/ManageApplications;)V
    .locals 1

    .prologue
    .line 961
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications$1;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 962
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/applications/ManageApplications$1;->mCurPos:I

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 973
    if-nez p1, :cond_0

    .line 974
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$1;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    iget v1, p0, Lcom/android/settings_ex/applications/ManageApplications$1;->mCurPos:I

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/ManageApplications;->updateCurrentTab(I)V

    .line 976
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 965
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 968
    iput p1, p0, Lcom/android/settings_ex/applications/ManageApplications$1;->mCurPos:I

    .line 969
    return-void
.end method
