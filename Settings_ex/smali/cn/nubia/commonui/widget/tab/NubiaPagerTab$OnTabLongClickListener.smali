.class Lcn/nubia/commonui/widget/tab/NubiaPagerTab$OnTabLongClickListener;
.super Ljava/lang/Object;
.source "NubiaPagerTab.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/widget/tab/NubiaPagerTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnTabLongClickListener"
.end annotation


# instance fields
.field final mPosition:I

.field final synthetic this$0:Lcn/nubia/commonui/widget/tab/NubiaPagerTab;


# direct methods
.method public constructor <init>(Lcn/nubia/commonui/widget/tab/NubiaPagerTab;I)V
    .locals 0
    .param p2, "position"    # I

    .prologue
    .line 67
    iput-object p1, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab$OnTabLongClickListener;->this$0:Lcn/nubia/commonui/widget/tab/NubiaPagerTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p2, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab$OnTabLongClickListener;->mPosition:I

    .line 69
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 73
    iget-object v0, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab$OnTabLongClickListener;->this$0:Lcn/nubia/commonui/widget/tab/NubiaPagerTab;

    # getter for: Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->access$100(Lcn/nubia/commonui/widget/tab/NubiaPagerTab;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab$OnTabLongClickListener;->this$0:Lcn/nubia/commonui/widget/tab/NubiaPagerTab;

    iget v2, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab$OnTabLongClickListener;->mPosition:I

    # invokes: Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->getRtlPosition(I)I
    invoke-static {v1, v2}, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->access$000(Lcn/nubia/commonui/widget/tab/NubiaPagerTab;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 74
    const/4 v0, 0x1

    return v0
.end method
