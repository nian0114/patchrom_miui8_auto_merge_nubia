.class public Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;
.super Lcn/nubia/commonui/actionbar/app/ActionBar;
.source "WindowDecorActionBar.java"

# interfaces
.implements Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ALLOW_SHOW_HIDE_ANIMATIONS:Z


# instance fields
.field mActionMode:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;

.field private mActivity:Landroid/app/Activity;

.field private mContainerView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

.field private mContentAnimations:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mContextDisplayMode:I

.field private mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

.field private mCurWindowVisibility:I

.field private mCurrentShowAnim:Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

.field private mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

.field mDeferredDestroyActionMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

.field mDeferredModeDestroyCallback:Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;

.field private mDialog:Landroid/app/Dialog;

.field private mDisplayHomeAsUpSet:Z

.field private mHasEmbeddedTabs:Z

.field private mHiddenByApp:Z

.field private mHiddenBySystem:Z

.field final mHideListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

.field mHideOnContentScroll:Z

.field private mLastMenuVisibility:Z

.field private mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/commonui/actionbar/app/ActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNowShowing:Z

.field private mOverlayLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

.field private mSavedTabPosition:I

.field private mShowHideAnimationEnabled:Z

.field final mShowListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

.field private mShowingForMode:Z

.field private mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

.field private mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

.field private mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mThemedContext:Landroid/content/Context;

.field final mUpdateListener:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 80
    const-class v0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->$assertionsDisabled:Z

    .line 91
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_1

    :goto_1
    sput-boolean v1, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->ALLOW_SHOW_HIDE_ANIMATIONS:Z

    return-void

    :cond_0
    move v0, v2

    .line 80
    goto :goto_0

    :cond_1
    move v1, v2

    .line 91
    goto :goto_1
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "overlayMode"    # Z

    .prologue
    const/4 v3, 0x1

    .line 180
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBar;-><init>()V

    .line 106
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    .line 109
    const/4 v2, -0x1

    iput v2, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 118
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 128
    const/4 v2, 0x0

    iput v2, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    .line 130
    iput-boolean v3, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    .line 135
    iput-boolean v3, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mNowShowing:Z

    .line 143
    new-instance v2, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$1;

    invoke-direct {v2, p0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$1;-><init>(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)V

    iput-object v2, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mHideListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 164
    new-instance v2, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$2;

    invoke-direct {v2, p0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$2;-><init>(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)V

    iput-object v2, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mShowListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 172
    new-instance v2, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$3;

    invoke-direct {v2, p0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$3;-><init>(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)V

    iput-object v2, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mUpdateListener:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    .line 181
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    .line 182
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 183
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 184
    .local v0, "decor":Landroid/view/View;
    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->init(Landroid/view/View;)V

    .line 185
    if-nez p2, :cond_0

    .line 186
    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    .line 188
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 2
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    const/4 v1, 0x1

    .line 190
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBar;-><init>()V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    .line 130
    iput-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    .line 135
    iput-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mNowShowing:Z

    .line 143
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$1;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$1;-><init>(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mHideListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 164
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$2;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$2;-><init>(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mShowListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 172
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$3;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$3;-><init>(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mUpdateListener:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    .line 191
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDialog:Landroid/app/Dialog;

    .line 192
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->init(Landroid/view/View;)V

    .line 193
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    return v0
.end method

.method static synthetic access$100(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    .prologue
    .line 80
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    .prologue
    .line 80
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    .prologue
    .line 80
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    return-object v0
.end method

.method static synthetic access$1200(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    .prologue
    .line 80
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    .prologue
    .line 80
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContainerView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    .prologue
    .line 80
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    .prologue
    .line 80
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContextDisplayMode:I

    return v0
.end method

.method static synthetic access$502(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;
    .param p1, "x1"    # Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .prologue
    .line 80
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    return-object p1
.end method

.method static synthetic access$600(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    .prologue
    .line 80
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    return v0
.end method

.method static synthetic access$800(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    return v0
.end method

.method static synthetic access$900(ZZZ)Z
    .locals 1
    .param p0, "x0"    # Z
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 80
    invoke-static {p0, p1, p2}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->checkShowingFlags(ZZZ)Z

    move-result v0

    return v0
.end method

.method private static checkShowingFlags(ZZZ)Z
    .locals 1
    .param p0, "hiddenByApp"    # Z
    .param p1, "hiddenBySystem"    # Z
    .param p2, "showingForMode"    # Z

    .prologue
    const/4 v0, 0x1

    .line 809
    if-eqz p2, :cond_1

    .line 814
    :cond_0
    :goto_0
    return v0

    .line 811
    :cond_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_0

    .line 812
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDecorToolbar(Landroid/view/View;)Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 291
    instance-of v0, p1, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    if-eqz v0, :cond_0

    .line 292
    check-cast p1, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    .line 294
    .end local p1    # "view":Landroid/view/View;
    :goto_0
    return-object p1

    .line 293
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    instance-of v0, p1, Lcn/nubia/commonui/actionbar/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 294
    check-cast p1, Lcn/nubia/commonui/actionbar/widget/Toolbar;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getWrapper()Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    move-result-object p1

    goto :goto_0

    .line 296
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

.method private hideForActionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 760
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    if-eqz v0, :cond_1

    .line 761
    iput-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    .line 762
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 765
    :cond_0
    invoke-direct {p0, v1}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 767
    :cond_1
    return-void
.end method

.method private init(Landroid/view/View;)V
    .locals 13
    .param p1, "decor"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 206
    sget v7, Lcn/nubia/commonui/R$id;->decor_content_parent:I

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    iput-object v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    .line 208
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    if-eqz v7, :cond_0

    .line 209
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v7, p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;)V

    .line 211
    :cond_0
    sget v7, Lcn/nubia/commonui/R$id;->action_bar:I

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-direct {p0, v7}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->getDecorToolbar(Landroid/view/View;)Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    move-result-object v7

    iput-object v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    .line 212
    sget v7, Lcn/nubia/commonui/R$id;->action_context_bar:I

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    iput-object v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    .line 214
    sget v7, Lcn/nubia/commonui/R$id;->action_bar_container:I

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    iput-object v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContainerView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    .line 217
    sget v7, Lcn/nubia/commonui/R$id;->split_action_bar:I

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    iput-object v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    .line 220
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContainerView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    if-nez v7, :cond_2

    .line 222
    :cond_1
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " can only be used "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "with a compatible window decor layout"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 230
    :cond_2
    const-string v7, "splitActionBarWhenNarrow"

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->getUiOptionsFromMetadata()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 232
    .local v6, "splitWhenNarrow":Z
    const/4 v5, 0x0

    .line 234
    .local v5, "splitActionBar":Z
    if-eqz v6, :cond_3

    .line 235
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v10, Lcn/nubia/commonui/R$bool;->abc_split_action_bar_is_narrow:I

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 239
    :cond_3
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    if-eqz v7, :cond_4

    .line 240
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    iget-object v10, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-interface {v7, v10}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setSplitView(Landroid/view/ViewGroup;)V

    .line 241
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v7, v5}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setSplitToolbar(Z)V

    .line 242
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v7, v6}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setSplitWhenNarrow(Z)V

    .line 244
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    iget-object v10, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v7, v10}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->setSplitView(Landroid/view/ViewGroup;)V

    .line 245
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-virtual {v7, v5}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->setSplitToolbar(Z)V

    .line 246
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-virtual {v7, v6}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->setSplitWhenNarrow(Z)V

    .line 249
    :cond_4
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v7}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v7

    iput-object v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    .line 258
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcn/nubia/commonui/util/UiUtils;->isNubiaUi(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 259
    iput v8, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContextDisplayMode:I

    .line 267
    :goto_0
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v7}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->getDisplayOptions()I

    move-result v2

    .line 268
    .local v2, "current":I
    and-int/lit8 v7, v2, 0x4

    if-eqz v7, :cond_b

    move v4, v8

    .line 269
    .local v4, "homeAsUp":Z
    :goto_1
    if-eqz v4, :cond_5

    .line 270
    iput-boolean v8, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    .line 273
    :cond_5
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcn/nubia/commonui/actionbar/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcn/nubia/commonui/actionbar/internal/view/ActionBarPolicy;

    move-result-object v1

    .line 274
    .local v1, "abp":Lcn/nubia/commonui/actionbar/internal/view/ActionBarPolicy;
    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/view/ActionBarPolicy;->enableHomeButtonByDefault()Z

    move-result v7

    if-nez v7, :cond_6

    if-eqz v4, :cond_c

    :cond_6
    move v7, v8

    :goto_2
    invoke-virtual {p0, v7}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->setHomeButtonEnabled(Z)V

    .line 275
    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v7

    invoke-direct {p0, v7}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->setHasEmbeddedTabs(Z)V

    .line 277
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    sget-object v11, Lcn/nubia/commonui/R$styleable;->ActionBar:[I

    sget v12, Lcn/nubia/commonui/R$attr;->actionBarStyle:I

    invoke-virtual {v7, v10, v11, v12, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 279
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v7, Lcn/nubia/commonui/R$styleable;->ActionBar_hideOnContentScroll:I

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 280
    invoke-virtual {p0, v8}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->setHideOnContentScrollEnabled(Z)V

    .line 282
    :cond_7
    sget v7, Lcn/nubia/commonui/R$styleable;->ActionBar_elevation:I

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 284
    .local v3, "elevation":I
    if-eqz v3, :cond_8

    .line 285
    int-to-float v7, v3

    invoke-virtual {p0, v7}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->setElevation(F)V

    .line 287
    :cond_8
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 288
    return-void

    .line 261
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "abp":Lcn/nubia/commonui/actionbar/internal/view/ActionBarPolicy;
    .end local v2    # "current":I
    .end local v3    # "elevation":I
    .end local v4    # "homeAsUp":Z
    :cond_9
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v7}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->isSplit()Z

    move-result v7

    if-eqz v7, :cond_a

    move v7, v8

    :goto_3
    iput v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContextDisplayMode:I

    goto :goto_0

    :cond_a
    move v7, v9

    goto :goto_3

    .restart local v2    # "current":I
    :cond_b
    move v4, v9

    .line 268
    goto :goto_1

    .restart local v1    # "abp":Lcn/nubia/commonui/actionbar/internal/view/ActionBarPolicy;
    .restart local v4    # "homeAsUp":Z
    :cond_c
    move v7, v9

    .line 274
    goto :goto_2
.end method

.method private setHasEmbeddedTabs(Z)V
    .locals 5
    .param p1, "hasEmbeddedTabs"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 320
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    .line 322
    iget-boolean v3, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v3, :cond_1

    .line 323
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v3, v4}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setEmbeddedTabView(Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;)V

    .line 324
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContainerView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->setTabContainer(Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;)V

    .line 329
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->getNavigationMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    move v0, v1

    .line 330
    .local v0, "isInTabMode":Z
    :goto_1
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    if-nez v3, :cond_0

    .line 331
    if-eqz v0, :cond_3

    .line 332
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v3, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 333
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    if-eqz v3, :cond_0

    .line 334
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 340
    :cond_0
    :goto_2
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    iget-boolean v3, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v3, :cond_4

    if-eqz v0, :cond_4

    move v3, v1

    :goto_3
    invoke-interface {v4, v3}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setCollapsible(Z)V

    .line 341
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    iget-boolean v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v4, :cond_5

    if-eqz v0, :cond_5

    :goto_4
    invoke-virtual {v3, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    .line 342
    return-void

    .line 326
    .end local v0    # "isInTabMode":Z
    :cond_1
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContainerView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->setTabContainer(Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;)V

    .line 327
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    invoke-interface {v3, v4}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setEmbeddedTabView(Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 329
    goto :goto_1

    .line 337
    .restart local v0    # "isInTabMode":Z
    :cond_3
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    move v3, v2

    .line 340
    goto :goto_3

    :cond_5
    move v1, v2

    .line 341
    goto :goto_4
.end method

.method private showForActionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 735
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    if-nez v0, :cond_1

    .line 736
    iput-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    .line 737
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 740
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 742
    :cond_1
    return-void
.end method

.method private updateVisibility(Z)V
    .locals 4
    .param p1, "fromSystem"    # Z

    .prologue
    .line 820
    iget-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    iget-boolean v2, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    iget-boolean v3, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    invoke-static {v1, v2, v3}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->checkShowingFlags(ZZZ)Z

    move-result v0

    .line 823
    .local v0, "shown":Z
    if-eqz v0, :cond_1

    .line 824
    iget-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mNowShowing:Z

    if-nez v1, :cond_0

    .line 825
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mNowShowing:Z

    .line 826
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->doShow(Z)V

    .line 834
    :cond_0
    :goto_0
    return-void

    .line 829
    :cond_1
    iget-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mNowShowing:Z

    if-eqz v1, :cond_0

    .line 830
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mNowShowing:Z

    .line 831
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->doHide(Z)V

    goto :goto_0
.end method


# virtual methods
.method public animateToMode(Z)V
    .locals 4
    .param p1, "toActionMode"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 958
    if-eqz p1, :cond_0

    .line 959
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->showForActionMode()V

    .line 964
    :goto_0
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->animateToVisibility(I)V

    .line 966
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->animateToVisibility(I)V

    .line 969
    return-void

    .line 961
    :cond_0
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->hideForActionMode()V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 964
    goto :goto_1

    :cond_2
    move v2, v1

    .line 966
    goto :goto_2
.end method

.method public collapseActionView()Z
    .locals 1

    .prologue
    .line 1028
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->hasExpandedActionView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1029
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->collapseActionView()V

    .line 1030
    const/4 v0, 0x1

    .line 1032
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method completeDeferredDestroyActionMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 370
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDeferredDestroyActionMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    invoke-interface {v0, v1}, Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;->onDestroyActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;)V

    .line 373
    iput-object v2, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDeferredDestroyActionMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    .line 374
    iput-object v2, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;

    .line 376
    :cond_0
    return-void
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    .line 405
    iget-boolean v2, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mLastMenuVisibility:Z

    if-ne p1, v2, :cond_1

    .line 414
    :cond_0
    return-void

    .line 408
    :cond_1
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mLastMenuVisibility:Z

    .line 410
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 411
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 412
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/actionbar/app/ActionBar$OnMenuVisibilityListener;

    invoke-interface {v2, p1}, Lcn/nubia/commonui/actionbar/app/ActionBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    .line 411
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public doHide(Z)V
    .locals 8
    .param p1, "fromSystem"    # Z

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    .line 906
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    if-eqz v4, :cond_0

    .line 907
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    invoke-virtual {v4}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->cancel()V

    .line 911
    :cond_0
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setActionBarShowOrHide(Z)V

    .line 914
    iget v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    if-nez v4, :cond_5

    sget-boolean v4, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->ALLOW_SHOW_HIDE_ANIMATIONS:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    if-nez v4, :cond_1

    if-eqz p1, :cond_5

    .line 916
    :cond_1
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContainerView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-static {v4, v6}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 917
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContainerView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v4, v7}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 918
    new-instance v1, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    invoke-direct {v1}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;-><init>()V

    .line 919
    .local v1, "anim":Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContainerView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v4}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v2, v4

    .line 920
    .local v2, "endingY":F
    if-eqz p1, :cond_2

    .line 921
    const/4 v4, 0x2

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    .line 922
    .local v3, "topLeft":[I
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContainerView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v4, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 923
    aget v4, v3, v7

    int-to-float v4, v4

    sub-float/2addr v2, v4

    .line 925
    .end local v3    # "topLeft":[I
    :cond_2
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContainerView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 927
    .local v0, "a":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mUpdateListener:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setUpdateListener(Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 928
    invoke-virtual {v1, v0}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 929
    iget-boolean v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 930
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 933
    :cond_3
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v4}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    .line 935
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-static {v4, v6}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 936
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v5}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 939
    :cond_4
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    const v5, 0x10a0005

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->setInterpolator(Landroid/view/animation/Interpolator;)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 941
    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v4, v5}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->setDuration(J)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 942
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mHideListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    invoke-virtual {v1, v4}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 943
    iput-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 944
    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->start()V

    .line 948
    .end local v0    # "a":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .end local v1    # "anim":Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;
    .end local v2    # "endingY":F
    :goto_0
    return-void

    .line 946
    :cond_5
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mHideListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    goto :goto_0

    .line 921
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public doShow(Z)V
    .locals 9
    .param p1, "fromSystem"    # Z

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 837
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    if-eqz v4, :cond_0

    .line 838
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    invoke-virtual {v4}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->cancel()V

    .line 840
    :cond_0
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContainerView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v4, v7}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 843
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v4, v5}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setActionBarShowOrHide(Z)V

    .line 847
    iget v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    if-nez v4, :cond_6

    sget-boolean v4, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->ALLOW_SHOW_HIDE_ANIMATIONS:Z

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    if-nez v4, :cond_1

    if-eqz p1, :cond_6

    .line 850
    :cond_1
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContainerView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-static {v4, v6}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 851
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContainerView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v4}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v2, v4

    .line 852
    .local v2, "startingY":F
    if-eqz p1, :cond_2

    .line 853
    const/4 v4, 0x2

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    .line 854
    .local v3, "topLeft":[I
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContainerView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v4, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 855
    aget v4, v3, v5

    int-to-float v4, v4

    sub-float/2addr v2, v4

    .line 857
    .end local v3    # "topLeft":[I
    :cond_2
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContainerView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-static {v4, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 858
    new-instance v1, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    invoke-direct {v1}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;-><init>()V

    .line 859
    .local v1, "anim":Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContainerView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 861
    .local v0, "a":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mUpdateListener:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setUpdateListener(Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 862
    invoke-virtual {v1, v0}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 863
    iget-boolean v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 864
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    invoke-static {v4, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 865
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 867
    :cond_3
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    if-eqz v4, :cond_4

    iget v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContextDisplayMode:I

    if-ne v4, v5, :cond_4

    .line 869
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    iget-object v5, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v5}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 870
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v4, v7}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 871
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 873
    :cond_4
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    const v5, 0x10a0006

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->setInterpolator(Landroid/view/animation/Interpolator;)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 875
    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v4, v5}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->setDuration(J)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 883
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mShowListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    invoke-virtual {v1, v4}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 884
    iput-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 885
    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->start()V

    .line 900
    .end local v0    # "a":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .end local v1    # "anim":Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;
    .end local v2    # "startingY":F
    :goto_0
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    if-eqz v4, :cond_5

    .line 901
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 903
    :cond_5
    return-void

    .line 887
    :cond_6
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContainerView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-static {v4, v8}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 888
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContainerView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-static {v4, v6}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 889
    iget-boolean v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_7

    .line 890
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    invoke-static {v4, v6}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 892
    :cond_7
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    if-eqz v4, :cond_8

    iget v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContextDisplayMode:I

    if-ne v4, v5, :cond_8

    .line 894
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-static {v4, v8}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 895
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-static {v4, v6}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 896
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v4, v7}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 898
    :cond_8
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mShowListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    goto :goto_0

    .line 853
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public enableContentAnimations(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 723
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    .line 724
    return-void
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public getNavigationMode()I
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 5

    .prologue
    .line 972
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 973
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 974
    .local v1, "outValue":Landroid/util/TypedValue;
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 975
    .local v0, "currentTheme":Landroid/content/res/Resources$Theme;
    sget v3, Lcn/nubia/commonui/R$attr;->actionBarWidgetTheme:I

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 977
    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    .line 979
    .local v2, "targetThemeRes":I
    if-eqz v2, :cond_1

    .line 980
    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    .line 986
    .end local v0    # "currentTheme":Landroid/content/res/Resources$Theme;
    .end local v1    # "outValue":Landroid/util/TypedValue;
    .end local v2    # "targetThemeRes":I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    return-object v3

    .line 983
    .restart local v0    # "currentTheme":Landroid/content/res/Resources$Theme;
    .restart local v1    # "outValue":Landroid/util/TypedValue;
    .restart local v2    # "targetThemeRes":I
    :cond_1
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected final getUiOptionsFromMetadata()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1461
    :try_start_0
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1462
    .local v2, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 1465
    .local v1, "info":Landroid/content/pm/ActivityInfo;
    const/4 v3, 0x0

    .line 1466
    .local v3, "uiOptions":Ljava/lang/String;
    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    .line 1467
    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "android.support.UI_OPTIONS"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1474
    .end local v1    # "info":Landroid/content/pm/ActivityInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "uiOptions":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 1470
    :catch_0
    move-exception v0

    .line 1471
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "WindowDecorActionBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUiOptionsFromMetadata: Activity \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' not in manifest"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public hideForSystem()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 770
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    if-nez v0, :cond_0

    .line 771
    iput-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    .line 772
    invoke-direct {p0, v1}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 774
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 316
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcn/nubia/commonui/actionbar/internal/view/ActionBarPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->setHasEmbeddedTabs(Z)V

    .line 317
    return-void
.end method

.method public onContentScrollStarted()V
    .locals 1

    .prologue
    .line 1016
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    if-eqz v0, :cond_0

    .line 1017
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->cancel()V

    .line 1018
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 1020
    :cond_0
    return-void
.end method

.method public onContentScrollStopped()V
    .locals 0

    .prologue
    .line 1024
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 379
    iput p1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    .line 380
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 523
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContainerView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    .line 524
    return-void
.end method

.method public setCustomView(Landroid/view/View;Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutParams"    # Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;

    .prologue
    .line 1341
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1342
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setCustomView(Landroid/view/View;)V

    .line 1343
    return-void
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1447
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    if-nez v0, :cond_0

    .line 1448
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1450
    :cond_0
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 2
    .param p1, "showHomeAsUp"    # Z

    .prologue
    const/4 v1, 0x4

    .line 434
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 436
    return-void

    .line 434
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayOptions(II)V
    .locals 4
    .param p1, "options"    # I
    .param p2, "mask"    # I

    .prologue
    .line 515
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    .line 516
    .local v0, "current":I
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    .line 517
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    .line 519
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    and-int v2, p1, p2

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v3, v0

    or-int/2addr v2, v3

    invoke-interface {v1, v2}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setDisplayOptions(I)V

    .line 520
    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .locals 2
    .param p1, "showCustom"    # Z

    .prologue
    const/16 v1, 0x10

    .line 446
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 448
    return-void

    .line 446
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .locals 2
    .param p1, "showHome"    # Z

    .prologue
    const/4 v1, 0x2

    .line 429
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 430
    return-void

    .line 429
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .locals 2
    .param p1, "showTitle"    # Z

    .prologue
    const/16 v1, 0x8

    .line 440
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 442
    return-void

    .line 440
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setElevation(F)V
    .locals 1
    .param p1, "elevation"    # F

    .prologue
    .line 304
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContainerView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 305
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 308
    :cond_0
    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .locals 2
    .param p1, "hideOnContentScroll"    # Z

    .prologue
    .line 778
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 779
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 783
    :cond_0
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mHideOnContentScroll:Z

    .line 784
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 785
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 452
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setHomeButtonEnabled(Z)V

    .line 453
    return-void
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 390
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    .line 391
    if-nez p1, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->cancel()V

    .line 394
    :cond_0
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 504
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 505
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 457
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 458
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 495
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 496
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 500
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 501
    return-void
.end method

.method public showForSystem()V
    .locals 1

    .prologue
    .line 745
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    if-eqz v0, :cond_0

    .line 746
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    .line 747
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 749
    :cond_0
    return-void
.end method

.method public startActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;)Lcn/nubia/commonui/actionbar/view/ActionMode;
    .locals 4
    .param p1, "callback"    # Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 557
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mActionMode:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;

    if-eqz v1, :cond_0

    .line 558
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mActionMode:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->finish()V

    .line 561
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 562
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->killMode()V

    .line 563
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;-><init>(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;Landroid/content/Context;Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;)V

    .line 565
    .local v0, "mode":Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->dispatchOnCreate()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 566
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->invalidate()V

    .line 567
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->initForMode(Lcn/nubia/commonui/actionbar/view/ActionMode;)V

    .line 568
    invoke-virtual {p0, v3}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->animateToMode(Z)V

    .line 569
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_1

    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContextDisplayMode:I

    if-ne v1, v3, :cond_1

    .line 572
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 573
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 574
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_1

    .line 575
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 579
    :cond_1
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 581
    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mActionMode:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;

    .line 584
    .end local v0    # "mode":Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;
    :goto_0
    return-object v0

    .restart local v0    # "mode":Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
