.class public Lcom/android/settings_ex/TrustedCredentialsSettings$TabsAdapter;
.super Lcn/nubia/commonui/widget/tab/NubiaPagerAdapter;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabsAdapter"
.end annotation


# instance fields
.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/TrustedCredentialsSettings;Landroid/support/v4/view/ViewPager;)V
    .locals 1
    .param p2, "pager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TabsAdapter;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    invoke-direct {p0}, Lcn/nubia/commonui/widget/tab/NubiaPagerAdapter;-><init>()V

    .line 296
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TabsAdapter;->mTempRect:Landroid/graphics/Rect;

    .line 299
    invoke-virtual {p2, p0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 300
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 301
    return-void
.end method


# virtual methods
.method public addTab(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;)V
    .locals 1
    .param p1, "tab"    # Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TabsAdapter;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    # getter for: Lcom/android/settings_ex/TrustedCredentialsSettings;->mTabs:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->access$800(Lcom/android/settings_ex/TrustedCredentialsSettings;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    invoke-virtual {p0}, Lcom/android/settings_ex/TrustedCredentialsSettings$TabsAdapter;->notifyDataSetChanged()V

    .line 311
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 322
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 323
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TabsAdapter;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    # getter for: Lcom/android/settings_ex/TrustedCredentialsSettings;->mTabs:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->access$800(Lcom/android/settings_ex/TrustedCredentialsSettings;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 332
    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TabsAdapter;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TabsAdapter;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    # getter for: Lcom/android/settings_ex/TrustedCredentialsSettings;->mTabs:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->access$800(Lcom/android/settings_ex/TrustedCredentialsSettings;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    # getter for: Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->mLabel:I
    invoke-static {v0}, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->access$1100(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 314
    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TabsAdapter;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    # getter for: Lcom/android/settings_ex/TrustedCredentialsSettings;->mTabs:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/settings_ex/TrustedCredentialsSettings;->access$800(Lcom/android/settings_ex/TrustedCredentialsSettings;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    # getter for: Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->mView:I
    invoke-static {v2}, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->access$900(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;)I

    move-result v1

    .line 315
    .local v1, "viewId":I
    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TabsAdapter;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    # getter for: Lcom/android/settings_ex/TrustedCredentialsSettings;->mView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/settings_ex/TrustedCredentialsSettings;->access$1000(Lcom/android/settings_ex/TrustedCredentialsSettings;)Landroid/view/View;

    move-result-object v2

    const v3, 0x1020011

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 316
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 317
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 327
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
