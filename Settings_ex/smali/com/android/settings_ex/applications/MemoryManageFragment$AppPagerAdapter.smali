.class Lcom/android/settings_ex/applications/MemoryManageFragment$AppPagerAdapter;
.super Lnubia/widget/tab/NubiaPagerAdapter;
.source "MemoryManageFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/MemoryManageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppPagerAdapter"
.end annotation


# instance fields
.field private fragmentManager:Landroid/app/FragmentManager;

.field private fragmentTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/MemoryManageFragment$Entity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings_ex/applications/MemoryManageFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/applications/MemoryManageFragment;Landroid/app/FragmentManager;Ljava/util/ArrayList;)V
    .locals 0
    .param p2, "fm"    # Landroid/app/FragmentManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/MemoryManageFragment$Entity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p3, "tabs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/MemoryManageFragment$Entity;>;"
    iput-object p1, p0, Lcom/android/settings_ex/applications/MemoryManageFragment$AppPagerAdapter;->this$0:Lcom/android/settings_ex/applications/MemoryManageFragment;

    invoke-direct {p0}, Lnubia/widget/tab/NubiaPagerAdapter;-><init>()V

    .line 146
    iput-object p3, p0, Lcom/android/settings_ex/applications/MemoryManageFragment$AppPagerAdapter;->fragmentTabs:Ljava/util/ArrayList;

    .line 147
    iput-object p2, p0, Lcom/android/settings_ex/applications/MemoryManageFragment$AppPagerAdapter;->fragmentManager:Landroid/app/FragmentManager;

    .line 148
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/settings_ex/applications/MemoryManageFragment$AppPagerAdapter;->this$0:Lcom/android/settings_ex/applications/MemoryManageFragment;

    # getter for: Lcom/android/settings_ex/applications/MemoryManageFragment;->mFragmentTabs:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings_ex/applications/MemoryManageFragment;->access$100(Lcom/android/settings_ex/applications/MemoryManageFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/MemoryManageFragment$Entity;

    # getter for: Lcom/android/settings_ex/applications/MemoryManageFragment$Entity;->fragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/android/settings_ex/applications/MemoryManageFragment$Entity;->access$000(Lcom/android/settings_ex/applications/MemoryManageFragment$Entity;)Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 179
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/settings_ex/applications/MemoryManageFragment$AppPagerAdapter;->this$0:Lcom/android/settings_ex/applications/MemoryManageFragment;

    # getter for: Lcom/android/settings_ex/applications/MemoryManageFragment;->mFragmentTabs:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings_ex/applications/MemoryManageFragment;->access$100(Lcom/android/settings_ex/applications/MemoryManageFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 191
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 157
    invoke-super {p0, p1}, Lnubia/widget/tab/NubiaPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/settings_ex/applications/MemoryManageFragment$AppPagerAdapter;->this$0:Lcom/android/settings_ex/applications/MemoryManageFragment;

    # getter for: Lcom/android/settings_ex/applications/MemoryManageFragment;->mFragmentTabs:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings_ex/applications/MemoryManageFragment;->access$100(Lcom/android/settings_ex/applications/MemoryManageFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/MemoryManageFragment$Entity;

    # getter for: Lcom/android/settings_ex/applications/MemoryManageFragment$Entity;->title:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings_ex/applications/MemoryManageFragment$Entity;->access$200(Lcom/android/settings_ex/applications/MemoryManageFragment$Entity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 162
    iget-object v2, p0, Lcom/android/settings_ex/applications/MemoryManageFragment$AppPagerAdapter;->this$0:Lcom/android/settings_ex/applications/MemoryManageFragment;

    # getter for: Lcom/android/settings_ex/applications/MemoryManageFragment;->mFragmentTabs:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/settings_ex/applications/MemoryManageFragment;->access$100(Lcom/android/settings_ex/applications/MemoryManageFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/MemoryManageFragment$Entity;

    # getter for: Lcom/android/settings_ex/applications/MemoryManageFragment$Entity;->fragment:Landroid/app/Fragment;
    invoke-static {v2}, Lcom/android/settings_ex/applications/MemoryManageFragment$Entity;->access$000(Lcom/android/settings_ex/applications/MemoryManageFragment$Entity;)Landroid/app/Fragment;

    move-result-object v0

    .line 163
    .local v0, "fragment":Landroid/app/Fragment;
    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 164
    iget-object v2, p0, Lcom/android/settings_ex/applications/MemoryManageFragment$AppPagerAdapter;->fragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 165
    .local v1, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 166
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 167
    iget-object v2, p0, Lcom/android/settings_ex/applications/MemoryManageFragment$AppPagerAdapter;->fragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 169
    .end local v1    # "ft":Landroid/app/FragmentTransaction;
    :cond_0
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_1

    .line 170
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 172
    :cond_1
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 183
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 207
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 197
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/settings_ex/applications/MemoryManageFragment$AppPagerAdapter;->this$0:Lcom/android/settings_ex/applications/MemoryManageFragment;

    # invokes: Lcom/android/settings_ex/applications/MemoryManageFragment;->updateTabBars(I)V
    invoke-static {v0, p1}, Lcom/android/settings_ex/applications/MemoryManageFragment;->access$300(Lcom/android/settings_ex/applications/MemoryManageFragment;I)V

    .line 202
    return-void
.end method
