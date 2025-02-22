.class abstract Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;
.super Landroid/view/ViewGroup;
.source "AbsActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView$VisibilityAnimListener;
    }
.end annotation


# static fields
.field private static final sAlphaInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field protected mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

.field protected mContentHeight:I

.field protected mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

.field protected final mPopupContext:Landroid/content/Context;

.field protected mSplitActionBar:Z

.field protected mSplitView:Landroid/view/ViewGroup;

.field protected mSplitWhenNarrow:Z

.field protected final mVisAnimListener:Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView$VisibilityAnimListener;

.field protected mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->sAlphaInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance v1, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView$VisibilityAnimListener;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;)V

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->mVisAnimListener:Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView$VisibilityAnimListener;

    .line 69
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 70
    .local v0, "tv":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcn/nubia/commonui/R$attr;->actionBarPopupTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_0

    .line 72
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->mPopupContext:Landroid/content/Context;

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->mPopupContext:Landroid/content/Context;

    goto :goto_0
.end method

.method protected static next(IIZ)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "val"    # I
    .param p2, "isRtl"    # Z

    .prologue
    .line 249
    if-eqz p2, :cond_0

    sub-int v0, p0, p1

    :goto_0
    return v0

    :cond_0
    add-int v0, p0, p1

    goto :goto_0
.end method


# virtual methods
.method public animateToVisibility(I)V
    .locals 8
    .param p1, "visibility"    # I

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const-wide/16 v6, 0xc8

    const/4 v4, 0x0

    .line 145
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v3, :cond_0

    .line 146
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 148
    :cond_0
    if-nez p1, :cond_3

    .line 149
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    .line 150
    invoke-static {p0, v4}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 151
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-eqz v3, :cond_1

    .line 152
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 155
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 156
    .local v0, "anim":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    invoke-virtual {v0, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 157
    sget-object v3, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->sAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 158
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-eqz v3, :cond_2

    .line 159
    new-instance v1, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    invoke-direct {v1}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;-><init>()V

    .line 160
    .local v1, "set":Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 161
    .local v2, "splitAnim":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    invoke-virtual {v2, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 162
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->mVisAnimListener:Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(Landroid/support/v4/view/ViewPropertyAnimatorCompat;I)Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 163
    invoke-virtual {v1, v0}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 164
    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->start()V

    .line 185
    .end local v1    # "set":Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;
    .end local v2    # "splitAnim":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    :goto_0
    return-void

    .line 166
    :cond_2
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->mVisAnimListener:Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(Landroid/support/v4/view/ViewPropertyAnimatorCompat;I)Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 167
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_0

    .line 170
    .end local v0    # "anim":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    :cond_3
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 171
    .restart local v0    # "anim":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    invoke-virtual {v0, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 172
    sget-object v3, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->sAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 173
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-eqz v3, :cond_4

    .line 174
    new-instance v1, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    invoke-direct {v1}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;-><init>()V

    .line 175
    .restart local v1    # "set":Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 176
    .restart local v2    # "splitAnim":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    invoke-virtual {v2, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 177
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->mVisAnimListener:Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(Landroid/support/v4/view/ViewPropertyAnimatorCompat;I)Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 178
    invoke-virtual {v1, v0}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 179
    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->start()V

    goto :goto_0

    .line 181
    .end local v1    # "set":Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;
    .end local v2    # "splitAnim":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    :cond_4
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->mVisAnimListener:Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(Landroid/support/v4/view/ViewPropertyAnimatorCompat;I)Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 182
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_0
.end method

.method public canShowOverflowMenu()Z
    .locals 1

    .prologue
    .line 228
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dismissPopupMenus()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 235
    :cond_0
    return-void
.end method

.method public getAnimatedVisibility()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->mVisAnimListener:Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView$VisibilityAnimListener;

    iget v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    .line 141
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->getVisibility()I

    move-result v0

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 206
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v0

    .line 220
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    .line 213
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected measureChildView(Landroid/view/View;III)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "availableWidth"    # I
    .param p3, "childSpecHeight"    # I
    .param p4, "spacing"    # I

    .prologue
    .line 239
    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v0, p3}, Landroid/view/View;->measure(II)V

    .line 242
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p2, v0

    .line 243
    sub-int/2addr p2, p4

    .line 245
    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 81
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_0

    .line 82
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcn/nubia/commonui/R$styleable;->ActionBar:[I

    sget v5, Lcn/nubia/commonui/R$attr;->actionBarStyle:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 89
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcn/nubia/commonui/R$styleable;->ActionBar_height:I

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->setContentHeight(I)V

    .line 90
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/commonui/R$bool;->abc_split_action_bar_is_narrow:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 94
    .local v1, "isSplitAllow":Z
    iget-boolean v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->mSplitWhenNarrow:Z

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 95
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->setSplitToolbar(Z)V

    .line 100
    :goto_0
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    if-eqz v2, :cond_1

    .line 101
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v2, p1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 103
    :cond_1
    return-void

    .line 97
    :cond_2
    invoke-virtual {p0, v6}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->setSplitToolbar(Z)V

    goto :goto_0
.end method

.method protected positionChild(Landroid/view/View;IIIZ)I
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "contentHeight"    # I
    .param p5, "reverse"    # Z

    .prologue
    .line 253
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 254
    .local v2, "childWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 255
    .local v0, "childHeight":I
    sub-int v3, p4, v0

    div-int/lit8 v3, v3, 0x2

    add-int v1, p3, v3

    .line 257
    .local v1, "childTop":I
    if-eqz p5, :cond_1

    .line 258
    sub-int v3, p2, v2

    add-int v4, v1, v0

    invoke-virtual {p1, v3, v1, p2, v4}, Landroid/view/View;->layout(IIII)V

    .line 263
    :goto_0
    if-eqz p5, :cond_0

    neg-int v2, v2

    .end local v2    # "childWidth":I
    :cond_0
    return v2

    .line 260
    .restart local v2    # "childWidth":I
    :cond_1
    add-int v3, p2, v2

    add-int v4, v1, v0

    invoke-virtual {p1, p2, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method protected positionMenuChild(Landroid/view/View;IIIZ)I
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "contentHeight"    # I
    .param p5, "reverse"    # Z

    .prologue
    .line 302
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 303
    .local v2, "childWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 304
    .local v0, "childHeight":I
    sub-int v4, p4, v0

    div-int/lit8 v4, v4, 0x2

    add-int v1, p3, v4

    .line 305
    .local v1, "childTop":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    if-ne v4, v5, :cond_1

    const/4 v3, 0x1

    .line 307
    .local v3, "isMenuNull":Z
    :goto_0
    if-eqz p5, :cond_3

    .line 308
    if-eqz v3, :cond_2

    .line 309
    add-int v4, v1, v0

    invoke-virtual {p1, p2, v1, p2, v4}, Landroid/view/View;->layout(IIII)V

    .line 321
    :goto_1
    if-eqz p5, :cond_0

    neg-int v2, v2

    .end local v2    # "childWidth":I
    :cond_0
    return v2

    .line 305
    .end local v3    # "isMenuNull":Z
    .restart local v2    # "childWidth":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 311
    .restart local v3    # "isMenuNull":Z
    :cond_2
    sub-int v4, p2, v2

    add-int v5, v1, v0

    invoke-virtual {p1, v4, v1, p2, v5}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 314
    :cond_3
    if-eqz v3, :cond_4

    .line 315
    add-int v4, v1, v0

    invoke-virtual {p1, p2, v1, p2, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 317
    :cond_4
    add-int v4, p2, v2

    add-int v5, v1, v0

    invoke-virtual {p1, p2, v1, v4, v5}, Landroid/view/View;->layout(IIII)V

    goto :goto_1
.end method

.method public postShowOverflowMenu()V
    .locals 1

    .prologue
    .line 195
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView$1;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView$1;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;)V

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->post(Ljava/lang/Runnable;)Z

    .line 200
    return-void
.end method

.method public setContentHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 122
    iput p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->mContentHeight:I

    .line 123
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->requestLayout()V

    .line 124
    return-void
.end method

.method public setSplitToolbar(Z)V
    .locals 0
    .param p1, "split"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    .line 111
    return-void
.end method

.method public setSplitView(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "splitView"    # Landroid/view/ViewGroup;

    .prologue
    .line 131
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    .line 132
    return-void
.end method

.method public setSplitWhenNarrow(Z)V
    .locals 0
    .param p1, "splitWhenNarrow"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->mSplitWhenNarrow:Z

    .line 119
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    .line 191
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
