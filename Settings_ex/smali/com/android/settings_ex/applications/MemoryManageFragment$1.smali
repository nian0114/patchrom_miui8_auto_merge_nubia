.class Lcom/android/settings_ex/applications/MemoryManageFragment$1;
.super Ljava/lang/Object;
.source "MemoryManageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/MemoryManageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/MemoryManageFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/MemoryManageFragment;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/settings_ex/applications/MemoryManageFragment$1;->this$0:Lcom/android/settings_ex/applications/MemoryManageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 223
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/MemoryManageFragment$1;->this$0:Lcom/android/settings_ex/applications/MemoryManageFragment;

    # getter for: Lcom/android/settings_ex/applications/MemoryManageFragment;->mTabViewList:[Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings_ex/applications/MemoryManageFragment;->access$400(Lcom/android/settings_ex/applications/MemoryManageFragment;)[Landroid/widget/Button;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/android/settings_ex/applications/MemoryManageFragment$1;->this$0:Lcom/android/settings_ex/applications/MemoryManageFragment;

    # getter for: Lcom/android/settings_ex/applications/MemoryManageFragment;->mTabViewList:[Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings_ex/applications/MemoryManageFragment;->access$400(Lcom/android/settings_ex/applications/MemoryManageFragment;)[Landroid/widget/Button;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 225
    iget-object v1, p0, Lcom/android/settings_ex/applications/MemoryManageFragment$1;->this$0:Lcom/android/settings_ex/applications/MemoryManageFragment;

    # getter for: Lcom/android/settings_ex/applications/MemoryManageFragment;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lcom/android/settings_ex/applications/MemoryManageFragment;->access$500(Lcom/android/settings_ex/applications/MemoryManageFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 229
    :cond_0
    return-void

    .line 223
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
