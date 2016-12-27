.class Lcom/android/settings_ex/applications/ManageApplications$AppPagerAdapter;
.super Lcn/nubia/commonui/widget/tab/NubiaPagerAdapter;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppPagerAdapter"
.end annotation


# instance fields
.field private mContentContainer:Landroid/view/ViewGroup;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mRootView:Landroid/view/View;

.field private mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/ManageApplications$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings_ex/applications/ManageApplications;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/applications/ManageApplications;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/LayoutInflater;Ljava/util/ArrayList;)V
    .locals 0
    .param p2, "mContentContainer"    # Landroid/view/ViewGroup;
    .param p3, "mRootView"    # Landroid/view/View;
    .param p4, "mInflater"    # Landroid/view/LayoutInflater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/view/LayoutInflater;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/ManageApplications$TabInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1176
    .local p5, "mTabs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/ManageApplications$TabInfo;>;"
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications$AppPagerAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-direct {p0}, Lcn/nubia/commonui/widget/tab/NubiaPagerAdapter;-><init>()V

    .line 1177
    iput-object p2, p0, Lcom/android/settings_ex/applications/ManageApplications$AppPagerAdapter;->mContentContainer:Landroid/view/ViewGroup;

    .line 1178
    iput-object p3, p0, Lcom/android/settings_ex/applications/ManageApplications$AppPagerAdapter;->mRootView:Landroid/view/View;

    .line 1179
    iput-object p4, p0, Lcom/android/settings_ex/applications/ManageApplications$AppPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1180
    iput-object p5, p0, Lcom/android/settings_ex/applications/ManageApplications$AppPagerAdapter;->mTabs:Ljava/util/ArrayList;

    .line 1184
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 1216
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1217
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$AppPagerAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mNumTabs:I
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$1500(Lcom/android/settings_ex/applications/ManageApplications;)I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 1197
    invoke-super {p0, p1}, Lcn/nubia/commonui/widget/tab/NubiaPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$AppPagerAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    iget-object v0, v0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 1204
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$AppPagerAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    .line 1206
    .local v1, "tab":Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$AppPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$AppPagerAdapter;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$AppPagerAdapter;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->build(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 1207
    .local v0, "root":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1209
    const v2, 0x7f12008f

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1210
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 1221
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
