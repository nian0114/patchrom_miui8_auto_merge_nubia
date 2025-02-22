.class public Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;
.super Landroid/view/ViewGroup;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;,
        Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$LayoutParams;
    }
.end annotation


# static fields
.field static final ATTRS:[I


# instance fields
.field private final ACTION_BAR_ANIMATE_DELAY:I

.field private mActionBarBottom:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

.field private mActionBarHeight:I

.field private mActionBarTop:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

.field private mActionBarVisibilityCallback:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

.field private final mAddActionBarHideOffset:Ljava/lang/Runnable;

.field private mAnimatingForFling:Z

.field private final mBaseContentInsets:Landroid/graphics/Rect;

.field private final mBaseInnerInsets:Landroid/graphics/Rect;

.field private final mBottomAnimatorListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

.field private mContent:Lcn/nubia/commonui/actionbar/internal/widget/ContentFrameLayout;

.field private final mContentInsets:Landroid/graphics/Rect;

.field private mCurrentActionBarBottomAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field private mCurrentActionBarTopAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field private mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

.field private mFlingEstimator:Landroid/support/v4/widget/ScrollerCompat;

.field private mHasNonEmbeddedTabs:Z

.field private mHideOnContentScroll:Z

.field private mHideOnContentScrollReference:I

.field private mIgnoreWindowContentOverlay:Z

.field private final mInnerInsets:Landroid/graphics/Rect;

.field private final mLastBaseContentInsets:Landroid/graphics/Rect;

.field private final mLastInnerInsets:Landroid/graphics/Rect;

.field private mLastSystemUiVisibility:I

.field private mOverlayMode:Z

.field private final mRemoveActionBarHideOffset:Ljava/lang/Runnable;

.field private final mTopAnimatorListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

.field private mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

.field private mWindowVisibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 160
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcn/nubia/commonui/R$attr;->actionBarSize:I

    aput v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x1010059

    aput v2, v0, v1

    sput-object v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 166
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    .line 83
    const/16 v0, 0x258

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->ACTION_BAR_ANIMATE_DELAY:I

    .line 90
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$1;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$1;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mTopAnimatorListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 105
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$2;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$2;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mBottomAnimatorListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 120
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$3;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$3;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    .line 132
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$4;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$4;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    .line 167
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->init(Landroid/content/Context;)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 171
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    .line 83
    const/16 v0, 0x258

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->ACTION_BAR_ANIMATE_DELAY:I

    .line 90
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$1;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$1;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mTopAnimatorListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 105
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$2;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$2;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mBottomAnimatorListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 120
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$3;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$3;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    .line 132
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$4;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$4;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    .line 172
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->init(Landroid/content/Context;)V

    .line 173
    return-void
.end method

.method static synthetic access$002(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;
    .param p1, "x1"    # Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .prologue
    .line 49
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    return-object p1
.end method

.method static synthetic access$102(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    return p1
.end method

.method static synthetic access$202(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;
    .param p1, "x1"    # Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .prologue
    .line 49
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mCurrentActionBarBottomAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    return-object p1
.end method

.method static synthetic access$300(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    .prologue
    .line 49
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;)Landroid/support/v4/view/ViewPropertyAnimatorListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    .prologue
    .line 49
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mTopAnimatorListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    .prologue
    .line 49
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    .prologue
    .line 49
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;)Landroid/support/v4/view/ViewPropertyAnimatorListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    .prologue
    .line 49
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mBottomAnimatorListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    return-object v0
.end method

.method private addActionBarHideOffset()V
    .locals 1

    .prologue
    .line 657
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 658
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 659
    return-void
.end method

.method private applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/graphics/Rect;
    .param p3, "left"    # Z
    .param p4, "top"    # Z
    .param p5, "bottom"    # Z
    .param p6, "right"    # Z

    .prologue
    .line 292
    const/4 v0, 0x0

    .line 293
    .local v0, "changed":Z
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$LayoutParams;

    .line 294
    .local v1, "lp":Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$LayoutParams;
    if-eqz p3, :cond_0

    iget v2, v1, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-eq v2, v3, :cond_0

    .line 295
    const/4 v0, 0x1

    .line 296
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iput v2, v1, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    .line 298
    :cond_0
    if-eqz p4, :cond_1

    iget v2, v1, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-eq v2, v3, :cond_1

    .line 299
    const/4 v0, 0x1

    .line 300
    iget v2, p2, Landroid/graphics/Rect;->top:I

    iput v2, v1, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    .line 302
    :cond_1
    if-eqz p6, :cond_2

    iget v2, v1, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-eq v2, v3, :cond_2

    .line 303
    const/4 v0, 0x1

    .line 304
    iget v2, p2, Landroid/graphics/Rect;->right:I

    iput v2, v1, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    .line 306
    :cond_2
    if-eqz p5, :cond_3

    iget v2, v1, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-eq v2, v3, :cond_3

    .line 307
    const/4 v0, 0x1

    .line 308
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    .line 310
    :cond_3
    return v0
.end method

.method private getDecorToolbar(Landroid/view/View;)Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 586
    instance-of v0, p1, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    if-eqz v0, :cond_0

    .line 587
    check-cast p1, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    .line 589
    .end local p1    # "view":Landroid/view/View;
    :goto_0
    return-object p1

    .line 588
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    instance-of v0, p1, Lcn/nubia/commonui/actionbar/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 589
    check-cast p1, Lcn/nubia/commonui/actionbar/widget/Toolbar;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getWrapper()Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    move-result-object p1

    goto :goto_0

    .line 591
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t make a decor toolbar out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private haltActionBarHideOffsetAnimations()V
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 632
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 633
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 636
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mCurrentActionBarBottomAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v0, :cond_1

    .line 637
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mCurrentActionBarBottomAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 639
    :cond_1
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 176
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v4, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->ATTRS:[I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 177
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    .line 178
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    .line 179
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->setWillNotDraw(Z)V

    .line 180
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x13

    if-ge v1, v4, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    .line 185
    invoke-static {p1}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mFlingEstimator:Landroid/support/v4/widget/ScrollerCompat;

    .line 186
    return-void

    :cond_0
    move v1, v3

    .line 179
    goto :goto_0

    :cond_1
    move v2, v3

    .line 182
    goto :goto_1
.end method

.method private postAddActionBarHideOffset()V
    .locals 4

    .prologue
    .line 647
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 648
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    const-wide/16 v2, 0x258

    invoke-virtual {p0, v0, v2, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 649
    return-void
.end method

.method private postRemoveActionBarHideOffset()V
    .locals 4

    .prologue
    .line 642
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 643
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    const-wide/16 v2, 0x258

    invoke-virtual {p0, v0, v2, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 644
    return-void
.end method

.method private removeActionBarHideOffset()V
    .locals 1

    .prologue
    .line 652
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 653
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 654
    return-void
.end method

.method private shouldHideActionBarOnFling(FF)Z
    .locals 10
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    const/4 v1, 0x0

    .line 662
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mFlingEstimator:Landroid/support/v4/widget/ScrollerCompat;

    float-to-int v4, p2

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    move v2, v1

    move v3, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v8}, Landroid/support/v4/widget/ScrollerCompat;->fling(IIIIIIII)V

    .line 663
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mFlingEstimator:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getFinalY()I

    move-result v9

    .line 664
    .local v9, "finalY":I
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    if-le v9, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public canShowOverflowMenu()Z
    .locals 1

    .prologue
    .line 738
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 739
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->canShowOverflowMenu()Z

    move-result v0

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 360
    instance-of v0, p1, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$LayoutParams;

    return v0
.end method

.method public dismissPopups()V
    .locals 1

    .prologue
    .line 792
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 793
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->dismissPopupMenus()V

    .line 794
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 506
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 507
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    if-nez v2, :cond_0

    .line 508
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getBottom()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v0, v2

    .line 511
    .local v0, "top":I
    :goto_0
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 513
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 515
    .end local v0    # "top":I
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 508
    goto :goto_0
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 7
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x1

    .line 315
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 317
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getWindowSystemUiVisibility(Landroid/view/View;)I

    move-result v3

    .line 318
    .local v3, "vis":I
    and-int/lit16 v5, v3, 0x100

    if-eqz v5, :cond_2

    move v1, v4

    .line 319
    .local v1, "stable":Z
    :goto_0
    move-object v2, p1

    .line 324
    .local v2, "systemInsets":Landroid/graphics/Rect;
    const/4 v0, 0x0

    .line 325
    .local v0, "changed":Z
    iget-object v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 326
    iget-object v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iget-object v6, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-static {p0, v5, v6}, Lcn/nubia/commonui/actionbar/internal/widget/ViewUtils;->computeFitSystemWindows(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 327
    iget-object v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    iget-object v6, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 328
    const/4 v0, 0x1

    .line 329
    iget-object v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    iget-object v6, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 332
    :cond_0
    if-eqz v0, :cond_1

    .line 333
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->requestLayout()V

    .line 340
    :cond_1
    return v4

    .line 318
    .end local v0    # "changed":Z
    .end local v1    # "stable":Z
    .end local v2    # "systemInsets":Landroid/graphics/Rect;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->generateDefaultLayoutParams()Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 345
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 355
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 350
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$LayoutParams;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getActionBarHideOffset()I
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v0

    float-to-int v0, v0

    neg-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 762
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 763
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public initFeature(I)V
    .locals 1
    .param p1, "windowFeature"    # I

    .prologue
    .line 687
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 688
    sparse-switch p1, :sswitch_data_0

    .line 699
    :goto_0
    return-void

    .line 690
    :sswitch_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->initProgress()V

    goto :goto_0

    .line 693
    :sswitch_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->initIndeterminateProgress()V

    goto :goto_0

    .line 696
    :sswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    goto :goto_0

    .line 688
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x5 -> :sswitch_1
        0x9 -> :sswitch_2
    .end sparse-switch
.end method

.method public isInOverlayMode()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 750
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 751
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->isOverflowMenuShowPending()Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 744
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 745
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 250
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 251
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->init(Landroid/content/Context;)V

    .line 254
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 255
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 190
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 191
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 192
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 475
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->getChildCount()I

    move-result v3

    .line 477
    .local v3, "count":I
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->getPaddingLeft()I

    move-result v8

    .line 478
    .local v8, "parentLeft":I
    sub-int v12, p4, p2

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->getPaddingRight()I

    move-result v13

    sub-int v9, v12, v13

    .line 480
    .local v9, "parentRight":I
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->getPaddingTop()I

    move-result v10

    .line 481
    .local v10, "parentTop":I
    sub-int v12, p5, p3

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->getPaddingBottom()I

    move-result v13

    sub-int v7, v12, v13

    .line 483
    .local v7, "parentBottom":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_2

    .line 484
    invoke-virtual {p0, v5}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 485
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_0

    .line 486
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$LayoutParams;

    .line 488
    .local v6, "lp":Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 489
    .local v11, "width":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 491
    .local v4, "height":I
    iget v12, v6, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int v1, v8, v12

    .line 493
    .local v1, "childLeft":I
    iget-object v12, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    if-ne v0, v12, :cond_1

    .line 494
    sub-int v12, v7, v4

    iget v13, v6, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    sub-int v2, v12, v13

    .line 499
    .local v2, "childTop":I
    :goto_1
    add-int v12, v1, v11

    add-int v13, v2, v4

    invoke-virtual {v0, v1, v2, v12, v13}, Landroid/view/View;->layout(IIII)V

    .line 483
    .end local v1    # "childLeft":I
    .end local v2    # "childTop":I
    .end local v4    # "height":I
    .end local v6    # "lp":Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$LayoutParams;
    .end local v11    # "width":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 496
    .restart local v1    # "childLeft":I
    .restart local v4    # "height":I
    .restart local v6    # "lp":Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$LayoutParams;
    .restart local v11    # "width":I
    :cond_1
    iget v12, v6, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int v2, v10, v12

    .restart local v2    # "childTop":I
    goto :goto_1

    .line 502
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childLeft":I
    .end local v2    # "childTop":I
    .end local v4    # "height":I
    .end local v6    # "lp":Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$LayoutParams;
    .end local v11    # "width":I
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 17
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 365
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 367
    const/4 v11, 0x0

    .line 368
    .local v11, "maxHeight":I
    const/4 v12, 0x0

    .line 369
    .local v12, "maxWidth":I
    const/4 v9, 0x0

    .line 371
    .local v9, "childState":I
    const/4 v15, 0x0

    .line 372
    .local v15, "topInset":I
    const/4 v8, 0x0

    .line 374
    .local v8, "bottomInset":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 375
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$LayoutParams;

    .line 376
    .local v10, "lp":Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v1

    iget v2, v10, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 378
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v1

    iget v2, v10, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 380
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v1

    invoke-static {v9, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v9

    .line 384
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_0

    .line 385
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 386
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .end local v10    # "lp":Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$LayoutParams;
    check-cast v10, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$LayoutParams;

    .line 387
    .restart local v10    # "lp":Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v1

    iget v2, v10, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 389
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v1

    iget v2, v10, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 391
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v1

    invoke-static {v9, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v9

    .line 395
    :cond_0
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getWindowSystemUiVisibility(Landroid/view/View;)I

    move-result v16

    .line 396
    .local v16, "vis":I
    move/from16 v0, v16

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_4

    const/4 v13, 0x1

    .line 398
    .local v13, "stable":Z
    :goto_0
    if-eqz v13, :cond_5

    .line 401
    move-object/from16 v0, p0

    iget v15, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    .line 402
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mHasNonEmbeddedTabs:Z

    if-eqz v1, :cond_1

    .line 403
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v14

    .line 404
    .local v14, "tabs":Landroid/view/View;
    if-eqz v14, :cond_1

    .line 406
    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    add-int/2addr v15, v1

    .line 415
    .end local v14    # "tabs":Landroid/view/View;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->isSplit()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 417
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_2

    .line 418
    if-eqz v13, :cond_6

    .line 419
    move-object/from16 v0, p0

    iget v8, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    .line 430
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 431
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 432
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    if-nez v1, :cond_7

    if-nez v13, :cond_7

    .line 433
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v15

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 434
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v8

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 439
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mContent:Lcn/nubia/commonui/actionbar/internal/widget/ContentFrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    .line 441
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 445
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 447
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mContent:Lcn/nubia/commonui/actionbar/internal/widget/ContentFrameLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ContentFrameLayout;->dispatchFitSystemWindows(Landroid/graphics/Rect;)V

    .line 450
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mContent:Lcn/nubia/commonui/actionbar/internal/widget/ContentFrameLayout;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 451
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mContent:Lcn/nubia/commonui/actionbar/internal/widget/ContentFrameLayout;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/widget/ContentFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .end local v10    # "lp":Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$LayoutParams;
    check-cast v10, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$LayoutParams;

    .line 452
    .restart local v10    # "lp":Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mContent:Lcn/nubia/commonui/actionbar/internal/widget/ContentFrameLayout;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/widget/ContentFrameLayout;->getMeasuredWidth()I

    move-result v1

    iget v2, v10, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 454
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mContent:Lcn/nubia/commonui/actionbar/internal/widget/ContentFrameLayout;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/widget/ContentFrameLayout;->getMeasuredHeight()I

    move-result v1

    iget v2, v10, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 456
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mContent:Lcn/nubia/commonui/actionbar/internal/widget/ContentFrameLayout;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v1

    invoke-static {v9, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v9

    .line 460
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v12, v1

    .line 461
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v11, v1

    .line 464
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 465
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 467
    move/from16 v0, p1

    invoke-static {v12, v0, v9}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v1

    shl-int/lit8 v2, v9, 0x10

    move/from16 v0, p2

    invoke-static {v11, v0, v2}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->setMeasuredDimension(II)V

    .line 471
    return-void

    .line 396
    .end local v13    # "stable":Z
    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 409
    .restart local v13    # "stable":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 412
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v15

    goto/16 :goto_1

    .line 421
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v8

    goto/16 :goto_2

    .line 436
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v15

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 437
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v8

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 2
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    const/4 v0, 0x1

    .line 564
    iget-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-eqz v1, :cond_0

    if-nez p4, :cond_1

    .line 565
    :cond_0
    const/4 v0, 0x0

    .line 573
    :goto_0
    return v0

    .line 567
    :cond_1
    invoke-direct {p0, p2, p3}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->shouldHideActionBarOnFling(FF)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 568
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->addActionBarHideOffset()V

    .line 572
    :goto_1
    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    goto :goto_0

    .line 570
    :cond_2
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->removeActionBarHideOffset()V

    goto :goto_1
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    .line 543
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    add-int/2addr v0, p3

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    .line 544
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    .line 545
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 532
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 533
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->getActionBarHideOffset()I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    .line 534
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 535
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onContentScrollStarted()V

    .line 538
    :cond_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 524
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 525
    :cond_0
    const/4 v0, 0x0

    .line 527
    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    goto :goto_0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 549
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onStopNestedScroll(Landroid/view/View;)V

    .line 550
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    if-nez v0, :cond_0

    .line 551
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 552
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->postRemoveActionBarHideOffset()V

    .line 557
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v0, :cond_1

    .line 558
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onContentScrollStopped()V

    .line 560
    :cond_1
    return-void

    .line 554
    :cond_2
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->postAddActionBarHideOffset()V

    goto :goto_0
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .locals 7
    .param p1, "visible"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 258
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_0

    .line 259
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowSystemUiVisibilityChanged(I)V

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 262
    iget v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    xor-int v1, v5, p1

    .line 263
    .local v1, "diff":I
    iput p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    .line 264
    and-int/lit8 v5, p1, 0x4

    if-nez v5, :cond_4

    move v0, v3

    .line 265
    .local v0, "barVisible":Z
    :goto_0
    and-int/lit16 v5, p1, 0x100

    if-eqz v5, :cond_5

    move v2, v3

    .line 266
    .local v2, "stable":Z
    :goto_1
    iget-object v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v5, :cond_2

    .line 270
    iget-object v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-nez v2, :cond_6

    :goto_2
    invoke-interface {v5, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->enableContentAnimations(Z)V

    .line 271
    if-nez v0, :cond_1

    if-nez v2, :cond_7

    :cond_1
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v3}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->showForSystem()V

    .line 274
    :cond_2
    :goto_3
    and-int/lit16 v3, v1, 0x100

    if-eqz v3, :cond_3

    .line 275
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v3, :cond_3

    .line 276
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 279
    :cond_3
    return-void

    .end local v0    # "barVisible":Z
    .end local v2    # "stable":Z
    :cond_4
    move v0, v4

    .line 264
    goto :goto_0

    .restart local v0    # "barVisible":Z
    :cond_5
    move v2, v4

    .line 265
    goto :goto_1

    .restart local v2    # "stable":Z
    :cond_6
    move v3, v4

    .line 270
    goto :goto_2

    .line 272
    :cond_7
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v3}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->hideForSystem()V

    goto :goto_3
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 283
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    .line 284
    iput p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    .line 285
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onWindowVisibilityChanged(I)V

    .line 288
    :cond_0
    return-void
.end method

.method pullChildren()V
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mContent:Lcn/nubia/commonui/actionbar/internal/widget/ContentFrameLayout;

    if-nez v0, :cond_0

    .line 578
    sget v0, Lcn/nubia/commonui/R$id;->action_bar_activity_content:I

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/internal/widget/ContentFrameLayout;

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mContent:Lcn/nubia/commonui/actionbar/internal/widget/ContentFrameLayout;

    .line 579
    sget v0, Lcn/nubia/commonui/R$id;->action_bar_container:I

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    .line 580
    sget v0, Lcn/nubia/commonui/R$id;->action_bar:I

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->getDecorToolbar(Landroid/view/View;)Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    .line 581
    sget v0, Lcn/nubia/commonui/R$id;->split_action_bar:I

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    .line 583
    :cond_0
    return-void
.end method

.method public setActionBarHideOffset(I)V
    .locals 5
    .param p1, "offset"    # I

    .prologue
    .line 618
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 619
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v3}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getHeight()I

    move-result v2

    .line 620
    .local v2, "topHeight":I
    const/4 v3, 0x0

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 621
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    neg-int v4, p1

    int-to-float v4, v4

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 622
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v3}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 624
    int-to-float v3, p1

    int-to-float v4, v2

    div-float v1, v3, v4

    .line 625
    .local v1, "fOffset":F
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v3}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v0, v3

    .line 626
    .local v0, "bOffset":I
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    int-to-float v4, v0

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 628
    .end local v0    # "bOffset":I
    .end local v1    # "fOffset":F
    :cond_0
    return-void
.end method

.method public setActionBarVisibilityCallback(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;)V
    .locals 3
    .param p1, "cb"    # Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    .prologue
    .line 195
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    .line 196
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    iget v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    invoke-interface {v1, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onWindowVisibilityChanged(I)V

    .line 200
    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    if-eqz v1, :cond_0

    .line 201
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    .line 202
    .local v0, "newVis":I
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->onWindowSystemUiVisibilityChanged(I)V

    .line 203
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 206
    .end local v0    # "newVis":I
    :cond_0
    return-void
.end method

.method public setHasNonEmbeddedTabs(Z)V
    .locals 0
    .param p1, "hasNonEmbeddedTabs"    # Z

    .prologue
    .line 225
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mHasNonEmbeddedTabs:Z

    .line 226
    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .locals 1
    .param p1, "hideOnContentScroll"    # Z

    .prologue
    .line 597
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-eq p1, v0, :cond_1

    .line 598
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    .line 599
    if-nez p1, :cond_1

    .line 600
    invoke-static {}, Lcn/nubia/commonui/actionbar/internal/VersionUtils;->isAtLeastL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->stopNestedScroll()V

    .line 603
    :cond_0
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 604
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    .line 607
    :cond_1
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "cb"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 774
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 775
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0, p1, p2}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setMenu(Landroid/view/Menu;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;)V

    .line 776
    return-void
.end method

.method public setMenuPrepared()V
    .locals 1

    .prologue
    .line 768
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 769
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setMenuPrepared()V

    .line 770
    return-void
.end method

.method public setOverlayMode(Z)V
    .locals 2
    .param p1, "overlayMode"    # Z

    .prologue
    .line 209
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    .line 215
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    .line 218
    return-void

    .line 215
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setShowingForActionMode(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .prologue
    .line 247
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 1
    .param p1, "cb"    # Landroid/view/Window$Callback;

    .prologue
    .line 669
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 670
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 671
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 675
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 676
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 677
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 519
    const/4 v0, 0x0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 756
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 757
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method
