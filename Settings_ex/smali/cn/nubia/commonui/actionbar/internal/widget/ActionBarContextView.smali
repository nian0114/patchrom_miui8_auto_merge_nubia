.class public Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;
.super Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;
.source "ActionBarContextView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorListener;


# instance fields
.field private mAnimateInOnLayout:Z

.field private mAnimationMode:I

.field private mClose:Landroid/view/View;

.field private mCloseItemLayout:I

.field private mCurrentAnimation:Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

.field private mCustomView:Landroid/view/View;

.field private mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mSubtitleStyleRes:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleOptional:Z

.field private mTitleStyleRes:I

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 76
    sget v0, Lcn/nubia/commonui/R$attr;->actionModeStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    sget-object v1, Lcn/nubia/commonui/R$styleable;->ActionMode:[I

    invoke-static {p1, p2, v1, p3, v2}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;

    move-result-object v0

    .line 84
    .local v0, "a":Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;
    sget v1, Lcn/nubia/commonui/R$styleable;->ActionMode_background:I

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    sget v1, Lcn/nubia/commonui/R$styleable;->ActionMode_titleTextStyle:I

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    .line 88
    sget v1, Lcn/nubia/commonui/R$styleable;->ActionMode_subtitleTextStyle:I

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    .line 91
    sget v1, Lcn/nubia/commonui/R$styleable;->ActionMode_height:I

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mContentHeight:I

    .line 94
    sget v1, Lcn/nubia/commonui/R$styleable;->ActionMode_backgroundSplit:I

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 97
    sget v1, Lcn/nubia/commonui/R$styleable;->ActionMode_closeItemLayout:I

    sget v2, Lcn/nubia/commonui/R$layout;->abc_action_mode_close_item_material:I

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCloseItemLayout:I

    .line 101
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->recycle()V

    .line 102
    return-void
.end method

.method private finishAnimation()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCurrentAnimation:Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 278
    .local v0, "a":Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;
    if-eqz v0, :cond_0

    .line 279
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCurrentAnimation:Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 280
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->cancel()V

    .line 282
    :cond_0
    return-void
.end method

.method private initTitle()V
    .locals 9

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 184
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v3, :cond_1

    .line 185
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 186
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcn/nubia/commonui/R$layout;->abc_action_bar_title_item:I

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 187
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 188
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    sget v7, Lcn/nubia/commonui/R$id;->action_bar_title:I

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    .line 189
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    sget v7, Lcn/nubia/commonui/R$id;->action_bar_subtitle:I

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    .line 190
    iget v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    if-eqz v3, :cond_0

    .line 191
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v7

    iget v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    invoke-virtual {v3, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 193
    :cond_0
    iget v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    if-eqz v3, :cond_1

    .line 194
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v7

    iget v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    invoke-virtual {v3, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 198
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v4

    .line 202
    .local v1, "hasTitle":Z
    :goto_0
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    move v0, v4

    .line 203
    .local v0, "hasSubtitle":Z
    :goto_1
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    move v3, v5

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    move v6, v5

    :cond_3
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 205
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_4

    .line 206
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 208
    :cond_4
    return-void

    .end local v0    # "hasSubtitle":Z
    .end local v1    # "hasTitle":Z
    :cond_5
    move v1, v5

    .line 201
    goto :goto_0

    .restart local v1    # "hasTitle":Z
    :cond_6
    move v0, v5

    .line 202
    goto :goto_1

    .restart local v0    # "hasSubtitle":Z
    :cond_7
    move v3, v6

    .line 203
    goto :goto_2
.end method

.method private makeInAnimation()Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 412
    iget-object v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    neg-int v9, v8

    iget-object v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v8, v9, v8

    int-to-float v7, v8

    .line 414
    .local v7, "translationX":F
    iget-object v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-static {v8, v10}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 416
    iget-object v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    .line 417
    .local v1, "buttonAnimator":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    const-wide/16 v8, 0xc8

    invoke-virtual {v1, v8, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 418
    invoke-virtual {v1, p0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 419
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v8}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 421
    new-instance v6, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    invoke-direct {v6}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;-><init>()V

    .line 422
    .local v6, "set":Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;
    invoke-virtual {v6, v1}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 424
    iget-object v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-eqz v8, :cond_0

    .line 425
    iget-object v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v8}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getChildCount()I

    move-result v3

    .line 426
    .local v3, "count":I
    if-lez v3, :cond_0

    .line 427
    add-int/lit8 v4, v3, -0x1

    .local v4, "i":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    if-ltz v4, :cond_0

    .line 428
    iget-object v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v8, v4}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 429
    .local v2, "child":Landroid/view/View;
    invoke-static {v2, v10}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 430
    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 431
    .local v0, "a":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    const-wide/16 v8, 0x12c

    invoke-virtual {v0, v8, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 432
    invoke-virtual {v6, v0}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 427
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 437
    .end local v0    # "a":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "count":I
    .end local v4    # "i":I
    .end local v5    # "j":I
    :cond_0
    return-object v6
.end method

.method private makeOutAnimation()Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 441
    iget-object v6, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    .line 443
    .local v1, "buttonAnimator":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    const-wide/16 v6, 0xc8

    invoke-virtual {v1, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 444
    invoke-virtual {v1, p0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 445
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 447
    new-instance v5, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    invoke-direct {v5}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;-><init>()V

    .line 448
    .local v5, "set":Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;
    invoke-virtual {v5, v1}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 450
    iget-object v6, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-eqz v6, :cond_0

    .line 451
    iget-object v6, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v6}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getChildCount()I

    move-result v3

    .line 452
    .local v3, "count":I
    if-lez v3, :cond_0

    .line 453
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-gez v4, :cond_0

    .line 454
    iget-object v6, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v6, v4}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 455
    .local v2, "child":Landroid/view/View;
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v2, v6}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 456
    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 457
    .local v0, "a":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    const-wide/16 v6, 0x12c

    invoke-virtual {v0, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 458
    invoke-virtual {v5, v0}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 453
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 463
    .end local v0    # "a":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "count":I
    .end local v4    # "i":I
    :cond_0
    return-object v5
.end method


# virtual methods
.method public bridge synthetic animateToVisibility(I)V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->animateToVisibility(I)V

    return-void
.end method

.method public bridge synthetic canShowOverflowMenu()Z
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->canShowOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public closeMode()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 261
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mAnimationMode:I

    if-ne v0, v1, :cond_0

    .line 274
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-nez v0, :cond_1

    .line 266
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->killMode()V

    goto :goto_0

    .line 270
    :cond_1
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->finishAnimation()V

    .line 271
    iput v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mAnimationMode:I

    .line 272
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->makeOutAnimation()Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCurrentAnimation:Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 273
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCurrentAnimation:Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->start()V

    goto :goto_0
.end method

.method public bridge synthetic dismissPopupMenus()V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->dismissPopupMenus()V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 323
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 328
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getActionMenuHight()I
    .locals 2

    .prologue
    .line 552
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/commonui/R$dimen;->nubia_action_bar_menu_default_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getAnimatedVisibility()I
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->getAnimatedVisibility()I

    move-result v0

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 308
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initForMode(Lcn/nubia/commonui/actionbar/view/ActionMode;)V
    .locals 9
    .param p1, "mode"    # Lcn/nubia/commonui/actionbar/view/ActionMode;

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 211
    iget-object v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-nez v5, :cond_2

    .line 212
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 214
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcn/nubia/commonui/R$layout;->nubia_action_mode_close_item:I

    .line 215
    .local v3, "mActionModelayout":I
    const/4 v5, 0x0

    invoke-virtual {v1, v3, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    .line 216
    iget-object v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 221
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "mActionModelayout":I
    :cond_0
    :goto_0
    iget-object v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    sget v6, Lcn/nubia/commonui/R$id;->action_mode_close_button:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 222
    .local v0, "closeButton":Landroid/view/View;
    new-instance v5, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView$1;

    invoke-direct {v5, p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView$1;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;Lcn/nubia/commonui/actionbar/view/ActionMode;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v4

    check-cast v4, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    .line 229
    .local v4, "menu":Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;
    iget-object v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    if-eqz v5, :cond_1

    .line 230
    iget-object v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v5}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 232
    :cond_1
    new-instance v5, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    .line 233
    iget-object v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v5, v7}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 235
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v2, v5, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 237
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSplitActionBar:Z

    if-nez v5, :cond_3

    .line 238
    iget-object v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    iget-object v6, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v6}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 239
    iget-object v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v5, p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    move-result-object v5

    check-cast v5, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    iput-object v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    .line 240
    iget-object v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 241
    iget-object v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {p0, v5, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    :goto_1
    iput-boolean v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    .line 258
    return-void

    .line 217
    .end local v0    # "closeButton":Landroid/view/View;
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "menu":Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;
    :cond_2
    iget-object v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_0

    .line 218
    iget-object v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 244
    .restart local v0    # "closeButton":Landroid/view/View;
    .restart local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v4    # "menu":Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;
    :cond_3
    iget-object v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v5, v6, v7}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 247
    iget-object v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    const v6, 0x7fffffff

    invoke-virtual {v5, v6}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setItemLimit(I)V

    .line 249
    iput v8, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 250
    iget v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mContentHeight:I

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 251
    iget-object v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    iget-object v6, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v6}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 252
    iget-object v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v5, p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    move-result-object v5

    check-cast v5, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    iput-object v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    .line 253
    iget-object v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    iget-object v6, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 254
    iget-object v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v5, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public bridge synthetic isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->isOverflowMenuShowPending()Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    .line 316
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isOverflowReserved()Z
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->isOverflowReserved()Z

    move-result v0

    return v0
.end method

.method public isTitleOptional()Z
    .locals 1

    .prologue
    .line 548
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleOptional:Z

    return v0
.end method

.method public killMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 285
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->finishAnimation()V

    .line 286
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->removeAllViews()V

    .line 287
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 290
    :cond_0
    iput-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    .line 291
    iput-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    .line 292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    .line 293
    return-void
.end method

.method public onAnimationCancel(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 518
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 510
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mAnimationMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 511
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->killMode()V

    .line 513
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mAnimationMode:I

    .line 514
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 506
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->onDetachedFromWindow()V

    .line 107
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 109
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->hideSubMenus()Z

    .line 111
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 527
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 528
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 530
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 531
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 532
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 533
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 15
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 468
    invoke-static {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v5

    .line 469
    .local v5, "isLayoutRtl":Z
    if-eqz v5, :cond_4

    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v1

    sub-int v2, v0, v1

    .line 470
    .local v2, "x":I
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v3

    .line 471
    .local v3, "y":I
    sub-int v0, p5, p3

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v1

    sub-int v4, v0, v1

    .line 473
    .local v4, "contentHeight":I
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 474
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 475
    .local v13, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v5, :cond_5

    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 476
    .local v14, "startMargin":I
    :goto_1
    if-eqz v5, :cond_6

    iget v12, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 477
    .local v12, "endMargin":I
    :goto_2
    invoke-static {v2, v14, v5}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->next(IIZ)I

    move-result v2

    .line 478
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 479
    invoke-static {v2, v12, v5}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->next(IIZ)I

    move-result v2

    .line 481
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    if-eqz v0, :cond_0

    .line 482
    const/4 v0, 0x1

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mAnimationMode:I

    .line 483
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->makeInAnimation()Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCurrentAnimation:Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 484
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCurrentAnimation:Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->start()V

    .line 485
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    .line 489
    .end local v12    # "endMargin":I
    .end local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v14    # "startMargin":I
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 490
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 493
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 494
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 497
    :cond_2
    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v2

    .line 499
    :goto_3
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-eqz v0, :cond_3

    .line 500
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getActionMenuHight()I

    move-result v10

    if-nez v5, :cond_8

    const/4 v11, 0x1

    :goto_4
    move-object v6, p0

    move v8, v2

    move v9, v3

    invoke-virtual/range {v6 .. v11}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 502
    :cond_3
    return-void

    .line 469
    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "contentHeight":I
    :cond_4
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v2

    goto/16 :goto_0

    .line 475
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    .restart local v4    # "contentHeight":I
    .restart local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_5
    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1

    .line 476
    .restart local v14    # "startMargin":I
    :cond_6
    iget v12, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2

    .line 497
    .end local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v14    # "startMargin":I
    :cond_7
    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v1

    sub-int v2, v0, v1

    goto :goto_3

    .line 500
    :cond_8
    const/4 v11, 0x0

    goto :goto_4
.end method

.method protected onMeasure(II)V
    .locals 27
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 333
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v23

    .line 334
    .local v23, "widthMode":I
    const/high16 v24, 0x40000000    # 2.0f

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 335
    new-instance v24, Ljava/lang/IllegalStateException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " can only be used "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 339
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 340
    .local v12, "heightMode":I
    if-nez v12, :cond_1

    .line 341
    new-instance v24, Ljava/lang/IllegalStateException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " can only be used "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "with android:layout_height=\"wrap_content\""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 345
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 347
    .local v5, "contentWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mContentHeight:I

    move/from16 v24, v0

    if-lez v24, :cond_8

    move-object/from16 v0, p0

    iget v15, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mContentHeight:I

    .line 350
    .local v15, "maxHeight":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v25

    add-int v22, v24, v25

    .line 351
    .local v22, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v24

    sub-int v24, v5, v24

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v25

    sub-int v3, v24, v25

    .line 352
    .local v3, "availableWidth":I
    sub-int v11, v15, v22

    .line 353
    .local v11, "height":I
    const/high16 v24, -0x80000000

    move/from16 v0, v24

    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 355
    .local v4, "childSpecHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v3, v4, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 358
    .local v14, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v24, v0

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v25, v0

    add-int v24, v24, v25

    sub-int v3, v3, v24

    .line 361
    .end local v14    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_3

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v3, v4, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    .line 366
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    if-eqz v24, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v24, v0

    if-nez v24, :cond_5

    .line 367
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleOptional:Z

    move/from16 v24, v0

    if-eqz v24, :cond_b

    .line 368
    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 369
    .local v20, "titleWidthSpec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->measure(II)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v19

    .line 371
    .local v19, "titleWidth":I
    move/from16 v0, v19

    if-gt v0, v3, :cond_9

    const/16 v18, 0x1

    .line 372
    .local v18, "titleFits":Z
    :goto_1
    if-eqz v18, :cond_4

    .line 373
    sub-int v3, v3, v19

    .line 375
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    if-eqz v18, :cond_a

    const/16 v24, 0x0

    :goto_2
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 381
    .end local v18    # "titleFits":Z
    .end local v19    # "titleWidth":I
    .end local v20    # "titleWidthSpec":I
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v24, v0

    if-eqz v24, :cond_6

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .line 383
    .local v14, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v24, v0

    const/16 v25, -0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_c

    const/high16 v10, 0x40000000    # 2.0f

    .line 385
    .local v10, "customWidthMode":I
    :goto_4
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v24, v0

    if-ltz v24, :cond_d

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 387
    .local v9, "customWidth":I
    :goto_5
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v24, v0

    const/16 v25, -0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_e

    const/high16 v8, 0x40000000    # 2.0f

    .line 389
    .local v8, "customHeightMode":I
    :goto_6
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v24, v0

    if-ltz v24, :cond_f

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 391
    .local v7, "customHeight":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Landroid/view/View;->measure(II)V

    .line 395
    .end local v7    # "customHeight":I
    .end local v8    # "customHeightMode":I
    .end local v9    # "customWidth":I
    .end local v10    # "customWidthMode":I
    .end local v14    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mContentHeight:I

    move/from16 v24, v0

    if-gtz v24, :cond_11

    .line 396
    const/16 v16, 0x0

    .line 397
    .local v16, "measuredHeight":I
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getChildCount()I

    move-result v6

    .line 398
    .local v6, "count":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_8
    if-ge v13, v6, :cond_10

    .line 399
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 400
    .local v21, "v":Landroid/view/View;
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    add-int v17, v24, v22

    .line 401
    .local v17, "paddedViewHeight":I
    move/from16 v0, v17

    move/from16 v1, v16

    if-le v0, v1, :cond_7

    .line 402
    move/from16 v16, v17

    .line 398
    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 347
    .end local v3    # "availableWidth":I
    .end local v4    # "childSpecHeight":I
    .end local v6    # "count":I
    .end local v11    # "height":I
    .end local v13    # "i":I
    .end local v15    # "maxHeight":I
    .end local v16    # "measuredHeight":I
    .end local v17    # "paddedViewHeight":I
    .end local v21    # "v":Landroid/view/View;
    .end local v22    # "verticalPadding":I
    :cond_8
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    goto/16 :goto_0

    .line 371
    .restart local v3    # "availableWidth":I
    .restart local v4    # "childSpecHeight":I
    .restart local v11    # "height":I
    .restart local v15    # "maxHeight":I
    .restart local v19    # "titleWidth":I
    .restart local v20    # "titleWidthSpec":I
    .restart local v22    # "verticalPadding":I
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 375
    .restart local v18    # "titleFits":Z
    :cond_a
    const/16 v24, 0x8

    goto/16 :goto_2

    .line 377
    .end local v18    # "titleFits":Z
    .end local v19    # "titleWidth":I
    .end local v20    # "titleWidthSpec":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v3, v4, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    goto/16 :goto_3

    .line 383
    .restart local v14    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_c
    const/high16 v10, -0x80000000

    goto/16 :goto_4

    .restart local v10    # "customWidthMode":I
    :cond_d
    move v9, v3

    .line 385
    goto :goto_5

    .line 387
    .restart local v9    # "customWidth":I
    :cond_e
    const/high16 v8, -0x80000000

    goto :goto_6

    .restart local v8    # "customHeightMode":I
    :cond_f
    move v7, v11

    .line 389
    goto :goto_7

    .line 405
    .end local v8    # "customHeightMode":I
    .end local v9    # "customWidth":I
    .end local v10    # "customWidthMode":I
    .end local v14    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v6    # "count":I
    .restart local v13    # "i":I
    .restart local v16    # "measuredHeight":I
    :cond_10
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v5, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V

    .line 409
    .end local v6    # "count":I
    .end local v13    # "i":I
    .end local v16    # "measuredHeight":I
    :goto_9
    return-void

    .line 407
    :cond_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v15}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V

    goto :goto_9
.end method

.method public bridge synthetic postShowOverflowMenu()V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->postShowOverflowMenu()V

    return-void
.end method

.method public setContentHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 147
    iput p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mContentHeight:I

    .line 148
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 151
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->removeView(Landroid/view/View;)V

    .line 154
    :cond_0
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    .line 155
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->removeView(Landroid/view/View;)V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 159
    :cond_1
    if-eqz p1, :cond_2

    .line 160
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 162
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->requestLayout()V

    .line 163
    return-void
.end method

.method public setSplitToolbar(Z)V
    .locals 6
    .param p1, "split"    # Z

    .prologue
    const/4 v5, -0x1

    .line 115
    iget-boolean v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSplitActionBar:Z

    if-eq v2, p1, :cond_2

    .line 116
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    if-eqz v2, :cond_1

    .line 118
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 120
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-nez p1, :cond_3

    .line 121
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v2, p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    iput-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    .line 122
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 124
    .local v1, "oldParent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 125
    :cond_0
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {p0, v2, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "oldParent":Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->setSplitToolbar(Z)V

    .line 144
    :cond_2
    return-void

    .line 128
    .restart local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 131
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setItemLimit(I)V

    .line 133
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 134
    iget v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mContentHeight:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 135
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v2, p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    iput-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    .line 136
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 138
    .restart local v1    # "oldParent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 139
    :cond_4
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public bridge synthetic setSplitView(Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->setSplitView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public bridge synthetic setSplitWhenNarrow(Z)V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->setSplitWhenNarrow(Z)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 171
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    .line 172
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->initTitle()V

    .line 173
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 166
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    .line 167
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->initTitle()V

    .line 168
    return-void
.end method

.method public setTitleOptional(Z)V
    .locals 1
    .param p1, "titleOptional"    # Z

    .prologue
    .line 541
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleOptional:Z

    if-eq p1, v0, :cond_0

    .line 542
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->requestLayout()V

    .line 544
    :cond_0
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleOptional:Z

    .line 545
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 522
    const/4 v0, 0x0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    .line 300
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
