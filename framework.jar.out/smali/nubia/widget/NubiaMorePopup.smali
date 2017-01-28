.class public Lnubia/widget/NubiaMorePopup;
.super Ljava/lang/Object;
.source "NubiaMorePopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/widget/NubiaMorePopup$MyAdapter;,
        Lnubia/widget/NubiaMorePopup$NubiaMorePopupViewContainer;,
        Lnubia/widget/NubiaMorePopup$OnClickListener;
    }
.end annotation


# static fields
.field private static final ENTER_TOTAL_DURATION_TIME:J = 0x186L

.field private static final EXIT_DELAY_TIME:J = 0x32L

.field private static final EXIT_PART_DURATION_TIME:J = 0x64L

.field private static final EXIT_TOTAL_DURATION_TIME:J = 0xfaL

.field private static final NUBIA_MORE_POPUP_HEIGHT_RATE:F = 0.8f


# instance fields
.field private mAdapter:Lnubia/widget/NubiaMorePopup$MyAdapter;

.field private mBackgroundView:Lnubia/widget/MorePopupRelativeLayout;

.field private mBottomDivider:Landroid/view/View;

.field private mBottomImageView:Landroid/widget/ImageView;

.field private mBottomView:Landroid/widget/LinearLayout;

.field private mContainer:Lnubia/widget/MorePopupRelativeLayout;

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

.field private mOnClickListener:Lnubia/widget/NubiaMorePopup$OnClickListener;

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

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lnubia/widget/NubiaMorePopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lnubia/widget/NubiaMorePopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lnubia/widget/NubiaMorePopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v6, p0, Lnubia/widget/NubiaMorePopup;->mIsOnTop:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lnubia/widget/NubiaMorePopup;->mParams:[I

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaMorePopup;->mEntryAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaMorePopup;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaMorePopup;->mHandler:Landroid/os/Handler;

    new-instance v0, Lnubia/widget/NubiaMorePopup$1;

    invoke-direct {v0, p0}, Lnubia/widget/NubiaMorePopup$1;-><init>(Lnubia/widget/NubiaMorePopup;)V

    iput-object v0, p0, Lnubia/widget/NubiaMorePopup;->mRunnable:Ljava/lang/Runnable;

    new-instance v0, Lnubia/widget/NubiaMorePopup$2;

    invoke-direct {v0, p0}, Lnubia/widget/NubiaMorePopup$2;-><init>(Lnubia/widget/NubiaMorePopup;)V

    iput-object v0, p0, Lnubia/widget/NubiaMorePopup;->mMorePopupOnClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lnubia/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnubia/widget/NubiaMorePopup;->mLastClickTime:J

    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e28f5c3    # 0.165f

    const v2, 0x3f570a3d    # 0.84f

    const v3, 0x3ee147ae    # 0.44f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lnubia/widget/NubiaMorePopup;->mTranslateInInterpolator:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f0ccccd    # 0.55f

    const v2, 0x3d6147ae    # 0.055f

    const v3, 0x3f2ccccd    # 0.675f

    const v4, 0x3e428f5c    # 0.19f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lnubia/widget/NubiaMorePopup;->mTranslateOutInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-direct {p0, p1}, Lnubia/widget/NubiaMorePopup;->buildImageView(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lnubia/widget/NubiaMorePopup;->mTopImageView:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lnubia/widget/NubiaMorePopup;->buildImageView(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lnubia/widget/NubiaMorePopup;->mBottomImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5, v5}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    return-void
.end method

.method static synthetic access$000(Lnubia/widget/NubiaMorePopup;)V
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaMorePopup;

    .prologue
    invoke-direct {p0}, Lnubia/widget/NubiaMorePopup;->startEntryAnimation()V

    return-void
.end method

.method static synthetic access$100(Lnubia/widget/NubiaMorePopup;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaMorePopup;

    .prologue
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$200(Lnubia/widget/NubiaMorePopup;)[Z
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaMorePopup;

    .prologue
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mItemEnabled:[Z

    return-object v0
.end method

.method static synthetic access$300(Lnubia/widget/NubiaMorePopup;)Lnubia/widget/NubiaMorePopup$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaMorePopup;

    .prologue
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mOnClickListener:Lnubia/widget/NubiaMorePopup$OnClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lnubia/widget/NubiaMorePopup;)Lnubia/widget/MorePopupRelativeLayout;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaMorePopup;

    .prologue
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mBackgroundView:Lnubia/widget/MorePopupRelativeLayout;

    return-object v0
.end method

.method private buildImageView(Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .local v0, "img":Landroid/widget/ImageView;
    const v1, 0x30200f1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x30200f0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-object v0
.end method

.method private createBottomView(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v10, 0x3090040

    const v8, 0x309003e

    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .local v4, "res":Landroid/content/res/Resources;
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .local v6, "textView":Landroid/widget/LinearLayout;
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-direct {v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .local v5, "textPara":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lnubia/widget/NubiaMorePopup;->mParams:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v7, p0, Lnubia/widget/NubiaMorePopup;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lnubia/widget/NubiaMorePopup;->mMorePopupOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-direct {v0, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .local v0, "bottomPara":Landroid/widget/LinearLayout$LayoutParams;
    const v7, 0x309006b

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const v7, 0x3090042

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v7, p0, Lnubia/widget/NubiaMorePopup;->mBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .local v3, "parent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    iget-object v7, p0, Lnubia/widget/NubiaMorePopup;->mBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v6, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    const/4 v7, 0x0

    const v8, 0x1010360

    invoke-direct {v1, p1, v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .local v1, "more":Landroid/widget/TextView;
    const v7, 0x30c002f

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v2, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .local v2, "morePara":Landroid/widget/LinearLayout$LayoutParams;
    const v7, 0x309006c

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v6, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createContainer()V
    .locals 1

    .prologue
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lnubia/widget/NubiaMorePopup;->createTopView(Landroid/content/Context;)V

    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lnubia/widget/NubiaMorePopup;->createBottomView(Landroid/content/Context;)V

    invoke-direct {p0}, Lnubia/widget/NubiaMorePopup;->createListView()V

    return-void
.end method

.method private createContentView()V
    .locals 3

    .prologue
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lnubia/widget/NubiaMorePopup;->getPopupWindowInfo(Landroid/view/View;I)Z

    move-result v1

    iput-boolean v1, p0, Lnubia/widget/NubiaMorePopup;->mIsOnTop:Z

    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lnubia/widget/NubiaMorePopup;->initView()V

    invoke-direct {p0}, Lnubia/widget/NubiaMorePopup;->createContainer()V

    iget-boolean v1, p0, Lnubia/widget/NubiaMorePopup;->mIsOnTop:Z

    invoke-direct {p0, v1}, Lnubia/widget/NubiaMorePopup;->createPopupWindow(Z)V

    :goto_0
    iget-boolean v1, p0, Lnubia/widget/NubiaMorePopup;->mIsOnTop:Z

    if-eqz v1, :cond_1

    const/16 v0, 0x50

    .local v0, "gravity":I
    :goto_1
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mContainer:Lnubia/widget/MorePopupRelativeLayout;

    invoke-virtual {v1, v0}, Lnubia/widget/MorePopupRelativeLayout;->setGravity(I)V

    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mContainer:Lnubia/widget/MorePopupRelativeLayout;

    iget-object v2, p0, Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Lnubia/widget/MorePopupRelativeLayout;->setPopupWindow(Landroid/widget/PopupWindow;)V

    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mContainer:Lnubia/widget/MorePopupRelativeLayout;

    invoke-virtual {v1, p0}, Lnubia/widget/MorePopupRelativeLayout;->setNubiaMorePopup(Lnubia/widget/NubiaMorePopup;)V

    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mBackgroundView:Lnubia/widget/MorePopupRelativeLayout;

    iget-object v2, p0, Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Lnubia/widget/MorePopupRelativeLayout;->setPopupWindow(Landroid/widget/PopupWindow;)V

    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mBackgroundView:Lnubia/widget/MorePopupRelativeLayout;

    invoke-virtual {v1, p0}, Lnubia/widget/MorePopupRelativeLayout;->setNubiaMorePopup(Lnubia/widget/NubiaMorePopup;)V

    return-void

    .end local v0    # "gravity":I
    :cond_0
    iget-boolean v1, p0, Lnubia/widget/NubiaMorePopup;->mIsOnTop:Z

    invoke-direct {p0, v1}, Lnubia/widget/NubiaMorePopup;->updatePopupWindow(Z)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x30

    goto :goto_1
.end method

.method private createListView()V
    .locals 3

    .prologue
    new-instance v0, Lnubia/widget/NubiaMorePopup$MyAdapter;

    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lnubia/widget/NubiaMorePopup;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v0, p0, v1, v2}, Lnubia/widget/NubiaMorePopup$MyAdapter;-><init>(Lnubia/widget/NubiaMorePopup;Landroid/content/Context;[Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lnubia/widget/NubiaMorePopup;->mAdapter:Lnubia/widget/NubiaMorePopup$MyAdapter;

    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mAdapter:Lnubia/widget/NubiaMorePopup$MyAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mOnClickListener:Lnubia/widget/NubiaMorePopup$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    new-instance v1, Lnubia/widget/NubiaMorePopup$4;

    invoke-direct {v1, p0}, Lnubia/widget/NubiaMorePopup$4;-><init>(Lnubia/widget/NubiaMorePopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_0
    return-void
.end method

.method private createPopupWindow(Z)V
    .locals 6
    .param p1, "onTop"    # Z

    .prologue
    const/4 v4, -0x1

    invoke-direct {p0, p1}, Lnubia/widget/NubiaMorePopup;->updatePopupWindow(Z)V

    new-instance v1, Lnubia/widget/NubiaMorePopup$NubiaMorePopupViewContainer;

    iget-object v3, p0, Lnubia/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v3}, Lnubia/widget/NubiaMorePopup$NubiaMorePopupViewContainer;-><init>(Lnubia/widget/NubiaMorePopup;Landroid/content/Context;)V

    .local v1, "container":Lnubia/widget/NubiaMorePopup$NubiaMorePopupViewContainer;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v0, "backPara":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {p0}, Lnubia/widget/NubiaMorePopup;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v2, "listParams":Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    iget-object v3, p0, Lnubia/widget/NubiaMorePopup;->mBackgroundView:Lnubia/widget/MorePopupRelativeLayout;

    invoke-virtual {v1, v3, v0}, Lnubia/widget/NubiaMorePopup$NubiaMorePopupViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lnubia/widget/NubiaMorePopup;->mContainer:Lnubia/widget/MorePopupRelativeLayout;

    invoke-virtual {v1, v3, v2}, Lnubia/widget/NubiaMorePopup$NubiaMorePopupViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void

    .end local v2    # "listParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lnubia/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x309006f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {p0}, Lnubia/widget/NubiaMorePopup;->getScreenHeight()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .restart local v2    # "listParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v3, 0x5

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v3, p0, Lnubia/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x309006e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_0
.end method

.method private createTopView(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v7, 0x3090040

    const v6, 0x309003e

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .local v1, "res":Landroid/content/res/Resources;
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .local v3, "textView":Landroid/widget/LinearLayout;
    const/16 v5, 0x11

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-direct {p0}, Lnubia/widget/NubiaMorePopup;->isPortrait()Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .local v2, "textPara":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lnubia/widget/NubiaMorePopup;->mTopView:Landroid/widget/LinearLayout;

    const/16 v6, 0x15

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    :goto_0
    iget-object v5, p0, Lnubia/widget/NubiaMorePopup;->mTopView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lnubia/widget/NubiaMorePopup;->mMorePopupOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .local v4, "topPara":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lnubia/widget/NubiaMorePopup;->mTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    iget-object v5, p0, Lnubia/widget/NubiaMorePopup;->mTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .end local v0    # "parent":Landroid/view/ViewGroup;
    .end local v2    # "textPara":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "topPara":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const v5, 0x309006d

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v6, 0x3090004

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .restart local v2    # "textPara":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lnubia/widget/NubiaMorePopup;->mParams:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_0
.end method

.method private getInitHeight()I
    .locals 4

    .prologue
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lnubia/widget/NubiaMorePopup;->measureView(Landroid/view/View;)V

    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    invoke-direct {p0, v1}, Lnubia/widget/NubiaMorePopup;->measureView(Landroid/view/View;)V

    const/4 v0, 0x0

    .local v0, "height":I
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mItems:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lnubia/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lnubia/widget/NubiaMorePopup;->mItems:[Ljava/lang/CharSequence;

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

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .local v2, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .local v1, "bottomEdge":I
    iget v8, v2, Landroid/graphics/Rect;->top:I

    .local v8, "topEdge":I
    const/4 v10, 0x2

    new-array v0, v10, [I

    .local v0, "anchorPos":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v10, p0, Lnubia/widget/NubiaMorePopup;->mParams:[I

    invoke-virtual {p1, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v10, v0, v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    sub-int v10, v1, v10

    sub-int v3, v10, p2

    .local v3, "distanceToBottom":I
    if-gez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v6

    .local v6, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v7

    .local v7, "scrollY":I
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v10

    iget-object v11, p0, Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v11}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v11

    add-int/2addr v11, v7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    add-int/2addr v11, p2

    invoke-direct {v5, v6, v7, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v5, "r":Landroid/graphics/Rect;
    invoke-virtual {p1, v5, v9}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .end local v5    # "r":Landroid/graphics/Rect;
    .end local v6    # "scrollX":I
    .end local v7    # "scrollY":I
    :cond_0
    aget v10, v0, v9

    sub-int/2addr v10, v8

    add-int v4, v10, p2

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
    const/4 v0, 0x0

    .local v0, "heightPixels":I
    iget-object v4, p0, Lnubia/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lnubia/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    .local v2, "rootView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    .end local v2    # "rootView":Landroid/view/View;
    :goto_0
    return v0

    :cond_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .local v1, "metric":Landroid/util/DisplayMetrics;
    iget-object v4, p0, Lnubia/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0
.end method

.method private initItemsState([Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "items"    # [Ljava/lang/CharSequence;

    .prologue
    array-length v1, p1

    new-array v1, v1, [Z

    iput-object v1, p0, Lnubia/widget/NubiaMorePopup;->mItemEnabled:[Z

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mItemEnabled:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x3030011

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnubia/widget/MorePopupRelativeLayout;

    iput-object v1, p0, Lnubia/widget/NubiaMorePopup;->mContainer:Lnubia/widget/MorePopupRelativeLayout;

    const v1, 0x3030012

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnubia/widget/MorePopupRelativeLayout;

    iput-object v1, p0, Lnubia/widget/NubiaMorePopup;->mBackgroundView:Lnubia/widget/MorePopupRelativeLayout;

    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mContainer:Lnubia/widget/MorePopupRelativeLayout;

    const v2, 0x30d003e

    invoke-virtual {v1, v2}, Lnubia/widget/MorePopupRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lnubia/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mContainer:Lnubia/widget/MorePopupRelativeLayout;

    const v2, 0x30d0041

    invoke-virtual {v1, v2}, Lnubia/widget/MorePopupRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnubia/widget/NubiaMorePopup;->mTopDivider:Landroid/view/View;

    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mContainer:Lnubia/widget/MorePopupRelativeLayout;

    const v2, 0x30d0044

    invoke-virtual {v1, v2}, Lnubia/widget/MorePopupRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnubia/widget/NubiaMorePopup;->mBottomDivider:Landroid/view/View;

    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mContainer:Lnubia/widget/MorePopupRelativeLayout;

    const v2, 0x30d0043

    invoke-virtual {v1, v2}, Lnubia/widget/MorePopupRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lnubia/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mContainer:Lnubia/widget/MorePopupRelativeLayout;

    const v2, 0x30d0040

    invoke-virtual {v1, v2}, Lnubia/widget/MorePopupRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lnubia/widget/NubiaMorePopup;->mTopView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mContainer:Lnubia/widget/MorePopupRelativeLayout;

    const v2, 0x30d0045

    invoke-virtual {v1, v2}, Lnubia/widget/MorePopupRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lnubia/widget/NubiaMorePopup;->mBottomView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mContainer:Lnubia/widget/MorePopupRelativeLayout;

    const v2, 0x30d003f

    invoke-virtual {v1, v2}, Lnubia/widget/MorePopupRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnubia/widget/NubiaMorePopup;->mMockStatusBarView:Landroid/view/View;

    return-void
.end method

.method private isPortrait()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

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

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v2, :cond_0

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .restart local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v5, v5, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .local v1, "childMeasureWidth":I
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_1

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .local v0, "childMeasureHeight":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void

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
    invoke-direct {p0}, Lnubia/widget/NubiaMorePopup;->isPortrait()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x30a0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

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

    iget-object v3, p0, Lnubia/widget/NubiaMorePopup;->mEntryAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lnubia/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lnubia/widget/NubiaMorePopup;->getInitHeight()I

    move-result v1

    .local v1, "height":I
    :goto_1
    iget-boolean v3, p0, Lnubia/widget/NubiaMorePopup;->mIsOnTop:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnubia/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    const-string v4, "translationY"

    new-array v5, v7, [F

    int-to-float v6, v1

    aput v6, v5, v8

    aput v10, v5, v9

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .local v2, "totalTranslate":Landroid/animation/Animator;
    :goto_2
    invoke-virtual {v2, v12, v13}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v3, p0, Lnubia/widget/NubiaMorePopup;->mTranslateInInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v3, v7, [I

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .local v0, "backgroudAlpha":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Lnubia/widget/NubiaMorePopup$5;

    invoke-direct {v3, p0}, Lnubia/widget/NubiaMorePopup$5;-><init>(Lnubia/widget/NubiaMorePopup;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v3, p0, Lnubia/widget/NubiaMorePopup;->mEntryAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v4, v7, [Landroid/animation/Animator;

    aput-object v2, v4, v8

    aput-object v0, v4, v9

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v3, p0, Lnubia/widget/NubiaMorePopup;->mEntryAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .end local v0    # "backgroudAlpha":Landroid/animation/ValueAnimator;
    .end local v1    # "height":I
    .end local v2    # "totalTranslate":Landroid/animation/Animator;
    :cond_1
    iget-object v3, p0, Lnubia/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    goto :goto_1

    .restart local v1    # "height":I
    :cond_2
    iget-object v3, p0, Lnubia/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

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

    if-eqz p1, :cond_0

    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mTopView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mTopDivider:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mBottomDivider:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mBottomImageView:Landroid/widget/ImageView;

    iput-object v1, p0, Lnubia/widget/NubiaMorePopup;->mMoreImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mMockStatusBarView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    return-void

    :cond_0
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mTopView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mTopDivider:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mBottomDivider:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mTopImageView:Landroid/widget/ImageView;

    iput-object v1, p0, Lnubia/widget/NubiaMorePopup;->mMoreImageView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    .local v0, "flag":I
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_1
    invoke-static {v0}, Lnubia/util/UiUtils;->isFullScreenWindow(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lnubia/util/UiUtils;->isImmersedStatusBar(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mMockStatusBarView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mMockStatusBarView:Landroid/view/View;

    invoke-direct {p0, v1}, Lnubia/widget/NubiaMorePopup;->setViewBackgroundColor(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mMockStatusBarView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iput-object v1, p0, Lnubia/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    iput-object p1, p0, Lnubia/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    return-void
.end method

.method public setItemEnabled(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "isEnabled"    # Z

    .prologue
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mItemEnabled:[Z

    aput-boolean p2, v0, p1

    return-void
.end method

.method public setItems(ILnubia/widget/NubiaMorePopup$OnClickListener;)V
    .locals 1
    .param p1, "itemsId"    # I
    .param p2, "listener"    # Lnubia/widget/NubiaMorePopup$OnClickListener;

    .prologue
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lnubia/widget/NubiaMorePopup;->setItems([Ljava/lang/CharSequence;Lnubia/widget/NubiaMorePopup$OnClickListener;)V

    return-void
.end method

.method public setItems([Ljava/lang/CharSequence;Lnubia/widget/NubiaMorePopup$OnClickListener;)V
    .locals 0
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "listener"    # Lnubia/widget/NubiaMorePopup$OnClickListener;

    .prologue
    iput-object p1, p0, Lnubia/widget/NubiaMorePopup;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Lnubia/widget/NubiaMorePopup;->initItemsState([Ljava/lang/CharSequence;)V

    iput-object p2, p0, Lnubia/widget/NubiaMorePopup;->mOnClickListener:Lnubia/widget/NubiaMorePopup$OnClickListener;

    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    invoke-virtual {p0}, Lnubia/widget/NubiaMorePopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lnubia/widget/NubiaMorePopup;->createContentView()V

    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lnubia/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    iget-boolean v0, p0, Lnubia/widget/NubiaMorePopup;->mIsOnTop:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x50

    :goto_1
    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lnubia/widget/NubiaMorePopup$3;

    invoke-direct {v1, p0}, Lnubia/widget/NubiaMorePopup$3;-><init>(Lnubia/widget/NubiaMorePopup;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

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

    iget-object v2, p0, Lnubia/widget/NubiaMorePopup;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v2, p0, Lnubia/widget/NubiaMorePopup;->mIsOnTop:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnubia/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    const-string v3, "translationY"

    new-array v4, v6, [F

    aput v5, v4, v7

    iget-object v5, p0, Lnubia/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v8

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .local v1, "totalTranslate":Landroid/animation/Animator;
    :goto_1
    invoke-virtual {v1, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v2, p0, Lnubia/widget/NubiaMorePopup;->mTranslateOutInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v2, v6, [I

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .local v0, "backgroudAlpha":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lnubia/widget/NubiaMorePopup$6;

    invoke-direct {v2, p0}, Lnubia/widget/NubiaMorePopup$6;-><init>(Lnubia/widget/NubiaMorePopup;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lnubia/widget/NubiaMorePopup;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v3, v6, [Landroid/animation/Animator;

    aput-object v1, v3, v7

    aput-object v0, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Lnubia/widget/NubiaMorePopup;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lnubia/widget/NubiaMorePopup$7;

    invoke-direct {v3, p0, p1}, Lnubia/widget/NubiaMorePopup$7;-><init>(Lnubia/widget/NubiaMorePopup;Landroid/widget/PopupWindow;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lnubia/widget/NubiaMorePopup;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .end local v0    # "backgroudAlpha":Landroid/animation/ValueAnimator;
    .end local v1    # "totalTranslate":Landroid/animation/Animator;
    :cond_1
    iget-object v2, p0, Lnubia/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    const-string v3, "translationY"

    new-array v4, v6, [F

    aput v5, v4, v7

    iget-object v5, p0, Lnubia/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v8

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .restart local v1    # "totalTranslate":Landroid/animation/Animator;
    goto :goto_1

    :array_0
    .array-data 4
        0x99
        0x0
    .end array-data
.end method
