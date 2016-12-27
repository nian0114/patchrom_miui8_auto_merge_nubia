.class public Lcn/nubia/commonui/widget/NubiaMorePopup;
.super Ljava/lang/Object;
.source "NubiaMorePopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/widget/NubiaMorePopup$MyAdapter;,
        Lcn/nubia/commonui/widget/NubiaMorePopup$NubiaMorePopupViewContainer;,
        Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcn/nubia/commonui/widget/NubiaMorePopup$MyAdapter;

.field private mBackgroundView:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

.field private mBottomDivider:Landroid/view/View;

.field private mBottomImageView:Landroid/widget/ImageView;

.field private mBottomView:Landroid/widget/LinearLayout;

.field private mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownList:Landroid/widget/ListView;

.field private mEntryAnimatorSet:Landroid/animation/AnimatorSet;

.field private mExitAnimatorSet:Landroid/animation/AnimatorSet;

.field final mHandler:Landroid/os/Handler;

.field private mIsOnTop:Z

.field private mItemEnabled:[Z

.field private mItems:[Ljava/lang/CharSequence;

.field private mLastClickTime:J

.field private mMockStatusBarView:Landroid/view/View;

.field private mMoreImageView:Landroid/widget/ImageView;

.field private mMorePopupOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnClickListener:Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

.field private mParams:[I

.field private mPopup:Landroid/widget/PopupWindow;

.field private mPopupPanel:Landroid/widget/LinearLayout;

.field private mRunnable:Ljava/lang/Runnable;

.field private mTopDivider:Landroid/view/View;

.field private mTopImageView:Landroid/widget/ImageView;

.field private mTopView:Landroid/widget/LinearLayout;

.field private mTranslateInInterpolator:Landroid/view/animation/PathInterpolator;

.field private mTranslateOutInterpolator:Landroid/view/animation/PathInterpolator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcn/nubia/commonui/widget/NubiaMorePopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean v6, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mIsOnTop:Z

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mParams:[I

    .line 69
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mEntryAnimatorSet:Landroid/animation/AnimatorSet;

    .line 70
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mHandler:Landroid/os/Handler;

    .line 118
    new-instance v0, Lcn/nubia/commonui/widget/NubiaMorePopup$1;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/widget/NubiaMorePopup$1;-><init>(Lcn/nubia/commonui/widget/NubiaMorePopup;)V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mRunnable:Ljava/lang/Runnable;

    .line 125
    new-instance v0, Lcn/nubia/commonui/widget/NubiaMorePopup$2;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/widget/NubiaMorePopup$2;-><init>(Lcn/nubia/commonui/widget/NubiaMorePopup;)V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mMorePopupOnClickListener:Landroid/view/View$OnClickListener;

    .line 96
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    .line 97
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mLastClickTime:J

    .line 98
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    .line 99
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 101
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 102
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 103
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 104
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e28f5c3    # 0.165f

    const v2, 0x3f570a3d    # 0.84f

    const v3, 0x3ee147ae    # 0.44f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTranslateInInterpolator:Landroid/view/animation/PathInterpolator;

    .line 105
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f0ccccd    # 0.55f

    const v2, 0x3d6147ae    # 0.055f

    const v3, 0x3f2ccccd    # 0.675f

    const v4, 0x3e428f5c    # 0.19f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTranslateOutInterpolator:Landroid/view/animation/PathInterpolator;

    .line 106
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->buildImageView(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTopImageView:Landroid/widget/ImageView;

    .line 107
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->buildImageView(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBottomImageView:Landroid/widget/ImageView;

    .line 108
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 109
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5, v5}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/commonui/widget/NubiaMorePopup;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaMorePopup;

    .prologue
    .line 42
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->startEntryAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/commonui/widget/NubiaMorePopup;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaMorePopup;

    .prologue
    .line 42
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/commonui/widget/NubiaMorePopup;)[Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaMorePopup;

    .prologue
    .line 42
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mItemEnabled:[Z

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/commonui/widget/NubiaMorePopup;)Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaMorePopup;

    .prologue
    .line 42
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mOnClickListener:Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/commonui/widget/NubiaMorePopup;)Lcn/nubia/commonui/widget/MorePopupRelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaMorePopup;

    .prologue
    .line 42
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBackgroundView:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    return-object v0
.end method

.method private buildImageView(Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 401
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 402
    .local v0, "img":Landroid/widget/ImageView;
    sget v1, Lcn/nubia/commonui/R$drawable;->nubia_more_popup_operation_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 403
    sget v1, Lcn/nubia/commonui/R$drawable;->nubia_more_popup_operation_background:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 404
    return-object v0
.end method

.method private createBottomView(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    .line 360
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 361
    .local v4, "res":Landroid/content/res/Resources;
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 362
    .local v6, "textView":Landroid/widget/LinearLayout;
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 363
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    sget v7, Lcn/nubia/commonui/R$dimen;->nubia_action_bar_split_height:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sget v8, Lcn/nubia/commonui/R$dimen;->nubia_action_bar_split_height:I

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-direct {v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 366
    .local v5, "textPara":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mParams:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 367
    iget-object v7, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 368
    iget-object v7, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mMorePopupOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    sget v7, Lcn/nubia/commonui/R$dimen;->nubia_action_bar_menu_size:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sget v8, Lcn/nubia/commonui/R$dimen;->nubia_action_bar_menu_size:I

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-direct {v0, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 374
    .local v0, "bottomPara":Landroid/widget/LinearLayout$LayoutParams;
    sget v7, Lcn/nubia/commonui/R$dimen;->nubia_more_popup_bottom_view_left_margin:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 376
    sget v7, Lcn/nubia/commonui/R$dimen;->nubia_action_bar_menu_item_layout_padding:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 379
    iget-object v7, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 380
    .local v3, "parent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_0

    .line 381
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 383
    :cond_0
    iget-object v7, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v6, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    new-instance v1, Landroid/widget/TextView;

    const/4 v7, 0x0

    const v8, 0x1010360

    invoke-direct {v1, p1, v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 387
    .local v1, "more":Landroid/widget/TextView;
    sget v7, Lcn/nubia/commonui/R$string;->nubia_more_popup_text:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 390
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 391
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 392
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v2, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 395
    .local v2, "morePara":Landroid/widget/LinearLayout$LayoutParams;
    sget v7, Lcn/nubia/commonui/R$dimen;->nubia_more_popup_text_top_padding:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 397
    invoke-virtual {v6, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    return-void
.end method

.method private createContainer()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->createTopView(Landroid/content/Context;)V

    .line 220
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->createBottomView(Landroid/content/Context;)V

    .line 221
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->createListView()V

    .line 222
    return-void
.end method

.method private createContentView()V
    .locals 3

    .prologue
    .line 181
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcn/nubia/commonui/widget/NubiaMorePopup;->getPopupWindowInfo(Landroid/view/View;I)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mIsOnTop:Z

    .line 183
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    if-nez v1, :cond_0

    .line 184
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->initView()V

    .line 185
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->createContainer()V

    .line 186
    iget-boolean v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mIsOnTop:Z

    invoke-direct {p0, v1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->createPopupWindow(Z)V

    .line 191
    :goto_0
    iget-boolean v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mIsOnTop:Z

    if-eqz v1, :cond_1

    const/16 v0, 0x50

    .line 192
    .local v0, "gravity":I
    :goto_1
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->setGravity(I)V

    .line 193
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->setPopupWindow(Landroid/widget/PopupWindow;)V

    .line 194
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    invoke-virtual {v1, p0}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->setNubiaMorePopup(Lcn/nubia/commonui/widget/NubiaMorePopup;)V

    .line 195
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBackgroundView:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->setPopupWindow(Landroid/widget/PopupWindow;)V

    .line 196
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBackgroundView:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    invoke-virtual {v1, p0}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->setNubiaMorePopup(Lcn/nubia/commonui/widget/NubiaMorePopup;)V

    .line 197
    return-void

    .line 188
    .end local v0    # "gravity":I
    :cond_0
    iget-boolean v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mIsOnTop:Z

    invoke-direct {p0, v1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->updatePopupWindow(Z)V

    goto :goto_0

    .line 191
    :cond_1
    const/16 v0, 0x30

    goto :goto_1
.end method

.method private createListView()V
    .locals 3

    .prologue
    .line 200
    new-instance v0, Lcn/nubia/commonui/widget/NubiaMorePopup$MyAdapter;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v0, p0, v1, v2}, Lcn/nubia/commonui/widget/NubiaMorePopup$MyAdapter;-><init>(Lcn/nubia/commonui/widget/NubiaMorePopup;Landroid/content/Context;[Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mAdapter:Lcn/nubia/commonui/widget/NubiaMorePopup$MyAdapter;

    .line 201
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mAdapter:Lcn/nubia/commonui/widget/NubiaMorePopup$MyAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 203
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mOnClickListener:Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    new-instance v1, Lcn/nubia/commonui/widget/NubiaMorePopup$4;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/widget/NubiaMorePopup$4;-><init>(Lcn/nubia/commonui/widget/NubiaMorePopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 216
    :cond_0
    return-void
.end method

.method private createPopupWindow(Z)V
    .locals 6
    .param p1, "onTop"    # Z

    .prologue
    const/4 v4, -0x1

    .line 247
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->updatePopupWindow(Z)V

    .line 248
    new-instance v1, Lcn/nubia/commonui/widget/NubiaMorePopup$NubiaMorePopupViewContainer;

    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v3}, Lcn/nubia/commonui/widget/NubiaMorePopup$NubiaMorePopupViewContainer;-><init>(Lcn/nubia/commonui/widget/NubiaMorePopup;Landroid/content/Context;)V

    .line 251
    .local v1, "container":Lcn/nubia/commonui/widget/NubiaMorePopup$NubiaMorePopupViewContainer;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 255
    .local v0, "backPara":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 256
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 272
    .local v2, "listParams":Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBackgroundView:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    invoke-virtual {v1, v3, v0}, Lcn/nubia/commonui/widget/NubiaMorePopup$NubiaMorePopupViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    invoke-virtual {v1, v3, v2}, Lcn/nubia/commonui/widget/NubiaMorePopup$NubiaMorePopupViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 275
    return-void

    .line 261
    .end local v2    # "listParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/commonui/R$dimen;->nubia_more_popup_listview_width_land:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->getScreenHeight()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 266
    .restart local v2    # "listParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v3, 0x5

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 267
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/commonui/R$dimen;->nubia_more_popup_right_padding_land:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_0
.end method

.method private createTopView(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 329
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 330
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 331
    .local v3, "textView":Landroid/widget/LinearLayout;
    const/16 v5, 0x11

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 333
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->isPortrait()Z

    move-result v5

    if-nez v5, :cond_1

    .line 334
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    sget v5, Lcn/nubia/commonui/R$dimen;->nubia_action_bar_split_height:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sget v6, Lcn/nubia/commonui/R$dimen;->nubia_action_bar_split_height:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 337
    .local v2, "textPara":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTopView:Landroid/widget/LinearLayout;

    const/16 v6, 0x15

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 344
    :goto_0
    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTopView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mMorePopupOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    sget v5, Lcn/nubia/commonui/R$dimen;->nubia_action_bar_menu_size:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sget v6, Lcn/nubia/commonui/R$dimen;->nubia_action_bar_menu_size:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 351
    .local v4, "topPara":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 352
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 355
    :cond_0
    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    return-void

    .line 339
    .end local v0    # "parent":Landroid/view/ViewGroup;
    .end local v2    # "textPara":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "topPara":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    sget v5, Lcn/nubia/commonui/R$dimen;->nubia_more_popup_top_width:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sget v6, Lcn/nubia/commonui/R$dimen;->nubia_action_bar_default_height:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 342
    .restart local v2    # "textPara":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mParams:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_0
.end method

.method private getInitHeight()I
    .locals 4

    .prologue
    .line 456
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    if-nez v1, :cond_1

    .line 457
    const/4 v0, 0x0

    .line 466
    :cond_0
    :goto_0
    return v0

    .line 459
    :cond_1
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->measureView(Landroid/view/View;)V

    .line 460
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    invoke-direct {p0, v1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->measureView(Landroid/view/View;)V

    .line 461
    const/4 v0, 0x0

    .line 462
    .local v0, "height":I
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mItems:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 463
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mItems:[Ljava/lang/CharSequence;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    add-int v0, v1, v2

    goto :goto_0
.end method

.method private getPopupWindowInfo(Landroid/view/View;I)Z
    .locals 13
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I

    .prologue
    const/4 v9, 0x1

    .line 408
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 409
    .local v2, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 410
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 411
    .local v1, "bottomEdge":I
    iget v8, v2, Landroid/graphics/Rect;->top:I

    .line 413
    .local v8, "topEdge":I
    const/4 v10, 0x2

    new-array v0, v10, [I

    .line 414
    .local v0, "anchorPos":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 415
    iget-object v10, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mParams:[I

    invoke-virtual {p1, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 417
    aget v10, v0, v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    sub-int v10, v1, v10

    sub-int v3, v10, p2

    .line 420
    .local v3, "distanceToBottom":I
    if-gez v3, :cond_0

    .line 421
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v6

    .line 422
    .local v6, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v7

    .line 423
    .local v7, "scrollY":I
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v10

    iget-object v11, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v11}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v11

    add-int/2addr v11, v7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    add-int/2addr v11, p2

    invoke-direct {v5, v6, v7, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 425
    .local v5, "r":Landroid/graphics/Rect;
    invoke-virtual {p1, v5, v9}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 426
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 429
    .end local v5    # "r":Landroid/graphics/Rect;
    .end local v6    # "scrollX":I
    .end local v7    # "scrollY":I
    :cond_0
    aget v10, v0, v9

    sub-int/2addr v10, v8

    add-int v4, v10, p2

    .line 430
    .local v4, "distanceToTop":I
    if-le v4, v3, :cond_1

    :goto_0
    return v9

    :cond_1
    const/4 v9, 0x0

    goto :goto_0
.end method

.method private getScreenHeight()I
    .locals 6

    .prologue
    .line 278
    const/4 v0, 0x0

    .line 279
    .local v0, "heightPixels":I
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 280
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 281
    .local v2, "rootView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 289
    .end local v2    # "rootView":Landroid/view/View;
    :goto_0
    return v0

    .line 283
    :cond_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 284
    .local v1, "metric":Landroid/util/DisplayMetrics;
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 286
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 287
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0
.end method

.method private initItemsState([Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "items"    # [Ljava/lang/CharSequence;

    .prologue
    .line 638
    array-length v1, p1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mItemEnabled:[Z

    .line 639
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 640
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mItemEnabled:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 639
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 642
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 225
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 226
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcn/nubia/commonui/R$layout;->nubia_more_popup:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    iput-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    .line 228
    sget v1, Lcn/nubia/commonui/R$layout;->nubia_more_popup_fade_popup:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    iput-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBackgroundView:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    .line 230
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    sget v2, Lcn/nubia/commonui/R$id;->nubia_more_popup_panel:I

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    .line 232
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    sget v2, Lcn/nubia/commonui/R$id;->nubia_more_popup_top_divider:I

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTopDivider:Landroid/view/View;

    .line 234
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    sget v2, Lcn/nubia/commonui/R$id;->nubia_more_popup_bottom_divider:I

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBottomDivider:Landroid/view/View;

    .line 236
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    sget v2, Lcn/nubia/commonui/R$id;->nubia_more_popup_list:I

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    .line 238
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    sget v2, Lcn/nubia/commonui/R$id;->nubia_more_popup_top_View:I

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTopView:Landroid/widget/LinearLayout;

    .line 240
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    sget v2, Lcn/nubia/commonui/R$id;->nubia_more_popup_bottom_View:I

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBottomView:Landroid/widget/LinearLayout;

    .line 242
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    sget v2, Lcn/nubia/commonui/R$id;->nubia_more_popup_mock_status_bar:I

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mMockStatusBarView:Landroid/view/View;

    .line 244
    return-void
.end method

.method private isPortrait()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 147
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private measureView(Landroid/view/View;)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 438
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 439
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v2, :cond_0

    .line 440
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 443
    .restart local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v5, v5, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 445
    .local v1, "childMeasureWidth":I
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_1

    .line 446
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 452
    .local v0, "childMeasureHeight":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 453
    return-void

    .line 449
    .end local v0    # "childMeasureHeight":I
    :cond_1
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "childMeasureHeight":I
    goto :goto_0
.end method

.method private setViewBackgroundColor(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 321
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->isPortrait()Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/commonui/R$color;->nubia_more_popup_mask_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 325
    :cond_0
    return-void
.end method

.method private startEntryAnimation()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x186

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 472
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mEntryAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 502
    :goto_0
    return-void

    .line 476
    :cond_0
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->getInitHeight()I

    move-result v1

    .line 480
    .local v1, "height":I
    :goto_1
    iget-boolean v3, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mIsOnTop:Z

    if-eqz v3, :cond_2

    .line 481
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    const-string v4, "translationY"

    new-array v5, v7, [F

    int-to-float v6, v1

    aput v6, v5, v8

    aput v10, v5, v9

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 487
    .local v2, "totalTranslate":Landroid/animation/Animator;
    :goto_2
    invoke-virtual {v2, v12, v13}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 488
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTranslateInInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 490
    new-array v3, v7, [I

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 491
    .local v0, "backgroudAlpha":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 492
    new-instance v3, Lcn/nubia/commonui/widget/NubiaMorePopup$5;

    invoke-direct {v3, p0}, Lcn/nubia/commonui/widget/NubiaMorePopup$5;-><init>(Lcn/nubia/commonui/widget/NubiaMorePopup;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 500
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mEntryAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v4, v7, [Landroid/animation/Animator;

    aput-object v2, v4, v8

    aput-object v0, v4, v9

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 501
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mEntryAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 476
    .end local v0    # "backgroudAlpha":Landroid/animation/ValueAnimator;
    .end local v1    # "height":I
    .end local v2    # "totalTranslate":Landroid/animation/Animator;
    :cond_1
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    goto :goto_1

    .line 484
    .restart local v1    # "height":I
    :cond_2
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    const-string v4, "translationY"

    new-array v5, v7, [F

    neg-int v6, v1

    int-to-float v6, v6

    aput v6, v5, v8

    aput v10, v5, v9

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .restart local v2    # "totalTranslate":Landroid/animation/Animator;
    goto :goto_2

    .line 490
    nop

    :array_0
    .array-data 4
        0x0
        0x99
    .end array-data
.end method

.method private updatePopupWindow(Z)V
    .locals 4
    .param p1, "onTop"    # Z

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 293
    if-eqz p1, :cond_0

    .line 294
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTopView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 295
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTopDivider:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 296
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBottomDivider:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 297
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 298
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBottomImageView:Landroid/widget/ImageView;

    iput-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mMoreImageView:Landroid/widget/ImageView;

    .line 299
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mMockStatusBarView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 317
    :goto_0
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 318
    return-void

    .line 301
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTopView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 302
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTopDivider:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 303
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBottomDivider:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 304
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 305
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTopImageView:Landroid/widget/ImageView;

    iput-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mMoreImageView:Landroid/widget/ImageView;

    .line 306
    const/4 v0, 0x0

    .line 307
    .local v0, "flag":I
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 308
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 310
    :cond_1
    invoke-static {v0}, Lcn/nubia/commonui/util/UiUtils;->isFullScreenWindow(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcn/nubia/commonui/util/UiUtils;->isImmersedStatusBar(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 311
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mMockStatusBarView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 312
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mMockStatusBarView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->setViewBackgroundColor(Landroid/view/View;)V

    goto :goto_0

    .line 314
    :cond_2
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mMockStatusBarView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 175
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 176
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 177
    iput-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    .line 178
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 114
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    .line 115
    return-void
.end method

.method public setItems([Ljava/lang/CharSequence;Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;)V
    .locals 0
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "listener"    # Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

    .prologue
    .line 133
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mItems:[Ljava/lang/CharSequence;

    .line 134
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->initItemsState([Ljava/lang/CharSequence;)V

    .line 135
    iput-object p2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mOnClickListener:Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

    .line 136
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 152
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 159
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->createContentView()V

    .line 160
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mIsOnTop:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x50

    :goto_1
    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 162
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcn/nubia/commonui/widget/NubiaMorePopup$3;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/widget/NubiaMorePopup$3;-><init>(Lcn/nubia/commonui/widget/NubiaMorePopup;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    .line 160
    :cond_2
    const/16 v0, 0x30

    goto :goto_1
.end method

.method public startExitAnimation(Landroid/widget/PopupWindow;)V
    .locals 12
    .param p1, "popup"    # Landroid/widget/PopupWindow;

    .prologue
    const-wide/16 v10, 0xfa

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 505
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 535
    :goto_0
    return-void

    .line 509
    :cond_0
    iget-boolean v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mIsOnTop:Z

    if-eqz v2, :cond_1

    .line 510
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    const-string v3, "translationY"

    new-array v4, v6, [F

    aput v5, v4, v7

    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v8

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 516
    .local v1, "totalTranslate":Landroid/animation/Animator;
    :goto_1
    invoke-virtual {v1, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 517
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTranslateOutInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 518
    new-array v2, v6, [I

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 519
    .local v0, "backgroudAlpha":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 520
    new-instance v2, Lcn/nubia/commonui/widget/NubiaMorePopup$6;

    invoke-direct {v2, p0}, Lcn/nubia/commonui/widget/NubiaMorePopup$6;-><init>(Lcn/nubia/commonui/widget/NubiaMorePopup;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 527
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v3, v6, [Landroid/animation/Animator;

    aput-object v1, v3, v7

    aput-object v0, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 528
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lcn/nubia/commonui/widget/NubiaMorePopup$7;

    invoke-direct {v3, p0, p1}, Lcn/nubia/commonui/widget/NubiaMorePopup$7;-><init>(Lcn/nubia/commonui/widget/NubiaMorePopup;Landroid/widget/PopupWindow;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 534
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 513
    .end local v0    # "backgroudAlpha":Landroid/animation/ValueAnimator;
    .end local v1    # "totalTranslate":Landroid/animation/Animator;
    :cond_1
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    const-string v3, "translationY"

    new-array v4, v6, [F

    aput v5, v4, v7

    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v8

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .restart local v1    # "totalTranslate":Landroid/animation/Animator;
    goto :goto_1

    .line 518
    :array_0
    .array-data 4
        0x99
        0x0
    .end array-data
.end method
