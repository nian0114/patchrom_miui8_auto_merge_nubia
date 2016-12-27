.class public Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
.super Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field mViewType:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1829
    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;-><init>(II)V

    .line 1822
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1830
    const v0, 0x800013

    iput v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->gravity:I

    .line 1831
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1825
    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1822
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1826
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1860
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1822
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1861
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 1853
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1822
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1856
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->copyMarginsFromCompat(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1857
    return-void
.end method

.method public constructor <init>(Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;

    .prologue
    .line 1849
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;-><init>(Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;)V

    .line 1822
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1850
    return-void
.end method

.method public constructor <init>(Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    .prologue
    .line 1843
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;-><init>(Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;)V

    .line 1822
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1845
    iget v0, p1, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->mViewType:I

    iput v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1846
    return-void
.end method


# virtual methods
.method copyMarginsFromCompat(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 1864
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->leftMargin:I

    .line 1865
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->topMargin:I

    .line 1866
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->rightMargin:I

    .line 1867
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->bottomMargin:I

    .line 1868
    return-void
.end method
