.class Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;
.super Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;
.source "AppCompatDelegateImplV7.java"

# interfaces
.implements Landroid/support/v4/view/LayoutInflaterFactory;
.implements Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$ListMenuDecorView;,
        Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;,
        Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;,
        Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;,
        Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$ActionModeCallbackWrapper;
    }
.end annotation


# instance fields
.field private mActionMenuPresenterCallback:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;

.field mActionMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

.field mActionModePopup:Landroid/widget/PopupWindow;

.field mActionModeView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

.field private mClosingActionMenu:Z

.field private mDecorContentParent:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

.field private mEnableDefaultActionBarUp:Z

.field private mFeatureIndeterminateProgress:Z

.field private mFeatureProgress:Z

.field private mInvalidatePanelMenuFeatures:I

.field private mInvalidatePanelMenuPosted:Z

.field private final mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

.field private mPanelMenuPresenterCallback:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;

.field private mPanels:[Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

.field private mPreparedPanel:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

.field mShowActionModePopup:Ljava/lang/Runnable;

.field private mStatusGuard:Landroid/view/View;

.field private mSubDecor:Landroid/view/ViewGroup;

.field private mSubDecorInstalled:Z

.field private mTempRect1:Landroid/graphics/Rect;

.field private mTempRect2:Landroid/graphics/Rect;

.field private mTintViewInflater:Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater;

.field private mTitleView:Landroid/widget/TextView;

.field private mWindowDecor:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Lcn/nubia/commonui/actionbar/app/AppCompatCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "window"    # Landroid/view/Window;
    .param p3, "callback"    # Lcn/nubia/commonui/actionbar/app/AppCompatCallback;

    .prologue
    .line 143
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;-><init>(Landroid/content/Context;Landroid/view/Window;Lcn/nubia/commonui/actionbar/app/AppCompatCallback;)V

    .line 121
    new-instance v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$1;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$1;-><init>(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    .prologue
    .line 91
    iget v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mInvalidatePanelMenuFeatures:I

    return v0
.end method

.method static synthetic access$002(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;
    .param p1, "x1"    # I

    .prologue
    .line 91
    iput p1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mInvalidatePanelMenuFeatures:I

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;
    .param p1, "x1"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->doInvalidatePanelMenu(I)V

    return-void
.end method

.method static synthetic access$1200(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;
    .param p1, "x1"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->closePanel(I)V

    return-void
.end method

.method static synthetic access$202(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;
    .param p1, "x1"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mInvalidatePanelMenuPosted:Z

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;I)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;
    .param p1, "x1"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->updateStatusGuard(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;Landroid/view/Menu;)Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;
    .param p1, "x1"    # Landroid/view/Menu;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->findMenuPanel(Landroid/view/Menu;)Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;ILcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/Menu;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;
    .param p3, "x3"    # Landroid/view/Menu;

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->callOnPanelClosed(ILcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;
    .param p1, "x1"    # Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;
    .param p2, "x2"    # Z

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->closePanel(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;
    .param p1, "x1"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->checkCloseActionMenu(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V

    return-void
.end method

.method private applyFixedSizeWindow()V
    .locals 13

    .prologue
    .line 440
    iget-object v11, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mContext:Landroid/content/Context;

    sget-object v12, Lcn/nubia/commonui/R$styleable;->Theme:[I

    invoke-virtual {v11, v12}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 442
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    .line 443
    .local v5, "mFixedWidthMajor":Landroid/util/TypedValue;
    const/4 v6, 0x0

    .line 444
    .local v6, "mFixedWidthMinor":Landroid/util/TypedValue;
    const/4 v3, 0x0

    .line 445
    .local v3, "mFixedHeightMajor":Landroid/util/TypedValue;
    const/4 v4, 0x0

    .line 447
    .local v4, "mFixedHeightMinor":Landroid/util/TypedValue;
    sget v11, Lcn/nubia/commonui/R$styleable;->Theme_windowFixedWidthMajor:I

    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 448
    if-nez v5, :cond_0

    new-instance v5, Landroid/util/TypedValue;

    .end local v5    # "mFixedWidthMajor":Landroid/util/TypedValue;
    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 449
    .restart local v5    # "mFixedWidthMajor":Landroid/util/TypedValue;
    :cond_0
    sget v11, Lcn/nubia/commonui/R$styleable;->Theme_windowFixedWidthMajor:I

    invoke-virtual {v0, v11, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 451
    :cond_1
    sget v11, Lcn/nubia/commonui/R$styleable;->Theme_windowFixedWidthMinor:I

    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 452
    if-nez v6, :cond_2

    new-instance v6, Landroid/util/TypedValue;

    .end local v6    # "mFixedWidthMinor":Landroid/util/TypedValue;
    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 453
    .restart local v6    # "mFixedWidthMinor":Landroid/util/TypedValue;
    :cond_2
    sget v11, Lcn/nubia/commonui/R$styleable;->Theme_windowFixedWidthMinor:I

    invoke-virtual {v0, v11, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 455
    :cond_3
    sget v11, Lcn/nubia/commonui/R$styleable;->Theme_windowFixedHeightMajor:I

    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 456
    if-nez v3, :cond_4

    new-instance v3, Landroid/util/TypedValue;

    .end local v3    # "mFixedHeightMajor":Landroid/util/TypedValue;
    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 457
    .restart local v3    # "mFixedHeightMajor":Landroid/util/TypedValue;
    :cond_4
    sget v11, Lcn/nubia/commonui/R$styleable;->Theme_windowFixedHeightMajor:I

    invoke-virtual {v0, v11, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 459
    :cond_5
    sget v11, Lcn/nubia/commonui/R$styleable;->Theme_windowFixedHeightMinor:I

    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 460
    if-nez v4, :cond_6

    new-instance v4, Landroid/util/TypedValue;

    .end local v4    # "mFixedHeightMinor":Landroid/util/TypedValue;
    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 461
    .restart local v4    # "mFixedHeightMinor":Landroid/util/TypedValue;
    :cond_6
    sget v11, Lcn/nubia/commonui/R$styleable;->Theme_windowFixedHeightMinor:I

    invoke-virtual {v0, v11, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 464
    :cond_7
    iget-object v11, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 465
    .local v7, "metrics":Landroid/util/DisplayMetrics;
    iget v11, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v12, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v11, v12, :cond_c

    const/4 v2, 0x1

    .line 466
    .local v2, "isPortrait":Z
    :goto_0
    const/4 v10, -0x1

    .line 467
    .local v10, "w":I
    const/4 v1, -0x1

    .line 469
    .local v1, "h":I
    if-eqz v2, :cond_d

    move-object v9, v6

    .line 470
    .local v9, "tvw":Landroid/util/TypedValue;
    :goto_1
    if-eqz v9, :cond_8

    iget v11, v9, Landroid/util/TypedValue;->type:I

    if-eqz v11, :cond_8

    .line 471
    iget v11, v9, Landroid/util/TypedValue;->type:I

    const/4 v12, 0x5

    if-ne v11, v12, :cond_e

    .line 472
    invoke-virtual {v9, v7}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v10, v11

    .line 478
    :cond_8
    :goto_2
    if-eqz v2, :cond_f

    move-object v8, v3

    .line 479
    .local v8, "tvh":Landroid/util/TypedValue;
    :goto_3
    if-eqz v8, :cond_9

    iget v11, v8, Landroid/util/TypedValue;->type:I

    if-eqz v11, :cond_9

    .line 480
    iget v11, v8, Landroid/util/TypedValue;->type:I

    const/4 v12, 0x5

    if-ne v11, v12, :cond_10

    .line 481
    invoke-virtual {v8, v7}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v1, v11

    .line 487
    :cond_9
    :goto_4
    const/4 v11, -0x1

    if-ne v10, v11, :cond_a

    const/4 v11, -0x1

    if-eq v1, v11, :cond_b

    .line 488
    :cond_a
    iget-object v11, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mWindow:Landroid/view/Window;

    invoke-virtual {v11, v10, v1}, Landroid/view/Window;->setLayout(II)V

    .line 491
    :cond_b
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 492
    return-void

    .line 465
    .end local v1    # "h":I
    .end local v2    # "isPortrait":Z
    .end local v8    # "tvh":Landroid/util/TypedValue;
    .end local v9    # "tvw":Landroid/util/TypedValue;
    .end local v10    # "w":I
    :cond_c
    const/4 v2, 0x0

    goto :goto_0

    .restart local v1    # "h":I
    .restart local v2    # "isPortrait":Z
    .restart local v10    # "w":I
    :cond_d
    move-object v9, v5

    .line 469
    goto :goto_1

    .line 473
    .restart local v9    # "tvw":Landroid/util/TypedValue;
    :cond_e
    iget v11, v9, Landroid/util/TypedValue;->type:I

    const/4 v12, 0x6

    if-ne v11, v12, :cond_8

    .line 474
    iget v11, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v11, v11

    iget v12, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v12, v12

    invoke-virtual {v9, v11, v12}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v11

    float-to-int v10, v11

    goto :goto_2

    :cond_f
    move-object v8, v4

    .line 478
    goto :goto_3

    .line 482
    .restart local v8    # "tvh":Landroid/util/TypedValue;
    :cond_10
    iget v11, v8, Landroid/util/TypedValue;->type:I

    const/4 v12, 0x6

    if-ne v11, v12, :cond_9

    .line 483
    iget v11, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v11, v11

    iget v12, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v12, v12

    invoke-virtual {v8, v11, v12}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v11

    float-to-int v1, v11

    goto :goto_4
.end method

.method private callOnPanelClosed(ILcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/Menu;)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "panel"    # Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1265
    if-nez p3, :cond_1

    .line 1267
    if-nez p2, :cond_0

    .line 1268
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mPanels:[Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 1269
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mPanels:[Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    aget-object p2, v1, p1

    .line 1273
    :cond_0
    if-eqz p2, :cond_1

    .line 1275
    iget-object p3, p2, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    .line 1280
    :cond_1
    if-eqz p2, :cond_3

    iget-boolean v1, p2, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->isOpen:Z

    if-nez v1, :cond_3

    .line 1287
    :cond_2
    :goto_0
    return-void

    .line 1283
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1284
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_2

    .line 1285
    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method private checkCloseActionMenu(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V
    .locals 2
    .param p1, "menu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    .prologue
    .line 1159
    iget-boolean v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mClosingActionMenu:Z

    if-eqz v1, :cond_0

    .line 1170
    :goto_0
    return-void

    .line 1163
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mClosingActionMenu:Z

    .line 1164
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mDecorContentParent:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    invoke-interface {v1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;->dismissPopups()V

    .line 1165
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1166
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1167
    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 1169
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mClosingActionMenu:Z

    goto :goto_0
.end method

.method private closePanel(I)V
    .locals 2
    .param p1, "featureId"    # I

    .prologue
    const/4 v1, 0x1

    .line 1173
    invoke-direct {p0, p1, v1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->getPanelState(IZ)Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->closePanel(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    .line 1174
    return-void
.end method

.method private closePanel(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V
    .locals 6
    .param p1, "st"    # Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;
    .param p2, "doCallback"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1177
    if-eqz p2, :cond_1

    iget v2, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->featureId:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mDecorContentParent:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mDecorContentParent:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    invoke-interface {v2}, Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1179
    iget-object v2, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-direct {p0, v2}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->checkCloseActionMenu(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V

    .line 1210
    :cond_0
    :goto_0
    return-void

    .line 1183
    :cond_1
    iget-boolean v0, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->isOpen:Z

    .line 1185
    .local v0, "wasOpen":Z
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1186
    .local v1, "wm":Landroid/view/WindowManager;
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v2, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 1187
    iget-object v2, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1190
    :cond_2
    iput-boolean v4, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->isPrepared:Z

    .line 1191
    iput-boolean v4, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->isHandled:Z

    .line 1192
    iput-boolean v4, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->isOpen:Z

    .line 1194
    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 1197
    iget v2, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->featureId:I

    invoke-direct {p0, v2, p1, v5}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->callOnPanelClosed(ILcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/Menu;)V

    .line 1201
    :cond_3
    iput-object v5, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1205
    const/4 v2, 0x1

    iput-boolean v2, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->refreshDecorView:Z

    .line 1207
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mPreparedPanel:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-ne v2, p1, :cond_0

    .line 1208
    iput-object v5, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mPreparedPanel:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    goto :goto_0
.end method

.method private doInvalidatePanelMenu(I)V
    .locals 5
    .param p1, "featureId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1353
    invoke-direct {p0, p1, v4}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->getPanelState(IZ)Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v1

    .line 1354
    .local v1, "st":Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;
    const/4 v0, 0x0

    .line 1355
    .local v0, "savedActionViewStates":Landroid/os/Bundle;
    iget-object v2, v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_1

    .line 1356
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "savedActionViewStates":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1357
    .restart local v0    # "savedActionViewStates":Landroid/os/Bundle;
    iget-object v2, v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 1358
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1359
    iput-object v0, v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 1362
    :cond_0
    iget-object v2, v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1363
    iget-object v2, v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->clear()V

    .line 1365
    :cond_1
    iput-boolean v4, v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->refreshMenuContent:Z

    .line 1366
    iput-boolean v4, v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->refreshDecorView:Z

    .line 1369
    const/16 v2, 0x8

    if-eq p1, v2, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mDecorContentParent:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    if-eqz v2, :cond_3

    .line 1371
    invoke-direct {p0, v3, v3}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->getPanelState(IZ)Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v1

    .line 1372
    if-eqz v1, :cond_3

    .line 1373
    iput-boolean v3, v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->isPrepared:Z

    .line 1374
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->preparePanel(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 1377
    :cond_3
    return-void
.end method

.method private ensureSubDecor()V
    .locals 15

    .prologue
    const v14, 0x1020002

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 273
    iget-boolean v9, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mSubDecorInstalled:Z

    if-nez v9, :cond_f

    .line 274
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 276
    .local v4, "inflater":Landroid/view/LayoutInflater;
    iget-boolean v9, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mWindowNoTitle:Z

    if-nez v9, :cond_5

    .line 277
    iget-boolean v9, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mIsFloating:Z

    if-eqz v9, :cond_1

    .line 279
    sget v9, Lcn/nubia/commonui/R$layout;->abc_dialog_title_material:I

    invoke-virtual {v4, v9, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mSubDecor:Landroid/view/ViewGroup;

    .line 361
    :cond_0
    :goto_0
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mSubDecor:Landroid/view/ViewGroup;

    if-nez v9, :cond_8

    .line 362
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "AppCompat does not support the current theme features"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 281
    :cond_1
    iget-boolean v9, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mHasActionBar:Z

    if-eqz v9, :cond_0

    .line 287
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 288
    .local v5, "outValue":Landroid/util/TypedValue;
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    sget v10, Lcn/nubia/commonui/R$attr;->actionBarTheme:I

    invoke-virtual {v9, v10, v5, v13}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 291
    iget v9, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v9, :cond_4

    .line 292
    new-instance v7, Lcn/nubia/commonui/actionbar/internal/view/ContextThemeWrapper;

    iget-object v9, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mContext:Landroid/content/Context;

    iget v10, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v7, v9, v10}, Lcn/nubia/commonui/actionbar/internal/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 298
    .local v7, "themedContext":Landroid/content/Context;
    :goto_1
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    sget v10, Lcn/nubia/commonui/R$layout;->abc_screen_toolbar:I

    invoke-virtual {v9, v10, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mSubDecor:Landroid/view/ViewGroup;

    .line 301
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mSubDecor:Landroid/view/ViewGroup;

    sget v10, Lcn/nubia/commonui/R$id;->decor_content_parent:I

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    iput-object v9, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mDecorContentParent:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    .line 303
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mDecorContentParent:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v10

    invoke-interface {v9, v10}, Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 308
    iget-boolean v9, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mOverlayActionBar:Z

    if-eqz v9, :cond_2

    .line 309
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mDecorContentParent:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    const/16 v10, 0x9

    invoke-interface {v9, v10}, Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;->initFeature(I)V

    .line 311
    :cond_2
    iget-boolean v9, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mFeatureProgress:Z

    if-eqz v9, :cond_3

    .line 312
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mDecorContentParent:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    const/4 v10, 0x2

    invoke-interface {v9, v10}, Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;->initFeature(I)V

    .line 314
    :cond_3
    iget-boolean v9, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mFeatureIndeterminateProgress:Z

    if-eqz v9, :cond_0

    .line 315
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mDecorContentParent:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    const/4 v10, 0x5

    invoke-interface {v9, v10}, Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;->initFeature(I)V

    goto :goto_0

    .line 294
    .end local v7    # "themedContext":Landroid/content/Context;
    :cond_4
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mContext:Landroid/content/Context;

    .restart local v7    # "themedContext":Landroid/content/Context;
    goto :goto_1

    .line 319
    .end local v5    # "outValue":Landroid/util/TypedValue;
    .end local v7    # "themedContext":Landroid/content/Context;
    :cond_5
    iget-boolean v9, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mOverlayActionMode:Z

    if-eqz v9, :cond_6

    .line 320
    sget v9, Lcn/nubia/commonui/R$layout;->abc_screen_simple_overlay_action_mode:I

    invoke-virtual {v4, v9, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mSubDecor:Landroid/view/ViewGroup;

    .line 326
    :goto_2
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-lt v9, v10, :cond_7

    .line 329
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mSubDecor:Landroid/view/ViewGroup;

    new-instance v10, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$2;

    invoke-direct {v10, p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$2;-><init>(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;)V

    invoke-static {v9, v10}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    goto/16 :goto_0

    .line 323
    :cond_6
    sget v9, Lcn/nubia/commonui/R$layout;->abc_screen_simple:I

    invoke-virtual {v4, v9, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mSubDecor:Landroid/view/ViewGroup;

    goto :goto_2

    .line 351
    :cond_7
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mSubDecor:Landroid/view/ViewGroup;

    check-cast v9, Lcn/nubia/commonui/actionbar/internal/widget/FitWindowsViewGroup;

    new-instance v10, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$3;

    invoke-direct {v10, p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$3;-><init>(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;)V

    invoke-interface {v9, v10}, Lcn/nubia/commonui/actionbar/internal/widget/FitWindowsViewGroup;->setOnFitSystemWindowsListener(Lcn/nubia/commonui/actionbar/internal/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;)V

    goto/16 :goto_0

    .line 366
    :cond_8
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mDecorContentParent:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    if-nez v9, :cond_9

    .line 367
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mSubDecor:Landroid/view/ViewGroup;

    sget v10, Lcn/nubia/commonui/R$id;->title:I

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mTitleView:Landroid/widget/TextView;

    .line 371
    :cond_9
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mSubDecor:Landroid/view/ViewGroup;

    invoke-static {v9}, Lcn/nubia/commonui/actionbar/internal/widget/ViewUtils;->makeOptionalFitsSystemWindows(Landroid/view/View;)V

    .line 373
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mWindow:Landroid/view/Window;

    invoke-virtual {v9, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 374
    .local v2, "decorContent":Landroid/view/ViewGroup;
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mSubDecor:Landroid/view/ViewGroup;

    sget v10, Lcn/nubia/commonui/R$id;->action_bar_activity_content:I

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 377
    .local v0, "abcContent":Landroid/view/ViewGroup;
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mSubDecor:Landroid/view/ViewGroup;

    sget v10, Lcn/nubia/commonui/R$id;->nubia_fake_status_bar:I

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 379
    .local v3, "fakeStatusBar":Landroid/view/View;
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mContext:Landroid/content/Context;

    sget v10, Lcn/nubia/commonui/R$drawable;->nubia_status_bar_background:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 383
    :goto_3
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-lez v9, :cond_a

    .line 384
    invoke-virtual {v2, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 385
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v2, v11}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 386
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 390
    .end local v1    # "child":Landroid/view/View;
    :cond_a
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mWindow:Landroid/view/Window;

    iget-object v10, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mSubDecor:Landroid/view/ViewGroup;

    invoke-virtual {v9, v10}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 391
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->isDarkTheme()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 392
    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 397
    :cond_b
    const/4 v9, -0x1

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->setId(I)V

    .line 398
    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->setId(I)V

    .line 402
    instance-of v9, v2, Landroid/widget/FrameLayout;

    if-eqz v9, :cond_c

    .line 403
    check-cast v2, Landroid/widget/FrameLayout;

    .end local v2    # "decorContent":Landroid/view/ViewGroup;
    invoke-virtual {v2, v12}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 407
    :cond_c
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    .line 408
    .local v8, "title":Ljava/lang/CharSequence;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_d

    .line 409
    invoke-virtual {p0, v8}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->onTitleChanged(Ljava/lang/CharSequence;)V

    .line 412
    :cond_d
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->applyFixedSizeWindow()V

    .line 414
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mSubDecor:Landroid/view/ViewGroup;

    invoke-virtual {p0, v9}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->onSubDecorInstalled(Landroid/view/ViewGroup;)V

    .line 416
    iput-boolean v13, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mSubDecorInstalled:Z

    .line 423
    invoke-direct {p0, v11, v11}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->getPanelState(IZ)Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v6

    .line 424
    .local v6, "st":Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->isDestroyed()Z

    move-result v9

    if-nez v9, :cond_f

    if-eqz v6, :cond_e

    iget-object v9, v6, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    if-nez v9, :cond_f

    .line 425
    :cond_e
    const/16 v9, 0x8

    invoke-direct {p0, v9}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->invalidatePanelMenu(I)V

    .line 428
    .end local v0    # "abcContent":Landroid/view/ViewGroup;
    .end local v3    # "fakeStatusBar":Landroid/view/View;
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    .end local v6    # "st":Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;
    .end local v8    # "title":Ljava/lang/CharSequence;
    :cond_f
    return-void
.end method

.method private findMenuPanel(Landroid/view/Menu;)Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1290
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mPanels:[Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    .line 1291
    .local v3, "panels":[Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;
    if-eqz v3, :cond_0

    array-length v0, v3

    .line 1292
    .local v0, "N":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1293
    aget-object v2, v3, v1

    .line 1294
    .local v2, "panel":Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;
    if-eqz v2, :cond_1

    iget-object v4, v2, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    if-ne v4, p1, :cond_1

    .line 1298
    .end local v2    # "panel":Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;
    :goto_2
    return-object v2

    .line 1291
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1292
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v2    # "panel":Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1298
    .end local v2    # "panel":Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private getPanelState(IZ)Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;
    .locals 5
    .param p1, "featureId"    # I
    .param p2, "required"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1303
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mPanels:[Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    .local v0, "ar":[Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;
    if-eqz v0, :cond_0

    array-length v3, v0

    if-gt v3, p1, :cond_2

    .line 1304
    :cond_0
    add-int/lit8 v3, p1, 0x1

    new-array v1, v3, [Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    .line 1305
    .local v1, "nar":[Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;
    if-eqz v0, :cond_1

    .line 1306
    array-length v3, v0

    invoke-static {v0, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1308
    :cond_1
    move-object v0, v1

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mPanels:[Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    .line 1311
    .end local v1    # "nar":[Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;
    :cond_2
    aget-object v2, v0, p1

    .line 1312
    .local v2, "st":Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;
    if-nez v2, :cond_3

    .line 1313
    new-instance v2, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    .end local v2    # "st":Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;
    invoke-direct {v2, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;-><init>(I)V

    .restart local v2    # "st":Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;
    aput-object v2, v0, p1

    .line 1315
    :cond_3
    return-object v2
.end method

.method private initializePanelContent(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;)Z
    .locals 5
    .param p1, "st"    # Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1036
    iget-object v3, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 1037
    iget-object v2, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iput-object v2, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1053
    :cond_0
    :goto_0
    return v1

    .line 1041
    :cond_1
    iget-object v3, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    if-nez v3, :cond_2

    move v1, v2

    .line 1042
    goto :goto_0

    .line 1045
    :cond_2
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mPanelMenuPresenterCallback:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;

    if-nez v3, :cond_3

    .line 1046
    new-instance v3, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;-><init>(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$1;)V

    iput-object v3, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mPanelMenuPresenterCallback:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;

    .line 1049
    :cond_3
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mPanelMenuPresenterCallback:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;

    invoke-virtual {p1, v3}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->getListMenuView(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    move-result-object v0

    .line 1051
    .local v0, "menuView":Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;
    check-cast v0, Landroid/view/View;

    .end local v0    # "menuView":Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;
    iput-object v0, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1053
    iget-object v3, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->shownPanelView:Landroid/view/View;

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private initializePanelDecor(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;)Z
    .locals 2
    .param p1, "st"    # Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    .prologue
    .line 942
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->setStyle(Landroid/content/Context;)V

    .line 943
    new-instance v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$ListMenuDecorView;

    iget-object v1, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->listPresenterContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$ListMenuDecorView;-><init>(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;Landroid/content/Context;)V

    iput-object v0, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    .line 944
    const/16 v0, 0x51

    iput v0, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->gravity:I

    .line 945
    const/4 v0, 0x1

    return v0
.end method

.method private initializePanelMenu(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;)Z
    .locals 9
    .param p1, "st"    # Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    .prologue
    const/4 v8, 0x1

    .line 993
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mContext:Landroid/content/Context;

    .line 996
    .local v1, "context":Landroid/content/Context;
    iget v6, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->featureId:I

    if-eqz v6, :cond_0

    iget v6, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->featureId:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_3

    :cond_0
    iget-object v6, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mDecorContentParent:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    if-eqz v6, :cond_3

    .line 998
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 999
    .local v4, "outValue":Landroid/util/TypedValue;
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 1000
    .local v0, "baseTheme":Landroid/content/res/Resources$Theme;
    sget v6, Lcn/nubia/commonui/R$attr;->actionBarTheme:I

    invoke-virtual {v0, v6, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1002
    const/4 v5, 0x0

    .line 1003
    .local v5, "widgetTheme":Landroid/content/res/Resources$Theme;
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_4

    .line 1004
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 1005
    invoke-virtual {v5, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1006
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1007
    sget v6, Lcn/nubia/commonui/R$attr;->actionBarWidgetTheme:I

    invoke-virtual {v5, v6, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1014
    :goto_0
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_2

    .line 1015
    if-nez v5, :cond_1

    .line 1016
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 1017
    invoke-virtual {v5, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1019
    :cond_1
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1022
    :cond_2
    if-eqz v5, :cond_3

    .line 1023
    new-instance v2, Lcn/nubia/commonui/actionbar/internal/view/ContextThemeWrapper;

    const/4 v6, 0x0

    invoke-direct {v2, v1, v6}, Lcn/nubia/commonui/actionbar/internal/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1024
    .end local v1    # "context":Landroid/content/Context;
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v1, v2

    .line 1028
    .end local v0    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v2    # "context":Landroid/content/Context;
    .end local v4    # "outValue":Landroid/util/TypedValue;
    .end local v5    # "widgetTheme":Landroid/content/res/Resources$Theme;
    .restart local v1    # "context":Landroid/content/Context;
    :cond_3
    new-instance v3, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-direct {v3, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 1029
    .local v3, "menu":Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;
    invoke-virtual {v3, p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->setCallback(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$Callback;)V

    .line 1030
    invoke-virtual {p1, v3}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->setMenu(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V

    .line 1032
    return v8

    .line 1010
    .end local v3    # "menu":Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;
    .restart local v0    # "baseTheme":Landroid/content/res/Resources$Theme;
    .restart local v4    # "outValue":Landroid/util/TypedValue;
    .restart local v5    # "widgetTheme":Landroid/content/res/Resources$Theme;
    :cond_4
    sget v6, Lcn/nubia/commonui/R$attr;->actionBarWidgetTheme:I

    invoke-virtual {v0, v6, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_0
.end method

.method private invalidatePanelMenu(I)V
    .locals 3
    .param p1, "featureId"    # I

    .prologue
    const/4 v2, 0x1

    .line 1344
    iget v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mInvalidatePanelMenuFeatures:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mInvalidatePanelMenuFeatures:I

    .line 1346
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mInvalidatePanelMenuPosted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mWindowDecor:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1347
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mWindowDecor:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1348
    iput-boolean v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mInvalidatePanelMenuPosted:Z

    .line 1350
    :cond_0
    return-void
.end method

.method private isDarkTheme()Z
    .locals 2

    .prologue
    .line 431
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 432
    .local v0, "flags":I
    const/high16 v1, 0x4000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    and-int/lit16 v1, v0, 0x400

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onKeyDownPanel(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1213
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1214
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->getPanelState(IZ)Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v0

    .line 1215
    .local v0, "st":Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;
    iget-boolean v1, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->isOpen:Z

    if-nez v1, :cond_0

    .line 1216
    invoke-direct {p0, v0, p2}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->preparePanel(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v1

    .line 1220
    .end local v0    # "st":Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onKeyUpPanel(ILandroid/view/KeyEvent;)V
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 1224
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    if-eqz v2, :cond_1

    .line 1261
    :cond_0
    :goto_0
    return-void

    .line 1228
    :cond_1
    invoke-direct {p0, p1, v3}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->getPanelState(IZ)Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v1

    .line 1229
    .local v1, "st":Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;
    if-nez p1, :cond_3

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mDecorContentParent:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mDecorContentParent:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    invoke-interface {v2}, Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/view/ViewConfigurationCompat;->hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1232
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mDecorContentParent:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    invoke-interface {v2}, Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1233
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1, p2}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->preparePanel(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1234
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mDecorContentParent:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    invoke-interface {v2}, Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;->showOverflowMenu()Z

    goto :goto_0

    .line 1237
    :cond_2
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mDecorContentParent:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    invoke-interface {v2}, Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    goto :goto_0

    .line 1240
    :cond_3
    iget-boolean v2, v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->isOpen:Z

    if-nez v2, :cond_4

    iget-boolean v2, v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->isHandled:Z

    if-eqz v2, :cond_5

    .line 1245
    :cond_4
    invoke-direct {p0, v1, v3}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->closePanel(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    goto :goto_0

    .line 1247
    :cond_5
    iget-boolean v2, v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->isPrepared:Z

    if-eqz v2, :cond_0

    .line 1248
    const/4 v0, 0x1

    .line 1249
    .local v0, "show":Z
    iget-boolean v2, v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v2, :cond_6

    .line 1252
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->isPrepared:Z

    .line 1253
    invoke-direct {p0, v1, p2}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->preparePanel(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1255
    :cond_6
    if-eqz v0, :cond_0

    .line 1257
    invoke-direct {p0, v1, p2}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->openPanel(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method private openPanel(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)V
    .locals 18
    .param p1, "st"    # Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 843
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->isOpen:Z

    if-nez v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 939
    :cond_0
    :goto_0
    return-void

    .line 849
    :cond_1
    move-object/from16 v0, p1

    iget v4, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->featureId:I

    if-nez v4, :cond_2

    .line 850
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mContext:Landroid/content/Context;

    .line 851
    .local v13, "context":Landroid/content/Context;
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    .line 852
    .local v12, "config":Landroid/content/res/Configuration;
    iget v4, v12, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    const/4 v15, 0x1

    .line 854
    .local v15, "isXLarge":Z
    :goto_1
    invoke-virtual {v13}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_4

    const/4 v14, 0x1

    .line 857
    .local v14, "isHoneycombApp":Z
    :goto_2
    if-eqz v15, :cond_2

    if-nez v14, :cond_0

    .line 862
    .end local v12    # "config":Landroid/content/res/Configuration;
    .end local v13    # "context":Landroid/content/Context;
    .end local v14    # "isHoneycombApp":Z
    .end local v15    # "isXLarge":Z
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v11

    .line 863
    .local v11, "cb":Landroid/view/Window$Callback;
    if-eqz v11, :cond_5

    move-object/from16 v0, p1

    iget v4, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->featureId:I

    move-object/from16 v0, p1

    iget-object v5, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-interface {v11, v4, v5}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 865
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->closePanel(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    goto :goto_0

    .line 852
    .end local v11    # "cb":Landroid/view/Window$Callback;
    .restart local v12    # "config":Landroid/content/res/Configuration;
    .restart local v13    # "context":Landroid/content/Context;
    :cond_3
    const/4 v15, 0x0

    goto :goto_1

    .line 854
    .restart local v15    # "isXLarge":Z
    :cond_4
    const/4 v14, 0x0

    goto :goto_2

    .line 869
    .end local v12    # "config":Landroid/content/res/Configuration;
    .end local v13    # "context":Landroid/content/Context;
    .end local v15    # "isXLarge":Z
    .restart local v11    # "cb":Landroid/view/Window$Callback;
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/WindowManager;

    .line 870
    .local v17, "wm":Landroid/view/WindowManager;
    if-eqz v17, :cond_0

    .line 875
    invoke-direct/range {p0 .. p2}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->preparePanel(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 879
    const/4 v3, -0x2

    .line 880
    .local v3, "width":I
    move-object/from16 v0, p1

    iget-object v4, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_6

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->refreshDecorView:Z

    if-eqz v4, :cond_c

    .line 881
    :cond_6
    move-object/from16 v0, p1

    iget-object v4, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-nez v4, :cond_b

    .line 883
    invoke-direct/range {p0 .. p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->initializePanelDecor(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 891
    :cond_7
    :goto_3
    invoke-direct/range {p0 .. p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->initializePanelContent(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->hasPanelItems()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 895
    move-object/from16 v0, p1

    iget-object v4, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 896
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v2, :cond_8

    .line 897
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 900
    .restart local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_8
    move-object/from16 v0, p1

    iget v10, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->background:I

    .line 901
    .local v10, "backgroundResId":I
    move-object/from16 v0, p1

    iget-object v4, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v10}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 903
    move-object/from16 v0, p1

    iget-object v4, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    .line 904
    .local v16, "shownPanelParent":Landroid/view/ViewParent;
    if-eqz v16, :cond_9

    move-object/from16 v0, v16

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_9

    .line 905
    check-cast v16, Landroid/view/ViewGroup;

    .end local v16    # "shownPanelParent":Landroid/view/ViewParent;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->shownPanelView:Landroid/view/View;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 907
    :cond_9
    move-object/from16 v0, p1

    iget-object v4, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 913
    move-object/from16 v0, p1

    iget-object v4, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_a

    .line 914
    move-object/from16 v0, p1

    iget-object v4, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 925
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v10    # "backgroundResId":I
    :cond_a
    :goto_4
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->isHandled:Z

    .line 927
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x2

    move-object/from16 v0, p1

    iget v5, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->x:I

    move-object/from16 v0, p1

    iget v6, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->y:I

    const/16 v7, 0x3ea

    const/high16 v8, 0x820000

    const/4 v9, -0x3

    invoke-direct/range {v2 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 934
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p1

    iget v4, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->gravity:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 935
    move-object/from16 v0, p1

    iget v4, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->windowAnimations:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 937
    move-object/from16 v0, p1

    iget-object v4, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    move-object/from16 v0, v17

    invoke-interface {v0, v4, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 938
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->isOpen:Z

    goto/16 :goto_0

    .line 885
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_b
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->refreshDecorView:Z

    if-eqz v4, :cond_7

    move-object/from16 v0, p1

    iget-object v4, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_7

    .line 887
    move-object/from16 v0, p1

    iget-object v4, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    goto/16 :goto_3

    .line 916
    :cond_c
    move-object/from16 v0, p1

    iget-object v4, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz v4, :cond_a

    .line 919
    move-object/from16 v0, p1

    iget-object v4, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->createdPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 920
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_a

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_a

    .line 921
    const/4 v3, -0x1

    goto :goto_4
.end method

.method private performPanelShortcut(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .locals 2
    .param p1, "st"    # Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .param p4, "flags"    # I

    .prologue
    .line 1320
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1321
    const/4 v0, 0x0

    .line 1340
    :cond_0
    :goto_0
    return v0

    .line 1324
    :cond_1
    const/4 v0, 0x0

    .line 1328
    .local v0, "handled":Z
    iget-boolean v1, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->isPrepared:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1, p3}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->preparePanel(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_3

    .line 1330
    iget-object v1, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, p2, p3, p4}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 1333
    :cond_3
    if-eqz v0, :cond_0

    .line 1335
    and-int/lit8 v1, p4, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mDecorContentParent:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    if-nez v1, :cond_0

    .line 1336
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->closePanel(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    goto :goto_0
.end method

.method private preparePanel(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "st"    # Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1057
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1155
    :cond_0
    :goto_0
    return v5

    .line 1062
    :cond_1
    iget-boolean v3, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->isPrepared:Z

    if-eqz v3, :cond_2

    move v5, v4

    .line 1063
    goto :goto_0

    .line 1066
    :cond_2
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mPreparedPanel:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mPreparedPanel:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-eq v3, p1, :cond_3

    .line 1068
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mPreparedPanel:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    invoke-direct {p0, v3, v5}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->closePanel(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    .line 1071
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1073
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_4

    .line 1074
    iget v3, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->featureId:I

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->createdPanelView:Landroid/view/View;

    .line 1077
    :cond_4
    iget v3, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->featureId:I

    if-eqz v3, :cond_5

    iget v3, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->featureId:I

    const/16 v6, 0x8

    if-ne v3, v6, :cond_b

    :cond_5
    move v1, v4

    .line 1080
    .local v1, "isActionBarMenu":Z
    :goto_1
    if-eqz v1, :cond_6

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mDecorContentParent:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    if-eqz v3, :cond_6

    .line 1083
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mDecorContentParent:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;->setMenuPrepared()V

    .line 1086
    :cond_6
    iget-object v3, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-nez v3, :cond_11

    .line 1088
    iget-object v3, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    if-eqz v3, :cond_7

    iget-boolean v3, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v3, :cond_d

    .line 1089
    :cond_7
    iget-object v3, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    if-nez v3, :cond_8

    .line 1090
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->initializePanelMenu(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    if-eqz v3, :cond_0

    .line 1095
    :cond_8
    if-eqz v1, :cond_a

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mDecorContentParent:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    if-eqz v3, :cond_a

    .line 1096
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionMenuPresenterCallback:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;

    if-nez v3, :cond_9

    .line 1097
    new-instance v3, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;

    invoke-direct {v3, p0, v8}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;-><init>(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$1;)V

    iput-object v3, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionMenuPresenterCallback:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;

    .line 1099
    :cond_9
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mDecorContentParent:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    iget-object v6, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    iget-object v7, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionMenuPresenterCallback:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;

    invoke-interface {v3, v6, v7}, Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;)V

    .line 1104
    :cond_a
    iget-object v3, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1105
    iget v3, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->featureId:I

    iget-object v6, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v3, v6}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 1107
    invoke-virtual {p1, v8}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->setMenu(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V

    .line 1109
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mDecorContentParent:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    if-eqz v3, :cond_0

    .line 1111
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mDecorContentParent:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionMenuPresenterCallback:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;

    invoke-interface {v3, v8, v4}, Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;)V

    goto/16 :goto_0

    .end local v1    # "isActionBarMenu":Z
    :cond_b
    move v1, v5

    .line 1077
    goto :goto_1

    .line 1117
    .restart local v1    # "isActionBarMenu":Z
    :cond_c
    iput-boolean v5, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->refreshMenuContent:Z

    .line 1122
    :cond_d
    iget-object v3, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1126
    iget-object v3, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    if-eqz v3, :cond_e

    .line 1127
    iget-object v3, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    iget-object v6, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    invoke-virtual {v3, v6}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 1128
    iput-object v8, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 1132
    :cond_e
    iget-object v3, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v6, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v5, v3, v6}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 1133
    if-eqz v1, :cond_f

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mDecorContentParent:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    if-eqz v3, :cond_f

    .line 1136
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mDecorContentParent:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionMenuPresenterCallback:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;

    invoke-interface {v3, v8, v4}, Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;)V

    .line 1138
    :cond_f
    iget-object v3, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto/16 :goto_0

    .line 1143
    :cond_10
    if-eqz p2, :cond_12

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v3

    :goto_2
    invoke-static {v3}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 1145
    .local v2, "kmap":Landroid/view/KeyCharacterMap;
    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v3

    if-eq v3, v4, :cond_13

    move v3, v4

    :goto_3
    iput-boolean v3, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->qwertyMode:Z

    .line 1146
    iget-object v3, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    iget-boolean v6, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->qwertyMode:Z

    invoke-virtual {v3, v6}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 1147
    iget-object v3, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1151
    .end local v2    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_11
    iput-boolean v4, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->isPrepared:Z

    .line 1152
    iput-boolean v5, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->isHandled:Z

    .line 1153
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mPreparedPanel:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    move v5, v4

    .line 1155
    goto/16 :goto_0

    .line 1143
    :cond_12
    const/4 v3, -0x1

    goto :goto_2

    .restart local v2    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_13
    move v3, v5

    .line 1145
    goto :goto_3
.end method

.method private reopenMenu(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Z)V
    .locals 7
    .param p1, "menu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;
    .param p2, "toggleMenuMode"    # Z

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 949
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mDecorContentParent:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mDecorContentParent:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    invoke-interface {v2}, Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/view/ViewConfigurationCompat;->hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mDecorContentParent:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    invoke-interface {v2}, Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;->isOverflowMenuShowPending()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 953
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 955
    .local v0, "cb":Landroid/view/Window$Callback;
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mDecorContentParent:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    invoke-interface {v2}, Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p2, :cond_4

    .line 956
    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 958
    iget-boolean v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mInvalidatePanelMenuPosted:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mInvalidatePanelMenuFeatures:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 960
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mWindowDecor:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 961
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 964
    :cond_2
    invoke-direct {p0, v4, v5}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->getPanelState(IZ)Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v1

    .line 968
    .local v1, "st":Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;
    iget-object v2, v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_3

    iget-boolean v2, v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->refreshMenuContent:Z

    if-nez v2, :cond_3

    iget-object v2, v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v3, v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v4, v2, v3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 970
    iget-object v2, v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v6, v2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 971
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mDecorContentParent:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    invoke-interface {v2}, Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;->showOverflowMenu()Z

    .line 990
    .end local v0    # "cb":Landroid/view/Window$Callback;
    .end local v1    # "st":Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;
    :cond_3
    :goto_0
    return-void

    .line 975
    .restart local v0    # "cb":Landroid/view/Window$Callback;
    :cond_4
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mDecorContentParent:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    invoke-interface {v2}, Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    .line 976
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 977
    invoke-direct {p0, v4, v5}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->getPanelState(IZ)Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v1

    .line 978
    .restart local v1    # "st":Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;
    iget-object v2, v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v6, v2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    .line 984
    .end local v0    # "cb":Landroid/view/Window$Callback;
    .end local v1    # "st":Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;
    :cond_5
    invoke-direct {p0, v4, v5}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->getPanelState(IZ)Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v1

    .line 986
    .restart local v1    # "st":Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;
    iput-boolean v5, v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->refreshDecorView:Z

    .line 987
    invoke-direct {p0, v1, v4}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->closePanel(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    .line 989
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->openPanel(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method private updateStatusGuard(I)I
    .locals 12
    .param p1, "insetTop"    # I

    .prologue
    const/4 v11, -0x1

    const/4 v7, 0x0

    .line 1386
    const/4 v6, 0x0

    .line 1388
    .local v6, "showStatusGuard":Z
    iget-object v8, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionModeView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    if-eqz v8, :cond_3

    .line 1389
    iget-object v8, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionModeView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-virtual {v8}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    instance-of v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v8, :cond_3

    .line 1390
    iget-object v8, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionModeView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-virtual {v8}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1392
    .local v3, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v4, 0x0

    .line 1394
    .local v4, "mlpChanged":Z
    iget-object v8, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionModeView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-virtual {v8}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->isShown()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1395
    iget-object v8, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mTempRect1:Landroid/graphics/Rect;

    if-nez v8, :cond_0

    .line 1396
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mTempRect1:Landroid/graphics/Rect;

    .line 1397
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mTempRect2:Landroid/graphics/Rect;

    .line 1399
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mTempRect1:Landroid/graphics/Rect;

    .line 1400
    .local v0, "insets":Landroid/graphics/Rect;
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mTempRect2:Landroid/graphics/Rect;

    .line 1401
    .local v1, "localInsets":Landroid/graphics/Rect;
    invoke-virtual {v0, v7, p1, v7, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1403
    iget-object v8, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mSubDecor:Landroid/view/ViewGroup;

    invoke-static {v8, v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ViewUtils;->computeFitSystemWindows(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1404
    iget v8, v1, Landroid/graphics/Rect;->top:I

    if-nez v8, :cond_5

    move v5, p1

    .line 1405
    .local v5, "newMargin":I
    :goto_0
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v8, v5, :cond_1

    .line 1406
    const/4 v4, 0x1

    .line 1407
    iput p1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1409
    iget-object v8, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mStatusGuard:Landroid/view/View;

    if-nez v8, :cond_6

    .line 1410
    new-instance v8, Landroid/view/View;

    iget-object v9, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mStatusGuard:Landroid/view/View;

    .line 1411
    iget-object v8, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mStatusGuard:Landroid/view/View;

    iget-object v9, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcn/nubia/commonui/R$color;->abc_input_method_navigation_guard:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1413
    iget-object v8, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mSubDecor:Landroid/view/ViewGroup;

    iget-object v9, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mStatusGuard:Landroid/view/View;

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v10, v11, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9, v11, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1427
    :cond_1
    :goto_1
    iget-object v8, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mStatusGuard:Landroid/view/View;

    if-eqz v8, :cond_7

    const/4 v6, 0x1

    .line 1433
    :goto_2
    iget-boolean v8, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mOverlayActionMode:Z

    if-nez v8, :cond_2

    if-eqz v6, :cond_2

    .line 1434
    const/4 p1, 0x0

    .line 1443
    .end local v0    # "insets":Landroid/graphics/Rect;
    .end local v1    # "localInsets":Landroid/graphics/Rect;
    .end local v5    # "newMargin":I
    :cond_2
    :goto_3
    if-eqz v4, :cond_3

    .line 1444
    iget-object v8, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionModeView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-virtual {v8, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1448
    .end local v3    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v4    # "mlpChanged":Z
    :cond_3
    iget-object v8, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mStatusGuard:Landroid/view/View;

    if-eqz v8, :cond_4

    .line 1449
    iget-object v8, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mStatusGuard:Landroid/view/View;

    if-eqz v6, :cond_9

    :goto_4
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1452
    :cond_4
    return p1

    .restart local v0    # "insets":Landroid/graphics/Rect;
    .restart local v1    # "localInsets":Landroid/graphics/Rect;
    .restart local v3    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v4    # "mlpChanged":Z
    :cond_5
    move v5, v7

    .line 1404
    goto :goto_0

    .line 1417
    .restart local v5    # "newMargin":I
    :cond_6
    iget-object v8, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1418
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v8, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v8, p1, :cond_1

    .line 1419
    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1420
    iget-object v8, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v8, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_7
    move v6, v7

    .line 1427
    goto :goto_2

    .line 1438
    .end local v0    # "insets":Landroid/graphics/Rect;
    .end local v1    # "localInsets":Landroid/graphics/Rect;
    .end local v5    # "newMargin":I
    :cond_8
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v8, :cond_2

    .line 1439
    const/4 v4, 0x1

    .line 1440
    iput v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_3

    .line 1449
    .end local v3    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v4    # "mlpChanged":Z
    :cond_9
    const/16 v7, 0x8

    goto :goto_4
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 266
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->ensureSubDecor()V

    .line 267
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mSubDecor:Landroid/view/ViewGroup;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 268
    .local v0, "contentParent":Landroid/view/ViewGroup;
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v1}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 270
    return-void
.end method

.method callActivityOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 831
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v1, v1, Landroid/view/LayoutInflater$Factory;

    if-eqz v1, :cond_0

    .line 832
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v1, Landroid/view/LayoutInflater$Factory;

    invoke-interface {v1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 834
    .local v0, "result":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 838
    .end local v0    # "result":Landroid/view/View;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;
    .locals 3

    .prologue
    .line 173
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->ensureSubDecor()V

    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, "ab":Lcn/nubia/commonui/actionbar/app/ActionBar;
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 176
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    .end local v0    # "ab":Lcn/nubia/commonui/actionbar/app/ActionBar;
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v1, Landroid/app/Activity;

    iget-boolean v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mOverlayActionBar:Z

    invoke-direct {v0, v1, v2}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;-><init>(Landroid/app/Activity;Z)V

    .line 180
    .restart local v0    # "ab":Lcn/nubia/commonui/actionbar/app/ActionBar;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 181
    iget-boolean v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mEnableDefaultActionBarUp:Z

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    .line 183
    :cond_1
    return-object v0

    .line 177
    :cond_2
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v1, v1, Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 178
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    .end local v0    # "ab":Lcn/nubia/commonui/actionbar/app/ActionBar;
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v1, Landroid/app/Dialog;

    invoke-direct {v0, v1}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;-><init>(Landroid/app/Dialog;)V

    .restart local v0    # "ab":Lcn/nubia/commonui/actionbar/app/ActionBar;
    goto :goto_0
.end method

.method public createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 7
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 787
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_1

    move v6, v0

    .line 789
    .local v6, "isPre21":Z
    :goto_0
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mTintViewInflater:Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater;

    if-nez v2, :cond_0

    .line 790
    new-instance v2, Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater;

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mTintViewInflater:Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater;

    .line 795
    :cond_0
    if-eqz v6, :cond_2

    iget-boolean v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mSubDecorInstalled:Z

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x1020002

    if-eq v2, v3, :cond_2

    move v5, v0

    .line 798
    .local v5, "inheritContext":Z
    :goto_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mTintViewInflater:Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Landroid/view/View;

    move-result-object v0

    return-object v0

    .end local v5    # "inheritContext":Z
    .end local v6    # "isPre21":Z
    :cond_1
    move v6, v1

    .line 787
    goto :goto_0

    .restart local v6    # "isPre21":Z
    :cond_2
    move v5, v1

    .line 795
    goto :goto_1
.end method

.method dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 743
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 744
    .local v2, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 745
    .local v0, "action":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    .line 747
    .local v1, "isDown":Z
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0, v2, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    :goto_1
    return v3

    .line 745
    .end local v1    # "isDown":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 747
    .restart local v1    # "isDown":Z
    :cond_1
    invoke-virtual {p0, v2, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_1
.end method

.method public installViewFactory()V
    .locals 3

    .prologue
    .line 804
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 805
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_0

    .line 806
    invoke-static {v0, p0}, Landroid/support/v4/view/LayoutInflaterCompat;->setFactory(Landroid/view/LayoutInflater;Landroid/support/v4/view/LayoutInflaterFactory;)V

    .line 811
    :goto_0
    return-void

    .line 808
    :cond_0
    const-string v1, "AppCompatDelegate"

    const-string v2, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public invalidateOptionsMenu()V
    .locals 2

    .prologue
    .line 611
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 612
    .local v0, "ab":Lcn/nubia/commonui/actionbar/app/ActionBar;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/ActionBar;->invalidateOptionsMenu()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 615
    :goto_0
    return-void

    .line 614
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->invalidatePanelMenu(I)V

    goto :goto_0
.end method

.method onBackPressed()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 689
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    if-eqz v2, :cond_1

    .line 690
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/view/ActionMode;->finish()V

    .line 701
    :cond_0
    :goto_0
    return v1

    .line 695
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 696
    .local v0, "ab":Lcn/nubia/commonui/actionbar/app/ActionBar;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/ActionBar;->collapseActionView()Z

    move-result v2

    if-nez v2, :cond_0

    .line 701
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 211
    iget-boolean v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mHasActionBar:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mSubDecorInstalled:Z

    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 215
    .local v0, "ab":Lcn/nubia/commonui/actionbar/app/ActionBar;
    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 219
    .end local v0    # "ab":Lcn/nubia/commonui/actionbar/app/ActionBar;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 148
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;->onCreate(Landroid/os/Bundle;)V

    .line 150
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mWindowDecor:Landroid/view/ViewGroup;

    .line 152
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Landroid/support/v4/app/NavUtils;->getParentActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->peekSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 156
    .local v0, "ab":Lcn/nubia/commonui/actionbar/app/ActionBar;
    if-nez v0, :cond_1

    .line 157
    iput-boolean v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mEnableDefaultActionBarUp:Z

    .line 163
    .end local v0    # "ab":Lcn/nubia/commonui/actionbar/app/ActionBar;
    :cond_0
    :goto_0
    return-void

    .line 159
    .restart local v0    # "ab":Lcn/nubia/commonui/actionbar/app/ActionBar;
    :cond_1
    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    goto :goto_0
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 820
    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->callActivityOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 821
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 826
    .end local v0    # "view":Landroid/view/View;
    :goto_0
    return-object v0

    .restart local v0    # "view":Landroid/view/View;
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 770
    packed-switch p1, :pswitch_data_0

    .line 778
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    .line 779
    invoke-virtual {p0, p1, p2}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 781
    :cond_0
    :goto_0
    return v0

    .line 772
    :pswitch_0
    invoke-direct {p0, v0, p2}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->onKeyDownPanel(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 770
    nop

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch
.end method

.method onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "ev"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 707
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 708
    .local v0, "ab":Lcn/nubia/commonui/actionbar/app/ActionBar;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcn/nubia/commonui/actionbar/app/ActionBar;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 738
    :cond_0
    :goto_0
    return v3

    .line 714
    :cond_1
    iget-object v5, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mPreparedPanel:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-eqz v5, :cond_2

    .line 715
    iget-object v5, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mPreparedPanel:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-direct {p0, v5, v6, p2, v3}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->performPanelShortcut(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v1

    .line 717
    .local v1, "handled":Z
    if-eqz v1, :cond_2

    .line 718
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mPreparedPanel:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-eqz v4, :cond_0

    .line 719
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mPreparedPanel:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    iput-boolean v3, v4, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->isHandled:Z

    goto :goto_0

    .line 729
    .end local v1    # "handled":Z
    :cond_2
    iget-object v5, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mPreparedPanel:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-nez v5, :cond_3

    .line 730
    invoke-direct {p0, v4, v3}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->getPanelState(IZ)Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v2

    .line 731
    .local v2, "st":Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;
    invoke-direct {p0, v2, p2}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->preparePanel(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 732
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-direct {p0, v2, v5, p2, v3}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->performPanelShortcut(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v1

    .line 733
    .restart local v1    # "handled":Z
    iput-boolean v4, v2, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->isPrepared:Z

    .line 734
    if-nez v1, :cond_0

    .end local v1    # "handled":Z
    .end local v2    # "st":Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;
    :cond_3
    move v3, v4

    .line 738
    goto :goto_0
.end method

.method onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 751
    sparse-switch p1, :sswitch_data_0

    .line 766
    :cond_0
    :goto_0
    return v1

    .line 753
    :sswitch_0
    invoke-direct {p0, v1, p2}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->onKeyUpPanel(ILandroid/view/KeyEvent;)V

    goto :goto_0

    .line 756
    :sswitch_1
    invoke-direct {p0, v1, v1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->getPanelState(IZ)Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v0

    .line 757
    .local v0, "st":Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;
    if-eqz v0, :cond_1

    iget-boolean v3, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->isOpen:Z

    if-eqz v3, :cond_1

    .line 758
    invoke-direct {p0, v0, v2}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->closePanel(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    move v1, v2

    .line 759
    goto :goto_0

    .line 761
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->onBackPressed()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 762
    goto :goto_0

    .line 751
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public onMenuItemSelected(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "menu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 566
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 567
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 568
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->getRootMenu()Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->findMenuPanel(Landroid/view/Menu;)Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v1

    .line 569
    .local v1, "panel":Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;
    if-eqz v1, :cond_0

    .line 570
    iget v2, v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->featureId:I

    invoke-interface {v0, v2, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v2

    .line 573
    .end local v1    # "panel":Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    .prologue
    .line 578
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->reopenMenu(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Z)V

    .line 579
    return-void
.end method

.method onMenuOpened(ILandroid/view/Menu;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x1

    .line 554
    const/16 v2, 0x8

    if-ne p1, v2, :cond_1

    .line 555
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 556
    .local v0, "ab":Lcn/nubia/commonui/actionbar/app/ActionBar;
    if-eqz v0, :cond_0

    .line 557
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    .line 561
    .end local v0    # "ab":Lcn/nubia/commonui/actionbar/app/ActionBar;
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method onPanelClosed(ILandroid/view/Menu;)Z
    .locals 5
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 535
    const/16 v4, 0x8

    if-ne p1, v4, :cond_1

    .line 536
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 537
    .local v0, "ab":Lcn/nubia/commonui/actionbar/app/ActionBar;
    if-eqz v0, :cond_0

    .line 538
    invoke-virtual {v0, v3}, Lcn/nubia/commonui/actionbar/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    .line 549
    .end local v0    # "ab":Lcn/nubia/commonui/actionbar/app/ActionBar;
    :cond_0
    :goto_0
    return v2

    .line 541
    :cond_1
    if-nez p1, :cond_2

    .line 544
    invoke-direct {p0, p1, v2}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->getPanelState(IZ)Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v1

    .line 545
    .local v1, "st":Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;
    iget-boolean v2, v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->isOpen:Z

    if-eqz v2, :cond_2

    .line 546
    invoke-direct {p0, v1, v3}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->closePanel(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    .end local v1    # "st":Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;
    :cond_2
    move v2, v3

    .line 549
    goto :goto_0
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 168
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->ensureSubDecor()V

    .line 169
    return-void
.end method

.method public onPostResume()V
    .locals 2

    .prologue
    .line 231
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 232
    .local v0, "ab":Lcn/nubia/commonui/actionbar/app/ActionBar;
    if-eqz v0, :cond_0

    .line 233
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 235
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 223
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 224
    .local v0, "ab":Lcn/nubia/commonui/actionbar/app/ActionBar;
    if-eqz v0, :cond_0

    .line 225
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 227
    :cond_0
    return-void
.end method

.method onSubDecorInstalled(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "subDecor"    # Landroid/view/ViewGroup;

    .prologue
    .line 437
    return-void
.end method

.method onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 524
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mDecorContentParent:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    if-eqz v0, :cond_1

    .line 525
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mDecorContentParent:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 527
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 528
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setContentView(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 248
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->ensureSubDecor()V

    .line 249
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mSubDecor:Landroid/view/ViewGroup;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 250
    .local v0, "contentParent":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 251
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 252
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v1}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 253
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 239
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->ensureSubDecor()V

    .line 240
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mSubDecor:Landroid/view/ViewGroup;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 241
    .local v0, "contentParent":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 242
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 243
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v1}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 244
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 257
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->ensureSubDecor()V

    .line 258
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mSubDecor:Landroid/view/ViewGroup;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 259
    .local v0, "contentParent":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 260
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v1}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 262
    return-void
.end method

.method public startSupportActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;)Lcn/nubia/commonui/actionbar/view/ActionMode;
    .locals 4
    .param p1, "callback"    # Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;

    .prologue
    .line 583
    if-nez p1, :cond_0

    .line 584
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "ActionMode callback can not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 587
    :cond_0
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    if-eqz v2, :cond_1

    .line 588
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/view/ActionMode;->finish()V

    .line 591
    :cond_1
    new-instance v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$ActionModeCallbackWrapper;

    invoke-direct {v1, p0, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$ActionModeCallbackWrapper;-><init>(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;)V

    .line 593
    .local v1, "wrappedCallback":Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 594
    .local v0, "ab":Lcn/nubia/commonui/actionbar/app/ActionBar;
    if-eqz v0, :cond_2

    .line 595
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->startActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;)Lcn/nubia/commonui/actionbar/view/ActionMode;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    .line 596
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mAppCompatCallback:Lcn/nubia/commonui/actionbar/app/AppCompatCallback;

    if-eqz v2, :cond_2

    .line 597
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mAppCompatCallback:Lcn/nubia/commonui/actionbar/app/AppCompatCallback;

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    invoke-interface {v2, v3}, Lcn/nubia/commonui/actionbar/app/AppCompatCallback;->onSupportActionModeStarted(Lcn/nubia/commonui/actionbar/view/ActionMode;)V

    .line 601
    :cond_2
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    if-nez v2, :cond_3

    .line 603
    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->startSupportActionModeFromWindow(Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;)Lcn/nubia/commonui/actionbar/view/ActionMode;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    .line 606
    :cond_3
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    return-object v2
.end method

.method startSupportActionModeFromWindow(Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;)Lcn/nubia/commonui/actionbar/view/ActionMode;
    .locals 11
    .param p1, "callback"    # Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 619
    iget-object v6, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    if-eqz v6, :cond_0

    .line 620
    iget-object v6, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    invoke-virtual {v6}, Lcn/nubia/commonui/actionbar/view/ActionMode;->finish()V

    .line 623
    :cond_0
    new-instance v5, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$ActionModeCallbackWrapper;

    invoke-direct {v5, p0, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$ActionModeCallbackWrapper;-><init>(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;)V

    .line 624
    .local v5, "wrappedCallback":Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v0

    .line 626
    .local v0, "context":Landroid/content/Context;
    iget-object v6, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionModeView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    if-nez v6, :cond_1

    .line 627
    iget-boolean v6, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mIsFloating:Z

    if-eqz v6, :cond_5

    .line 628
    new-instance v6, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-direct {v6, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionModeView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    .line 629
    iget-object v6, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionModeView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-virtual {v6, v7}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->setSplitToolbar(Z)V

    .line 630
    new-instance v6, Landroid/widget/PopupWindow;

    sget v9, Lcn/nubia/commonui/R$attr;->actionModePopupWindowStyle:I

    invoke-direct {v6, v0, v10, v9}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v6, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionModePopup:Landroid/widget/PopupWindow;

    .line 632
    iget-object v6, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionModePopup:Landroid/widget/PopupWindow;

    iget-object v9, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionModeView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-virtual {v6, v9}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 633
    iget-object v6, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v9, -0x1

    invoke-virtual {v6, v9}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 635
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 636
    .local v2, "heightValue":Landroid/util/TypedValue;
    iget-object v6, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    sget v9, Lcn/nubia/commonui/R$attr;->actionBarSize:I

    invoke-virtual {v6, v9, v2, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 637
    iget v6, v2, Landroid/util/TypedValue;->data:I

    iget-object v9, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    .line 639
    .local v1, "height":I
    iget-object v6, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionModeView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-virtual {v6, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->setContentHeight(I)V

    .line 640
    iget-object v6, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v9, -0x2

    invoke-virtual {v6, v9}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 641
    new-instance v6, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$4;

    invoke-direct {v6, p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$4;-><init>(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;)V

    iput-object v6, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mShowActionModePopup:Ljava/lang/Runnable;

    .line 659
    .end local v1    # "height":I
    .end local v2    # "heightValue":Landroid/util/TypedValue;
    :cond_1
    :goto_0
    iget-object v6, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionModeView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    if-eqz v6, :cond_3

    .line 660
    iget-object v6, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionModeView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-virtual {v6}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->killMode()V

    .line 661
    new-instance v3, Lcn/nubia/commonui/actionbar/internal/view/StandaloneActionMode;

    iget-object v9, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionModeView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    iget-object v6, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionModePopup:Landroid/widget/PopupWindow;

    if-nez v6, :cond_6

    move v6, v7

    :goto_1
    invoke-direct {v3, v0, v9, v5, v6}, Lcn/nubia/commonui/actionbar/internal/view/StandaloneActionMode;-><init>(Landroid/content/Context;Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;Z)V

    .line 663
    .local v3, "mode":Lcn/nubia/commonui/actionbar/view/ActionMode;
    invoke-virtual {v3}, Lcn/nubia/commonui/actionbar/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v6

    invoke-interface {p1, v3, v6}, Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;->onCreateActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/Menu;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 664
    invoke-virtual {v3}, Lcn/nubia/commonui/actionbar/view/ActionMode;->invalidate()V

    .line 665
    iget-object v6, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionModeView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-virtual {v6, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->initForMode(Lcn/nubia/commonui/actionbar/view/ActionMode;)V

    .line 666
    iget-object v6, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionModeView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-virtual {v6, v8}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->setVisibility(I)V

    .line 667
    iput-object v3, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    .line 668
    iget-object v6, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v6, :cond_2

    .line 669
    iget-object v6, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mWindow:Landroid/view/Window;

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 671
    :cond_2
    iget-object v6, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionModeView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 674
    iget-object v6, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionModeView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-virtual {v6}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 675
    iget-object v6, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionModeView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-virtual {v6}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 681
    .end local v3    # "mode":Lcn/nubia/commonui/actionbar/view/ActionMode;
    :cond_3
    :goto_2
    iget-object v6, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mAppCompatCallback:Lcn/nubia/commonui/actionbar/app/AppCompatCallback;

    if-eqz v6, :cond_4

    .line 682
    iget-object v6, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mAppCompatCallback:Lcn/nubia/commonui/actionbar/app/AppCompatCallback;

    iget-object v7, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    invoke-interface {v6, v7}, Lcn/nubia/commonui/actionbar/app/AppCompatCallback;->onSupportActionModeStarted(Lcn/nubia/commonui/actionbar/view/ActionMode;)V

    .line 684
    :cond_4
    iget-object v6, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    return-object v6

    .line 649
    :cond_5
    iget-object v6, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mSubDecor:Landroid/view/ViewGroup;

    sget v9, Lcn/nubia/commonui/R$id;->action_mode_bar_stub:I

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcn/nubia/commonui/actionbar/internal/widget/ViewStubCompat;

    .line 651
    .local v4, "stub":Lcn/nubia/commonui/actionbar/internal/widget/ViewStubCompat;
    if-eqz v4, :cond_1

    .line 653
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcn/nubia/commonui/actionbar/internal/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 654
    invoke-virtual {v4}, Lcn/nubia/commonui/actionbar/internal/widget/ViewStubCompat;->inflate()Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    iput-object v6, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionModeView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    goto/16 :goto_0

    .end local v4    # "stub":Lcn/nubia/commonui/actionbar/internal/widget/ViewStubCompat;
    :cond_6
    move v6, v8

    .line 661
    goto :goto_1

    .line 678
    .restart local v3    # "mode":Lcn/nubia/commonui/actionbar/view/ActionMode;
    :cond_7
    iput-object v10, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    goto :goto_2
.end method
