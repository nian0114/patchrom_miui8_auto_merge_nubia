.class public Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;
.super Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;
.source "ActionBarView.java"

# interfaces
.implements Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;,
        Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;,
        Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$SavedState;
    }
.end annotation


# instance fields
.field private mActionBarTopShow:Z

.field private mContext:Landroid/content/Context;

.field private mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

.field private mCustomNavView:Landroid/view/View;

.field private mDefaultUpDescription:I

.field private mDisplayOptions:I

.field mExpandedActionView:Landroid/view/View;

.field private final mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

.field private mExpandedHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

.field private mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

.field private mHomeDescription:Ljava/lang/CharSequence;

.field private mHomeDescriptionRes:I

.field private mHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIncludeTabs:Z

.field private mIndeterminateProgressStyle:I

.field private mIndeterminateProgressView:Landroid/widget/ProgressBar;

.field private mIsCollapsible:Z

.field private mItemPadding:I

.field private mListNavLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field private mLogoNavItem:Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;

.field private mMenuPrepared:Z

.field private mNavigationMode:I

.field private mOptionsMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

.field private mProgressBarPadding:I

.field private mProgressStyle:I

.field private mProgressView:Landroid/widget/ProgressBar;

.field private mSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mSubtitleStyleRes:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

.field private mTabSelector:Ljava/lang/Runnable;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleStyleRes:I

.field private mTitleView:Landroid/widget/TextView;

.field private final mUpClickListener:Landroid/view/View$OnClickListener;

.field private mUpGoerFive:Landroid/view/ViewGroup;

.field private mUserTitle:Z

.field private mWasHomeEnabled:Z

.field mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 157
    invoke-direct/range {p0 .. p2}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 129
    sget v2, Lcn/nubia/commonui/R$string;->action_bar_up_description:I

    move-object/from16 v0, p0

    iput v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDefaultUpDescription:I

    .line 130
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionBarTopShow:Z

    .line 134
    new-instance v2, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$1;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    .line 144
    new-instance v2, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$2;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    .line 158
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 160
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->setBackgroundResource(I)V

    .line 162
    sget-object v2, Lcn/nubia/commonui/R$styleable;->ActionBar:[I

    sget v3, Lcn/nubia/commonui/R$attr;->actionBarStyle:I

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 165
    .local v9, "a":Landroid/content/res/TypedArray;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    .line 166
    .local v10, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 167
    .local v14, "pm":Landroid/content/pm/PackageManager;
    sget v2, Lcn/nubia/commonui/R$styleable;->ActionBar_navigationMode:I

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mNavigationMode:I

    .line 169
    sget v2, Lcn/nubia/commonui/R$styleable;->ActionBar_title:I

    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 170
    sget v2, Lcn/nubia/commonui/R$styleable;->ActionBar_subtitle:I

    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 171
    sget v2, Lcn/nubia/commonui/R$styleable;->ActionBar_logo:I

    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 172
    sget v2, Lcn/nubia/commonui/R$styleable;->ActionBar_icon:I

    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 174
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v13

    .line 176
    .local v13, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcn/nubia/commonui/R$styleable;->ActionBar_homeLayout:I

    sget v3, Lcn/nubia/commonui/R$layout;->abc_action_bar_home:I

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 179
    .local v12, "homeResId":I
    sget v2, Lcn/nubia/commonui/R$layout;->abc_action_bar_up_container:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v13, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    .line 181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v13, v12, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v13, v12, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->setShowUp(Z)V

    .line 187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDefaultUpDescription:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 194
    .local v15, "upBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v15, :cond_0

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 198
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->setEnabled(Z)V

    .line 199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->setFocusable(Z)V

    .line 201
    sget v2, Lcn/nubia/commonui/R$styleable;->ActionBar_titleTextStyle:I

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleStyleRes:I

    .line 203
    sget v2, Lcn/nubia/commonui/R$styleable;->ActionBar_subtitleTextStyle:I

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    .line 205
    sget v2, Lcn/nubia/commonui/R$styleable;->ActionBar_progressBarStyle:I

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressStyle:I

    .line 207
    sget v2, Lcn/nubia/commonui/R$styleable;->ActionBar_indeterminateProgressStyle:I

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIndeterminateProgressStyle:I

    .line 210
    sget v2, Lcn/nubia/commonui/R$styleable;->ActionBar_progressBarPadding:I

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressBarPadding:I

    .line 212
    sget v2, Lcn/nubia/commonui/R$styleable;->ActionBar_itemPadding:I

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mItemPadding:I

    .line 215
    sget v2, Lcn/nubia/commonui/R$styleable;->ActionBar_displayOptions:I

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 218
    sget v2, Lcn/nubia/commonui/R$styleable;->ActionBar_customNavigationLayout:I

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 220
    .local v11, "customNavId":I
    if-eqz v11, :cond_1

    .line 221
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v13, v11, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 222
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mNavigationMode:I

    .line 223
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    or-int/lit8 v2, v2, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 226
    :cond_1
    sget v2, Lcn/nubia/commonui/R$styleable;->ActionBar_height:I

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContentHeight:I

    .line 228
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 230
    new-instance v2, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;

    const/4 v4, 0x0

    const v5, 0x102002c

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mLogoNavItem:Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;

    .line 233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 237
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 238
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->setImportantForAccessibility(I)V

    .line 240
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    .prologue
    .line 54
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuPrepared:Z

    return v0
.end method

.method static synthetic access$1000(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    .prologue
    .line 54
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    return-object v0
.end method

.method static synthetic access$1100(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    .prologue
    .line 54
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    return-object v0
.end method

.method static synthetic access$1200(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    .prologue
    .line 54
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->setHomeButtonEnabled(ZZ)V

    return-void
.end method

.method static synthetic access$1400(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    .prologue
    .line 54
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    return v0
.end method

.method static synthetic access$1500(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    .prologue
    .line 54
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->initTitle()V

    return-void
.end method

.method static synthetic access$1600(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mWasHomeEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    .prologue
    .line 54
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mLogoNavItem:Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    .prologue
    .line 54
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    .prologue
    .line 54
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    .prologue
    .line 54
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$800(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    .prologue
    .line 54
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    .prologue
    .line 54
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private buildHomeContentDescription()Ljava/lang/CharSequence;
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 622
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    if-eqz v4, :cond_0

    .line 623
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    .line 634
    .local v0, "homeDesc":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 635
    .local v3, "title":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 636
    .local v2, "subtitle":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 638
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 639
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/nubia/commonui/R$string;->action_bar_home_subtitle_description_format:I

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v2, v6, v8

    aput-object v0, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 649
    :goto_1
    return-object v1

    .line 625
    .end local v0    # "homeDesc":Ljava/lang/CharSequence;
    .end local v2    # "subtitle":Ljava/lang/CharSequence;
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_0
    iget v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1

    .line 626
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDefaultUpDescription:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "homeDesc":Ljava/lang/CharSequence;
    goto :goto_0

    .line 629
    .end local v0    # "homeDesc":Ljava/lang/CharSequence;
    :cond_1
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/nubia/commonui/R$string;->action_bar_home_description:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "homeDesc":Ljava/lang/CharSequence;
    goto :goto_0

    .line 643
    .restart local v2    # "subtitle":Ljava/lang/CharSequence;
    .restart local v3    # "title":Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/nubia/commonui/R$string;->action_bar_home_description_format:I

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v0, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "result":Ljava/lang/String;
    goto :goto_1

    .end local v1    # "result":Ljava/lang/String;
    :cond_3
    move-object v1, v0

    .line 649
    goto :goto_1
.end method

.method private configPresenters(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V
    .locals 4
    .param p1, "builder"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 460
    if-eqz p1, :cond_0

    .line 461
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 462
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 469
    :goto_0
    return-void

    .line 464
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V

    .line 465
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V

    .line 466
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 467
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    goto :goto_0
.end method

.method private initTitle()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 886
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_3

    .line 887
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 888
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcn/nubia/commonui/R$layout;->abc_action_bar_title_item:I

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 890
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    sget v2, Lcn/nubia/commonui/R$id;->action_bar_title:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 892
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    sget v2, Lcn/nubia/commonui/R$id;->action_bar_subtitle:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 895
    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleStyleRes:I

    if-eqz v1, :cond_0

    .line 896
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleStyleRes:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 898
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 899
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 902
    :cond_1
    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    if-eqz v1, :cond_2

    .line 903
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 905
    :cond_2
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    .line 906
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 907
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 911
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_3
    invoke-static {p0}, Lcn/nubia/commonui/actionbar/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 912
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 913
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 916
    :cond_4
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 920
    :goto_0
    return-void

    .line 918
    :cond_5
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setHomeButtonEnabled(ZZ)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "recordState"    # Z

    .prologue
    .line 579
    if-eqz p2, :cond_0

    .line 580
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mWasHomeEnabled:Z

    .line 583
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 597
    :goto_0
    return-void

    .line 592
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 593
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 596
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    goto :goto_0
.end method

.method private setTitleImpl(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 538
    invoke-static {p0}, Lcn/nubia/commonui/actionbar/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 539
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 540
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 541
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v2, :cond_3

    iget v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 546
    .local v0, "visible":Z
    :goto_0
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 548
    .end local v0    # "visible":Z
    :cond_1
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mLogoNavItem:Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;

    if-eqz v1, :cond_2

    .line 549
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mLogoNavItem:Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;

    invoke-virtual {v1, p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 551
    :cond_2
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 552
    return-void

    :cond_3
    move v0, v1

    .line 542
    goto :goto_0

    .line 546
    .restart local v0    # "visible":Z
    :cond_4
    const/16 v1, 0x8

    goto :goto_1
.end method

.method private updateHomeAccessibility(Z)V
    .locals 2
    .param p1, "homeEnabled"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 601
    if-nez p1, :cond_0

    .line 602
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 603
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 610
    :goto_0
    return-void

    .line 606
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 608
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->buildHomeContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic animateToVisibility(I)V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->animateToVisibility(I)V

    return-void
.end method

.method public bridge synthetic canShowOverflowMenu()Z
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->canShowOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public collapseActionView()V
    .locals 2

    .prologue
    .line 477
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 479
    .local v0, "item":Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;
    :goto_0
    if-eqz v0, :cond_0

    .line 480
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 482
    :cond_0
    return-void

    .line 477
    .end local v0    # "item":Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;
    :cond_1
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, v1, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    goto :goto_0
.end method

.method public bridge synthetic dismissPopupMenus()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->dismissPopupMenus()V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 863
    new-instance v0, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;

    const v1, 0x800013

    invoke-direct {v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;-><init>(I)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1398
    new-instance v0, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1403
    if-nez p1, :cond_0

    .line 1404
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 1406
    :cond_0
    return-object p1
.end method

.method public bridge synthetic getAnimatedVisibility()I
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->getAnimatedVisibility()I

    move-result v0

    return v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 850
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    return v0
.end method

.method public getNavigationMode()I
    .locals 1

    .prologue
    .line 846
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mNavigationMode:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getViewGroup()Landroid/view/ViewGroup;
    .locals 0

    .prologue
    .line 855
    return-object p0
.end method

.method public hasExpandedActionView()Z
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public initIndeterminateProgress()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 303
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIndeterminateProgressStyle:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 305
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    sget v1, Lcn/nubia/commonui/R$id;->progress_circular:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    .line 306
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 308
    return-void
.end method

.method public initProgress()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 294
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressStyle:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    .line 295
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    sget v1, Lcn/nubia/commonui/R$id;->progress_horizontal:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    .line 296
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 297
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 299
    return-void
.end method

.method public bridge synthetic isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->isOverflowMenuShowPending()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isOverflowReserved()Z
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->isOverflowReserved()Z

    move-result v0

    return v0
.end method

.method public isSplit()Z
    .locals 1

    .prologue
    .line 361
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSplitActionBar:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 245
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 247
    iput-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 248
    iput-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 249
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    if-ne v1, v2, :cond_0

    .line 250
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 252
    :cond_0
    iput-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 253
    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    .line 254
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->initTitle()V

    .line 257
    :cond_1
    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeDescriptionRes:I

    if-eqz v1, :cond_2

    .line 258
    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeDescriptionRes:I

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->setNavigationContentDescription(I)V

    .line 261
    :cond_2
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v1, :cond_4

    .line 262
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 263
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_3

    .line 264
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 265
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 267
    :cond_3
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 269
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 284
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->onDetachedFromWindow()V

    .line 285
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 286
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 288
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->hideSubMenus()Z

    .line 290
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 868
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->onFinishInflate()V

    .line 870
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 871
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 873
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1

    .line 875
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 876
    .local v0, "parent":Landroid/view/ViewParent;
    if-eq v0, p0, :cond_1

    .line 877
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 878
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parent":Landroid/view/ViewParent;
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 880
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 883
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 39
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1203
    sub-int v3, p5, p3

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v4

    sub-int v7, v3, v4

    .line 1205
    .local v7, "contentHeight":I
    if-gtz v7, :cond_1

    .line 1394
    :cond_0
    :goto_0
    return-void

    .line 1210
    :cond_1
    invoke-static/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v8

    .line 1211
    .local v8, "isLayoutRtl":Z
    if-eqz v8, :cond_b

    const/16 v22, 0x1

    .line 1212
    .local v22, "direction":I
    :goto_1
    if-eqz v8, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v11

    .line 1217
    .local v11, "menuStart":I
    :goto_2
    if-eqz v8, :cond_d

    sub-int v3, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v4

    sub-int v36, v3, v4

    .line 1218
    .local v36, "x":I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v6

    .line 1220
    .local v6, "y":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    move-object/from16 v26, v0

    .line 1222
    .local v26, "homeLayout":Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_f

    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_f

    const/16 v32, 0x1

    .line 1225
    .local v32, "showTitle":Z
    :goto_5
    const/16 v33, 0x0

    .line 1226
    .local v33, "startOffset":I
    invoke-virtual/range {v26 .. v26}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    if-ne v3, v4, :cond_2

    .line 1227
    invoke-virtual/range {v26 .. v26}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_10

    .line 1233
    const/16 v33, 0x0

    .line 1242
    :cond_2
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move/from16 v0, v36

    move/from16 v1, v33

    invoke-static {v0, v1, v8}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v3

    add-int v5, v36, v3

    .line 1244
    .end local v36    # "x":I
    .local v5, "x":I
    move/from16 v0, v33

    invoke-static {v5, v0, v8}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    .line 1246
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v3, :cond_3

    .line 1247
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mNavigationMode:I

    packed-switch v3, :pswitch_data_0

    .line 1272
    :cond_3
    :goto_7
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v3}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object/from16 v0, p0

    if-ne v3, v0, :cond_4

    .line 1273
    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-nez v8, :cond_13

    const/4 v14, 0x1

    :goto_8
    move-object/from16 v9, p0

    move v12, v6

    move v13, v7

    invoke-virtual/range {v9 .. v14}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    .line 1276
    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-nez v8, :cond_14

    const/4 v14, 0x1

    :goto_9
    move-object/from16 v9, p0

    move v12, v6

    move v13, v7

    invoke-virtual/range {v9 .. v14}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->positionMenuChild(Landroid/view/View;IIIZ)I

    .line 1280
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v3}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v3

    mul-int v3, v3, v22

    add-int/2addr v11, v3

    .line 1287
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_5

    .line 1289
    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    if-nez v8, :cond_15

    const/4 v14, 0x1

    :goto_a
    move-object/from16 v9, p0

    move v12, v6

    move v13, v7

    invoke-virtual/range {v9 .. v14}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    .line 1291
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v3

    mul-int v3, v3, v22

    add-int/2addr v11, v3

    .line 1295
    :cond_5
    const/16 v20, 0x0

    .line 1296
    .local v20, "customView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v3, :cond_16

    .line 1297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v20, v0

    .line 1302
    :cond_6
    :goto_b
    if-eqz v20, :cond_a

    .line 1303
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getLayoutDirection()I

    move-result v27

    .line 1304
    .local v27, "layoutDirection":I
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    .line 1305
    .local v28, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v28

    instance-of v3, v0, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;

    if-eqz v3, :cond_17

    check-cast v28, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;

    .end local v28    # "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v15, v28

    .line 1307
    .local v15, "ablp":Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;
    :goto_c
    if-eqz v15, :cond_18

    iget v0, v15, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;->gravity:I

    move/from16 v23, v0

    .line 1309
    .local v23, "gravity":I
    :goto_d
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v29

    .line 1311
    .local v29, "navWidth":I
    const/16 v34, 0x0

    .line 1312
    .local v34, "topMargin":I
    const/16 v16, 0x0

    .line 1313
    .local v16, "bottomMargin":I
    if-eqz v15, :cond_7

    .line 1314
    invoke-virtual {v15}, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;->getMarginStart()I

    move-result v3

    invoke-static {v5, v3, v8}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    .line 1315
    invoke-virtual {v15}, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;->getMarginEnd()I

    move-result v3

    mul-int v3, v3, v22

    add-int/2addr v11, v3

    .line 1316
    iget v0, v15, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;->topMargin:I

    move/from16 v34, v0

    .line 1317
    iget v0, v15, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;->bottomMargin:I

    move/from16 v16, v0

    .line 1320
    :cond_7
    const v3, 0x800007

    and-int v25, v23, v3

    .line 1323
    .local v25, "hgravity":I
    const/4 v3, 0x1

    move/from16 v0, v25

    if-ne v0, v3, :cond_1c

    .line 1324
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getWidth()I

    move-result v3

    sub-int v3, v3, v29

    div-int/lit8 v18, v3, 0x2

    .line 1325
    .local v18, "centeredLeft":I
    if-eqz v8, :cond_1a

    .line 1326
    add-int v19, v18, v29

    .line 1327
    .local v19, "centeredStart":I
    move/from16 v17, v18

    .line 1328
    .local v17, "centeredEnd":I
    move/from16 v0, v19

    if-le v0, v5, :cond_19

    .line 1329
    const/16 v25, 0x5

    .line 1346
    .end local v17    # "centeredEnd":I
    .end local v18    # "centeredLeft":I
    .end local v19    # "centeredStart":I
    :cond_8
    :goto_e
    const/16 v37, 0x0

    .line 1347
    .local v37, "xpos":I
    move/from16 v0, v25

    move/from16 v1, v27

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 1359
    :goto_f
    :pswitch_1
    and-int/lit8 v35, v23, 0x70

    .line 1361
    .local v35, "vgravity":I
    if-nez v23, :cond_9

    .line 1362
    const/16 v35, 0x10

    .line 1365
    :cond_9
    const/16 v38, 0x0

    .line 1366
    .local v38, "ypos":I
    sparse-switch v35, :sswitch_data_0

    .line 1381
    :goto_10
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    .line 1382
    .local v21, "customWidth":I
    add-int v3, v37, v21

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int v4, v4, v38

    move-object/from16 v0, v20

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1384
    move/from16 v0, v21

    invoke-static {v5, v0, v8}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    .line 1387
    .end local v15    # "ablp":Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;
    .end local v16    # "bottomMargin":I
    .end local v21    # "customWidth":I
    .end local v23    # "gravity":I
    .end local v25    # "hgravity":I
    .end local v27    # "layoutDirection":I
    .end local v29    # "navWidth":I
    .end local v34    # "topMargin":I
    .end local v35    # "vgravity":I
    .end local v37    # "xpos":I
    .end local v38    # "ypos":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_0

    .line 1388
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 1389
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v24, v3, 0x2

    .line 1390
    .local v24, "halfProgressHeight":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressBarPadding:I

    move/from16 v0, v24

    neg-int v9, v0

    move-object/from16 v0, p0

    iget v10, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressBarPadding:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v12}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v10, v12

    move/from16 v0, v24

    invoke-virtual {v3, v4, v9, v10, v0}, Landroid/widget/ProgressBar;->layout(IIII)V

    goto/16 :goto_0

    .line 1211
    .end local v5    # "x":I
    .end local v6    # "y":I
    .end local v11    # "menuStart":I
    .end local v20    # "customView":Landroid/view/View;
    .end local v22    # "direction":I
    .end local v24    # "halfProgressHeight":I
    .end local v26    # "homeLayout":Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;
    .end local v32    # "showTitle":Z
    .end local v33    # "startOffset":I
    :cond_b
    const/16 v22, -0x1

    goto/16 :goto_1

    .line 1212
    .restart local v22    # "direction":I
    :cond_c
    sub-int v3, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v4

    sub-int v11, v3, v4

    goto/16 :goto_2

    .line 1217
    .restart local v11    # "menuStart":I
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v36

    goto/16 :goto_3

    .line 1220
    .restart local v6    # "y":I
    .restart local v36    # "x":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    move-object/from16 v26, v0

    goto/16 :goto_4

    .line 1222
    .restart local v26    # "homeLayout":Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;
    :cond_f
    const/16 v32, 0x0

    goto/16 :goto_5

    .line 1235
    .restart local v32    # "showTitle":Z
    .restart local v33    # "startOffset":I
    :cond_10
    if-eqz v32, :cond_2

    .line 1236
    invoke-virtual/range {v26 .. v26}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->getUpWidth()I

    move-result v33

    goto/16 :goto_6

    .line 1251
    .end local v36    # "x":I
    .restart local v5    # "x":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mListNavLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    if-eqz v3, :cond_3

    .line 1252
    if-eqz v32, :cond_11

    .line 1253
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v5, v3, v8}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    .line 1255
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mListNavLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v3

    add-int/2addr v5, v3

    .line 1257
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v5, v3, v8}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    goto/16 :goto_7

    .line 1261
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    if-eqz v3, :cond_3

    .line 1262
    if-eqz v32, :cond_12

    .line 1263
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v5, v3, v8}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    .line 1264
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v3

    add-int/2addr v5, v3

    .line 1266
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v5, v3, v8}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    goto/16 :goto_7

    .line 1273
    :cond_13
    const/4 v14, 0x0

    goto/16 :goto_8

    .line 1276
    :cond_14
    const/4 v14, 0x0

    goto/16 :goto_9

    .line 1289
    :cond_15
    const/4 v14, 0x0

    goto/16 :goto_a

    .line 1298
    .restart local v20    # "customView":Landroid/view/View;
    :cond_16
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v3, :cond_6

    .line 1300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v20, v0

    goto/16 :goto_b

    .line 1305
    .restart local v27    # "layoutDirection":I
    .restart local v28    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_17
    const/4 v15, 0x0

    goto/16 :goto_c

    .line 1307
    .end local v28    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v15    # "ablp":Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;
    :cond_18
    const v23, 0x800013

    goto/16 :goto_d

    .line 1330
    .restart local v16    # "bottomMargin":I
    .restart local v17    # "centeredEnd":I
    .restart local v18    # "centeredLeft":I
    .restart local v19    # "centeredStart":I
    .restart local v23    # "gravity":I
    .restart local v25    # "hgravity":I
    .restart local v29    # "navWidth":I
    .restart local v34    # "topMargin":I
    :cond_19
    move/from16 v0, v17

    if-ge v0, v11, :cond_8

    .line 1331
    const/16 v25, 0x3

    goto/16 :goto_e

    .line 1334
    .end local v17    # "centeredEnd":I
    .end local v19    # "centeredStart":I
    :cond_1a
    move/from16 v19, v18

    .line 1335
    .restart local v19    # "centeredStart":I
    add-int v17, v18, v29

    .line 1336
    .restart local v17    # "centeredEnd":I
    move/from16 v0, v19

    if-ge v0, v5, :cond_1b

    .line 1337
    const/16 v25, 0x3

    goto/16 :goto_e

    .line 1338
    :cond_1b
    move/from16 v0, v17

    if-le v0, v11, :cond_8

    .line 1339
    const/16 v25, 0x5

    goto/16 :goto_e

    .line 1342
    .end local v17    # "centeredEnd":I
    .end local v18    # "centeredLeft":I
    .end local v19    # "centeredStart":I
    :cond_1c
    if-nez v23, :cond_8

    .line 1343
    const v25, 0x800003

    goto/16 :goto_e

    .line 1349
    .restart local v37    # "xpos":I
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getWidth()I

    move-result v3

    sub-int v3, v3, v29

    div-int/lit8 v37, v3, 0x2

    .line 1350
    goto/16 :goto_f

    .line 1352
    :pswitch_5
    if-eqz v8, :cond_1d

    move/from16 v37, v11

    .line 1353
    :goto_11
    goto/16 :goto_f

    :cond_1d
    move/from16 v37, v5

    .line 1352
    goto :goto_11

    .line 1355
    :pswitch_6
    if-eqz v8, :cond_1e

    sub-int v37, v5, v29

    :goto_12
    goto/16 :goto_f

    :cond_1e
    sub-int v37, v11, v29

    goto :goto_12

    .line 1368
    .restart local v35    # "vgravity":I
    .restart local v38    # "ypos":I
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v31

    .line 1369
    .local v31, "paddedTop":I
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v4

    sub-int v30, v3, v4

    .line 1370
    .local v30, "paddedBottom":I
    sub-int v3, v30, v31

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v38, v3, 0x2

    .line 1372
    goto/16 :goto_10

    .line 1374
    .end local v30    # "paddedBottom":I
    .end local v31    # "paddedTop":I
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v3

    add-int v38, v3, v34

    .line 1375
    goto/16 :goto_10

    .line 1377
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v38, v3, v16

    goto/16 :goto_10

    .line 1247
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1347
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_1
        :pswitch_6
    .end packed-switch

    .line 1366
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x30 -> :sswitch_1
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 49
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 959
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getChildCount()I

    move-result v8

    .line 960
    .local v8, "childCount":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIsCollapsible:Z

    move/from16 v45, v0

    if-eqz v45, :cond_6

    .line 961
    const/16 v43, 0x0

    .line 962
    .local v43, "visibleChildren":I
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_0
    move/from16 v0, v26

    if-ge v0, v8, :cond_2

    .line 963
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 964
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v45

    const/16 v46, 0x8

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    if-ne v7, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getChildCount()I

    move-result v45

    if-eqz v45, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    if-eq v7, v0, :cond_1

    .line 967
    add-int/lit8 v43, v43, 0x1

    .line 962
    :cond_1
    add-int/lit8 v26, v26, 0x1

    goto :goto_0

    .line 971
    .end local v7    # "child":Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v39

    .line 972
    .local v39, "upChildCount":I
    const/16 v26, 0x0

    :goto_1
    move/from16 v0, v26

    move/from16 v1, v39

    if-ge v0, v1, :cond_4

    .line 973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 974
    .restart local v7    # "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v45

    const/16 v46, 0x8

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_3

    .line 975
    add-int/lit8 v43, v43, 0x1

    .line 972
    :cond_3
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    .line 979
    .end local v7    # "child":Landroid/view/View;
    :cond_4
    if-nez v43, :cond_6

    .line 981
    const/16 v45, 0x0

    const/16 v46, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    .line 1198
    .end local v26    # "i":I
    .end local v39    # "upChildCount":I
    .end local v43    # "visibleChildren":I
    :cond_5
    :goto_2
    return-void

    .line 986
    :cond_6
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v44

    .line 987
    .local v44, "widthMode":I
    const/high16 v45, 0x40000000    # 2.0f

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_7

    .line 988
    new-instance v45, Ljava/lang/IllegalStateException;

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " can only be used "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-direct/range {v45 .. v46}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v45

    .line 994
    :cond_7
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    .line 995
    .local v18, "heightMode":I
    const/high16 v45, -0x80000000

    move/from16 v0, v18

    move/from16 v1, v45

    if-eq v0, v1, :cond_8

    .line 996
    new-instance v45, Ljava/lang/IllegalStateException;

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " can only be used "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "with android:layout_height=\"wrap_content\""

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-direct/range {v45 .. v46}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v45

    .line 1001
    :cond_8
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 1003
    .local v10, "contentWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v45, v0

    if-ltz v45, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v31, v0

    .line 1006
    .local v31, "maxHeight":I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v45

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v46

    add-int v42, v45, v46

    .line 1007
    .local v42, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v34

    .line 1008
    .local v34, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v35

    .line 1009
    .local v35, "paddingRight":I
    sub-int v17, v31, v42

    .line 1010
    .local v17, "height":I
    const/high16 v45, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v45

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 1012
    .local v9, "childSpecHeight":I
    const/high16 v45, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v45

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 1015
    .local v16, "exactHeightSpec":I
    sub-int v45, v10, v34

    sub-int v6, v45, v35

    .line 1016
    .local v6, "availableWidth":I
    div-int/lit8 v28, v6, 0x2

    .line 1017
    .local v28, "leftOfCenter":I
    move/from16 v36, v28

    .line 1019
    .local v36, "rightOfCenter":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v45, v0

    if-eqz v45, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v45

    const/16 v46, 0x8

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    move/from16 v45, v0

    and-int/lit8 v45, v45, 0x8

    if-eqz v45, :cond_17

    const/16 v37, 0x1

    .line 1023
    .local v37, "showTitle":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v45, v0

    if-eqz v45, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    move-object/from16 v20, v0

    .line 1026
    .local v20, "homeLayout":Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;
    :goto_5
    invoke-virtual/range {v20 .. v20}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    .line 1028
    .local v21, "homeLp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v45, v0

    if-gez v45, :cond_19

    .line 1029
    const/high16 v45, -0x80000000

    move/from16 v0, v45

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    .line 1044
    .local v24, "homeWidthSpec":I
    :goto_6
    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->measure(II)V

    .line 1046
    const/16 v23, 0x0

    .line 1047
    .local v23, "homeWidth":I
    invoke-virtual/range {v20 .. v20}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v45

    const/16 v46, 0x8

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_9

    invoke-virtual/range {v20 .. v20}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->getParent()Landroid/view/ViewParent;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v46, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    if-eq v0, v1, :cond_a

    :cond_9
    if-eqz v37, :cond_b

    .line 1049
    :cond_a
    invoke-virtual/range {v20 .. v20}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->getMeasuredWidth()I

    move-result v23

    .line 1050
    invoke-virtual/range {v20 .. v20}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->getStartOffset()I

    move-result v45

    add-int v22, v23, v45

    .line 1051
    .local v22, "homeOffsetWidth":I
    const/16 v45, 0x0

    sub-int v46, v6, v22

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1052
    const/16 v45, 0x0

    sub-int v46, v6, v22

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 1055
    .end local v22    # "homeOffsetWidth":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    move-object/from16 v45, v0

    if-eqz v45, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_c

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move/from16 v2, v16

    move/from16 v3, v46

    invoke-virtual {v0, v1, v6, v2, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v6

    .line 1058
    const/16 v45, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v46

    sub-int v46, v36, v46

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v36

    .line 1062
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v45, v0

    if-eqz v45, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v45

    const/16 v46, 0x8

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_d

    .line 1064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v6, v9, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v6

    .line 1066
    const/16 v45, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v46

    sub-int v46, v36, v46

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v36

    .line 1070
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v45, v0

    if-nez v45, :cond_e

    .line 1071
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mNavigationMode:I

    move/from16 v45, v0

    packed-switch v45, :pswitch_data_0

    .line 1105
    :cond_e
    :goto_7
    const/4 v15, 0x0

    .line 1106
    .local v15, "customView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v45, v0

    if-eqz v45, :cond_1c

    .line 1107
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 1113
    :cond_f
    :goto_8
    if-eqz v15, :cond_13

    .line 1114
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    .line 1116
    .local v30, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v30

    instance-of v0, v0, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;

    move/from16 v45, v0

    if-eqz v45, :cond_1d

    move-object/from16 v45, v30

    check-cast v45, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;

    move-object/from16 v5, v45

    .line 1119
    .local v5, "ablp":Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;
    :goto_9
    const/16 v25, 0x0

    .line 1120
    .local v25, "horizontalMargin":I
    const/16 v41, 0x0

    .line 1121
    .local v41, "verticalMargin":I
    if-eqz v5, :cond_10

    .line 1122
    iget v0, v5, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;->leftMargin:I

    move/from16 v45, v0

    iget v0, v5, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;->rightMargin:I

    move/from16 v46, v0

    add-int v25, v45, v46

    .line 1123
    iget v0, v5, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;->topMargin:I

    move/from16 v45, v0

    iget v0, v5, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;->bottomMargin:I

    move/from16 v46, v0

    add-int v41, v45, v46

    .line 1130
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v45, v0

    if-gtz v45, :cond_1e

    .line 1131
    const/high16 v12, -0x80000000

    .line 1136
    .local v12, "customNavHeightMode":I
    :goto_a
    const/16 v45, 0x0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v46, v0

    if-ltz v46, :cond_11

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v46, v0

    move/from16 v0, v46

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v17

    .end local v17    # "height":I
    :cond_11
    sub-int v46, v17, v41

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1140
    .local v11, "customNavHeight":I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v45, v0

    const/16 v46, -0x2

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_20

    const/high16 v14, 0x40000000    # 2.0f

    .line 1142
    .local v14, "customNavWidthMode":I
    :goto_b
    const/16 v46, 0x0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v45, v0

    if-ltz v45, :cond_21

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v45, v0

    move/from16 v0, v45

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v45

    :goto_c
    sub-int v45, v45, v25

    move/from16 v0, v46

    move/from16 v1, v45

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1145
    .local v13, "customNavWidth":I
    if-eqz v5, :cond_22

    iget v0, v5, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;->gravity:I

    move/from16 v45, v0

    :goto_d
    and-int/lit8 v19, v45, 0x7

    .line 1151
    .local v19, "hgrav":I
    const/16 v45, 0x1

    move/from16 v0, v19

    move/from16 v1, v45

    if-ne v0, v1, :cond_12

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v45, v0

    const/16 v46, -0x1

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_12

    .line 1153
    move/from16 v0, v28

    move/from16 v1, v36

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v45

    mul-int/lit8 v13, v45, 0x2

    .line 1156
    :cond_12
    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v45

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v46

    move/from16 v0, v45

    move/from16 v1, v46

    invoke-virtual {v15, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1159
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v45

    add-int v45, v45, v25

    sub-int v6, v6, v45

    .line 1166
    .end local v5    # "ablp":Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;
    .end local v11    # "customNavHeight":I
    .end local v12    # "customNavHeightMode":I
    .end local v13    # "customNavWidth":I
    .end local v14    # "customNavWidthMode":I
    .end local v19    # "hgrav":I
    .end local v25    # "horizontalMargin":I
    .end local v30    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v41    # "verticalMargin":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v45, v0

    add-int v46, v6, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v47, v0

    const/high16 v48, 0x40000000    # 2.0f

    invoke-static/range {v47 .. v48}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v47

    const/16 v48, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move/from16 v2, v46

    move/from16 v3, v47

    move/from16 v4, v48

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v6

    .line 1169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v45, v0

    if-eqz v45, :cond_14

    .line 1170
    const/16 v45, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v46

    sub-int v46, v28, v46

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 1174
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v45, v0

    if-gtz v45, :cond_25

    .line 1175
    const/16 v32, 0x0

    .line 1176
    .local v32, "measuredHeight":I
    const/16 v26, 0x0

    .restart local v26    # "i":I
    :goto_e
    move/from16 v0, v26

    if-ge v0, v8, :cond_23

    .line 1177
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v40

    .line 1178
    .local v40, "v":Landroid/view/View;
    invoke-virtual/range {v40 .. v40}, Landroid/view/View;->getMeasuredHeight()I

    move-result v45

    add-int v33, v45, v42

    .line 1179
    .local v33, "paddedViewHeight":I
    move/from16 v0, v33

    move/from16 v1, v32

    if-le v0, v1, :cond_15

    .line 1180
    move/from16 v32, v33

    .line 1176
    :cond_15
    add-int/lit8 v26, v26, 0x1

    goto :goto_e

    .line 1003
    .end local v6    # "availableWidth":I
    .end local v9    # "childSpecHeight":I
    .end local v15    # "customView":Landroid/view/View;
    .end local v16    # "exactHeightSpec":I
    .end local v20    # "homeLayout":Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;
    .end local v21    # "homeLp":Landroid/view/ViewGroup$LayoutParams;
    .end local v23    # "homeWidth":I
    .end local v24    # "homeWidthSpec":I
    .end local v26    # "i":I
    .end local v28    # "leftOfCenter":I
    .end local v31    # "maxHeight":I
    .end local v32    # "measuredHeight":I
    .end local v33    # "paddedViewHeight":I
    .end local v34    # "paddingLeft":I
    .end local v35    # "paddingRight":I
    .end local v36    # "rightOfCenter":I
    .end local v37    # "showTitle":Z
    .end local v40    # "v":Landroid/view/View;
    .end local v42    # "verticalPadding":I
    :cond_16
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v31

    goto/16 :goto_3

    .line 1019
    .restart local v6    # "availableWidth":I
    .restart local v9    # "childSpecHeight":I
    .restart local v16    # "exactHeightSpec":I
    .restart local v17    # "height":I
    .restart local v28    # "leftOfCenter":I
    .restart local v31    # "maxHeight":I
    .restart local v34    # "paddingLeft":I
    .restart local v35    # "paddingRight":I
    .restart local v36    # "rightOfCenter":I
    .restart local v42    # "verticalPadding":I
    :cond_17
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 1023
    .restart local v37    # "showTitle":Z
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    move-object/from16 v20, v0

    goto/16 :goto_5

    .line 1032
    .restart local v20    # "homeLayout":Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;
    .restart local v21    # "homeLp":Landroid/view/ViewGroup$LayoutParams;
    :cond_19
    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v45, v0

    const/high16 v46, 0x40000000    # 2.0f

    invoke-static/range {v45 .. v46}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    .restart local v24    # "homeWidthSpec":I
    goto/16 :goto_6

    .line 1073
    .restart local v23    # "homeWidth":I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mListNavLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    move-object/from16 v45, v0

    if-eqz v45, :cond_e

    .line 1074
    if-eqz v37, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v45, v0

    mul-int/lit8 v27, v45, 0x2

    .line 1076
    .local v27, "itemPaddingSize":I
    :goto_f
    const/16 v45, 0x0

    sub-int v46, v6, v27

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1078
    const/16 v45, 0x0

    sub-int v46, v28, v27

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 1079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mListNavLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    move-object/from16 v45, v0

    const/high16 v46, -0x80000000

    move/from16 v0, v46

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v46

    const/high16 v47, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v47

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v47

    invoke-virtual/range {v45 .. v47}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->measure(II)V

    .line 1082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mListNavLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getMeasuredWidth()I

    move-result v29

    .line 1083
    .local v29, "listNavWidth":I
    const/16 v45, 0x0

    sub-int v46, v6, v29

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1084
    const/16 v45, 0x0

    sub-int v46, v28, v29

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 1085
    goto/16 :goto_7

    .line 1074
    .end local v27    # "itemPaddingSize":I
    .end local v29    # "listNavWidth":I
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v27, v0

    goto :goto_f

    .line 1088
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    move-object/from16 v45, v0

    if-eqz v45, :cond_e

    .line 1089
    if-eqz v37, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v45, v0

    mul-int/lit8 v27, v45, 0x2

    .line 1091
    .restart local v27    # "itemPaddingSize":I
    :goto_10
    const/16 v45, 0x0

    sub-int v46, v6, v27

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1093
    const/16 v45, 0x0

    sub-int v46, v28, v27

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 1094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    move-object/from16 v45, v0

    const/high16 v46, -0x80000000

    move/from16 v0, v46

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v46

    const/high16 v47, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v47

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v47

    invoke-virtual/range {v45 .. v47}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->measure(II)V

    .line 1097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v38

    .line 1098
    .local v38, "tabWidth":I
    const/16 v45, 0x0

    sub-int v46, v6, v38

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1099
    const/16 v45, 0x0

    sub-int v46, v28, v38

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v28

    goto/16 :goto_7

    .line 1089
    .end local v27    # "itemPaddingSize":I
    .end local v38    # "tabWidth":I
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v27, v0

    goto :goto_10

    .line 1108
    .restart local v15    # "customView":Landroid/view/View;
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    move/from16 v45, v0

    and-int/lit8 v45, v45, 0x10

    if-eqz v45, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v45, v0

    if-eqz v45, :cond_f

    .line 1110
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    goto/16 :goto_8

    .line 1116
    .restart local v30    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1d
    const/4 v5, 0x0

    goto/16 :goto_9

    .line 1133
    .restart local v5    # "ablp":Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;
    .restart local v25    # "horizontalMargin":I
    .restart local v41    # "verticalMargin":I
    :cond_1e
    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v45, v0

    const/16 v46, -0x2

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_1f

    const/high16 v12, 0x40000000    # 2.0f

    .restart local v12    # "customNavHeightMode":I
    :goto_11
    goto/16 :goto_a

    .end local v12    # "customNavHeightMode":I
    :cond_1f
    const/high16 v12, -0x80000000

    goto :goto_11

    .line 1140
    .end local v17    # "height":I
    .restart local v11    # "customNavHeight":I
    .restart local v12    # "customNavHeightMode":I
    :cond_20
    const/high16 v14, -0x80000000

    goto/16 :goto_b

    .restart local v14    # "customNavWidthMode":I
    :cond_21
    move/from16 v45, v6

    .line 1142
    goto/16 :goto_c

    .line 1145
    .restart local v13    # "customNavWidth":I
    :cond_22
    const v45, 0x800013

    goto/16 :goto_d

    .line 1183
    .end local v5    # "ablp":Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;
    .end local v11    # "customNavHeight":I
    .end local v12    # "customNavHeightMode":I
    .end local v13    # "customNavWidth":I
    .end local v14    # "customNavWidthMode":I
    .end local v25    # "horizontalMargin":I
    .end local v30    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v41    # "verticalMargin":I
    .restart local v26    # "i":I
    .restart local v32    # "measuredHeight":I
    :cond_23
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v10, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    .line 1188
    .end local v26    # "i":I
    .end local v32    # "measuredHeight":I
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    move-object/from16 v45, v0

    if-eqz v45, :cond_24

    .line 1189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    move-object/from16 v45, v0

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v46

    invoke-virtual/range {v45 .. v46}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->setContentHeight(I)V

    .line 1192
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v45, v0

    if-eqz v45, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v45

    const/16 v46, 0x8

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_5

    .line 1193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressBarPadding:I

    move/from16 v46, v0

    mul-int/lit8 v46, v46, 0x2

    sub-int v46, v10, v46

    const/high16 v47, 0x40000000    # 2.0f

    invoke-static/range {v46 .. v47}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v46

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v47

    const/high16 v48, -0x80000000

    invoke-static/range {v47 .. v48}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v47

    invoke-virtual/range {v45 .. v47}, Landroid/widget/ProgressBar;->measure(II)V

    goto/16 :goto_2

    .line 1185
    :cond_25
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v10, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    goto :goto_12

    .line 1071
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "p"    # Landroid/os/Parcelable;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1428
    move-object v1, p1

    check-cast v1, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$SavedState;

    .line 1430
    .local v1, "state":Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$SavedState;
    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1432
    iget v2, v1, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mOptionsMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_0

    .line 1434
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mOptionsMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    iget v3, v1, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1436
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 1437
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1441
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_0
    iget-boolean v2, v1, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    if-eqz v2, :cond_1

    .line 1442
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->postShowOverflowMenu()V

    .line 1444
    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1411
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1412
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$SavedState;

    invoke-direct {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1414
    .local v0, "state":Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$SavedState;
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    if-eqz v2, :cond_0

    .line 1416
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v2

    iput v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    .line 1420
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v2

    iput-boolean v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    .line 1422
    return-object v0
.end method

.method public bridge synthetic postShowOverflowMenu()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->postShowOverflowMenu()V

    return-void
.end method

.method public setActionBarShowOrHide(Z)V
    .locals 0
    .param p1, "isShow"    # Z

    .prologue
    .line 1952
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionBarTopShow:Z

    .line 1953
    return-void
.end method

.method public setCollapsible(Z)V
    .locals 0
    .param p1, "collapsible"    # Z

    .prologue
    .line 927
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIsCollapsible:Z

    .line 928
    return-void
.end method

.method public bridge synthetic setContentHeight(I)V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->setContentHeight(I)V

    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 485
    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    .line 486
    .local v0, "showCustom":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 487
    invoke-static {p0}, Lcn/nubia/commonui/actionbar/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 489
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 490
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 492
    :cond_1
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 493
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 494
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 496
    :cond_2
    return-void

    .line 485
    .end local v0    # "showCustom":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayOptions(I)V
    .locals 11
    .param p1, "options"    # I

    .prologue
    const/4 v0, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 653
    iget v9, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    if-ne v9, v0, :cond_6

    .line 655
    .local v0, "flagsChanged":I
    :goto_0
    iput p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 657
    and-int/lit8 v9, v0, 0x3f

    if-eqz v9, :cond_11

    .line 658
    invoke-static {p0}, Lcn/nubia/commonui/actionbar/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 660
    and-int/lit8 v9, v0, 0x4

    if-eqz v9, :cond_0

    .line 661
    and-int/lit8 v9, p1, 0x4

    if-eqz v9, :cond_7

    move v4, v7

    .line 662
    .local v4, "setUp":Z
    :goto_1
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v9, v4}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->setShowUp(Z)V

    .line 669
    if-eqz v4, :cond_0

    .line 670
    invoke-virtual {p0, v7}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    .line 674
    .end local v4    # "setUp":Z
    :cond_0
    and-int/lit8 v9, v0, 0x1

    if-eqz v9, :cond_1

    .line 675
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_8

    and-int/lit8 v9, p1, 0x1

    if-eqz v9, :cond_8

    move v3, v7

    .line 677
    .local v3, "logoVis":Z
    :goto_2
    iget-object v10, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    if-eqz v3, :cond_9

    iget-object v9, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    :goto_3
    invoke-virtual {v10, v9}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 680
    .end local v3    # "logoVis":Z
    :cond_1
    and-int/lit8 v9, v0, 0x8

    if-eqz v9, :cond_2

    .line 681
    and-int/lit8 v9, p1, 0x8

    if-eqz v9, :cond_a

    .line 682
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->initTitle()V

    .line 688
    :cond_2
    :goto_4
    and-int/lit8 v9, p1, 0x2

    if-eqz v9, :cond_b

    move v5, v7

    .line 689
    .local v5, "showHome":Z
    :goto_5
    iget v9, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_c

    move v1, v7

    .line 690
    .local v1, "homeAsUp":Z
    :goto_6
    if-nez v5, :cond_d

    if-eqz v1, :cond_d

    move v6, v7

    .line 692
    .local v6, "titleUp":Z
    :goto_7
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v9, v5}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->setShowIcon(Z)V

    .line 698
    if-nez v5, :cond_3

    if-eqz v6, :cond_e

    :cond_3
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v9, :cond_e

    move v2, v8

    .line 700
    .local v2, "homeVis":I
    :goto_8
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v9, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    .line 702
    and-int/lit8 v9, v0, 0x10

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v9, :cond_4

    .line 704
    and-int/lit8 v9, p1, 0x10

    if-eqz v9, :cond_f

    .line 705
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v9}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 711
    :cond_4
    :goto_9
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_5

    and-int/lit8 v9, v0, 0x20

    if-eqz v9, :cond_5

    .line 713
    and-int/lit8 v9, p1, 0x20

    if-eqz v9, :cond_10

    .line 714
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 715
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 722
    :cond_5
    :goto_a
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->requestLayout()V

    .line 729
    .end local v1    # "homeAsUp":Z
    .end local v2    # "homeVis":I
    .end local v5    # "showHome":Z
    .end local v6    # "titleUp":Z
    :goto_b
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v7

    invoke-direct {p0, v7}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 730
    return-void

    .line 653
    .end local v0    # "flagsChanged":I
    :cond_6
    iget v9, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    xor-int v0, p1, v9

    goto/16 :goto_0

    .restart local v0    # "flagsChanged":I
    :cond_7
    move v4, v8

    .line 661
    goto/16 :goto_1

    :cond_8
    move v3, v8

    .line 675
    goto :goto_2

    .line 677
    .restart local v3    # "logoVis":Z
    :cond_9
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    .line 684
    .end local v3    # "logoVis":Z
    :cond_a
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v10, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_4

    :cond_b
    move v5, v8

    .line 688
    goto :goto_5

    .restart local v5    # "showHome":Z
    :cond_c
    move v1, v8

    .line 689
    goto :goto_6

    .restart local v1    # "homeAsUp":Z
    :cond_d
    move v6, v8

    .line 690
    goto :goto_7

    .line 698
    .restart local v6    # "titleUp":Z
    :cond_e
    const/16 v2, 0x8

    goto :goto_8

    .line 707
    .restart local v2    # "homeVis":I
    :cond_f
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v9}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_9

    .line 717
    :cond_10
    iget-object v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 718
    iget-object v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_a

    .line 724
    .end local v1    # "homeAsUp":Z
    .end local v2    # "homeVis":I
    .end local v5    # "showHome":Z
    .end local v6    # "titleUp":Z
    :cond_11
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->invalidate()V

    goto :goto_b
.end method

.method public setEmbeddedTabView(Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;)V
    .locals 4
    .param p1, "tabs"    # Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    .prologue
    const/4 v2, 0x1

    .line 374
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_0

    .line 375
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 377
    :cond_0
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    .line 378
    if-eqz p1, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIncludeTabs:Z

    .line 379
    iget-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mNavigationMode:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 380
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 381
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 382
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 383
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 384
    invoke-virtual {p1, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 386
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void

    .line 378
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 575
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->setHomeButtonEnabled(ZZ)V

    .line 576
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;)V
    .locals 9
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "cb"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x2

    .line 394
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mOptionsMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    if-ne p1, v4, :cond_0

    .line 457
    :goto_0
    return-void

    .line 396
    :cond_0
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mOptionsMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    if-eqz v4, :cond_1

    .line 397
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mOptionsMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v4, v5}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter;)V

    .line 398
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mOptionsMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v4, v5}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter;)V

    :cond_1
    move-object v0, p1

    .line 401
    check-cast v0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    .line 402
    .local v0, "builder":Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;
    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mOptionsMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    .line 403
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-eqz v4, :cond_2

    .line 404
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v4}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 405
    .local v3, "oldParent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_2

    .line 406
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 409
    .end local v3    # "oldParent":Landroid/view/ViewGroup;
    :cond_2
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    if-nez v4, :cond_3

    .line 410
    new-instance v4, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    iget-object v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    .line 412
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v4, p2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setCallback(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;)V

    .line 413
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    sget v5, Lcn/nubia/commonui/R$id;->action_menu_presenter:I

    invoke-virtual {v4, v5}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setId(I)V

    .line 414
    new-instance v4, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$1;)V

    iput-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 418
    :cond_3
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 421
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSplitActionBar:Z

    if-nez v4, :cond_5

    .line 422
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcn/nubia/commonui/R$bool;->action_bar_expanded_action_views_exclusive:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 425
    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->configPresenters(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V

    .line 426
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v4, p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    .line 427
    .local v2, "menuView":Lcn/nubia/commonui/actionbar/widget/ActionMenuView;
    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 428
    .restart local v3    # "oldParent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_4

    if-eq v3, p0, :cond_4

    .line 429
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 431
    :cond_4
    invoke-virtual {p0, v2, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 456
    .end local v3    # "oldParent":Landroid/view/ViewGroup;
    :goto_1
    iput-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    goto/16 :goto_0

    .line 433
    .end local v2    # "menuView":Lcn/nubia/commonui/actionbar/widget/ActionMenuView;
    :cond_5
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 435
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 438
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    const v5, 0x7fffffff

    invoke-virtual {v4, v5}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setItemLimit(I)V

    .line 440
    iput v8, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 441
    iput v7, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 442
    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->configPresenters(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V

    .line 443
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v4, p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    .line 444
    .restart local v2    # "menuView":Lcn/nubia/commonui/actionbar/widget/ActionMenuView;
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_7

    .line 445
    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 446
    .restart local v3    # "oldParent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_6

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eq v3, v4, :cond_6

    .line 447
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 449
    :cond_6
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getAnimatedVisibility()I

    move-result v4

    invoke-virtual {v2, v4}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->setVisibility(I)V

    .line 450
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 453
    .end local v3    # "oldParent":Landroid/view/ViewGroup;
    :cond_7
    invoke-virtual {v2, v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public setMenuPrepared()V
    .locals 1

    .prologue
    .line 389
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuPrepared:Z

    .line 390
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1465
    iput p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeDescriptionRes:I

    .line 1466
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    .line 1467
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 1468
    return-void

    .line 1466
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSplitToolbar(Z)V
    .locals 4
    .param p1, "splitActionBar"    # Z

    .prologue
    const/4 v2, 0x0

    .line 312
    iget-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSplitActionBar:Z

    if-eq v1, p1, :cond_5

    .line 313
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-eqz v1, :cond_2

    .line 314
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 315
    .local v0, "oldParent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 316
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 318
    :cond_0
    if-eqz p1, :cond_6

    .line 319
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 320
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 322
    :cond_1
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v3, -0x1

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 327
    :goto_0
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->requestLayout()V

    .line 329
    .end local v0    # "oldParent":Landroid/view/ViewGroup;
    :cond_2
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 335
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_7

    iget-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionBarTopShow:Z

    if-eqz v1, :cond_7

    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 340
    :cond_3
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    if-eqz v1, :cond_4

    .line 341
    if-nez p1, :cond_8

    .line 342
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/commonui/R$bool;->action_bar_expanded_action_views_exclusive:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 356
    :cond_4
    :goto_2
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->setSplitToolbar(Z)V

    .line 358
    :cond_5
    return-void

    .line 324
    .restart local v0    # "oldParent":Landroid/view/ViewGroup;
    :cond_6
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 325
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v3, -0x2

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 335
    .end local v0    # "oldParent":Landroid/view/ViewGroup;
    :cond_7
    const/16 v1, 0x8

    goto :goto_1

    .line 347
    :cond_8
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 349
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 353
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setItemLimit(I)V

    goto :goto_2
.end method

.method public bridge synthetic setSplitView(Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->setSplitView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public bridge synthetic setSplitWhenNarrow(Z)V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->setSplitWhenNarrow(Z)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 559
    invoke-static {p0}, Lcn/nubia/commonui/actionbar/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 560
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 561
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 562
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 564
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v1, :cond_3

    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 568
    .local v0, "visible":Z
    :goto_1
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 570
    .end local v0    # "visible":Z
    :cond_1
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 571
    return-void

    :cond_2
    move v1, v3

    .line 563
    goto :goto_0

    :cond_3
    move v0, v2

    .line 564
    goto :goto_1

    .restart local v0    # "visible":Z
    :cond_4
    move v2, v3

    .line 568
    goto :goto_2
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 512
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUserTitle:Z

    .line 513
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 514
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "cb"    # Landroid/view/Window$Callback;

    .prologue
    .line 279
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mWindowCallback:Landroid/view/Window$Callback;

    .line 280
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 526
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUserTitle:Z

    if-nez v0, :cond_0

    .line 528
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 535
    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 932
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic showOverflowMenu()Z
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->showOverflowMenu()Z

    move-result v0

    return v0
.end method
