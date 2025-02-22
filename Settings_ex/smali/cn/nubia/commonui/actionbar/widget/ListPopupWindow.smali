.class public Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$PopupScrollListener;,
        Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$PopupTouchInterceptor;,
        Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ResizePopupRunnable;,
        Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ListSelectorHider;,
        Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$PopupDataSetObserver;,
        Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$DropDownListView;,
        Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;
    }
.end annotation


# static fields
.field private static sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mDropDownAlwaysVisible:Z

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownGravity:I

.field private mDropDownHeight:I

.field private mDropDownHorizontalOffset:I

.field private mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$DropDownListView;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownVerticalOffset:I

.field private mDropDownVerticalOffsetSet:Z

.field private mDropDownWidth:I

.field private mForceIgnoreOutsideTouch:Z

.field private mHandler:Landroid/os/Handler;

.field private final mHideSelector:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ListSelectorHider;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mLayoutDirection:I

.field mListItemExpandMaximum:I

.field private mModal:Z

.field private mObserver:Landroid/database/DataSetObserver;

.field private mPopup:Landroid/widget/PopupWindow;

.field private mPromptPosition:I

.field private mPromptView:Landroid/view/View;

.field private final mResizePopupRunnable:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ResizePopupRunnable;

.field private final mScrollListener:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$PopupScrollListener;

.field private mShowDropDownRunnable:Ljava/lang/Runnable;

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchInterceptor:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$PopupTouchInterceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 80
    :try_start_0
    const-class v1, Landroid/widget/PopupWindow;

    const-string v2, "setClipToScreenEnabled"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    return-void

    .line 82
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_0
    move-exception v0

    .line 83
    .restart local v0    # "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "ListPopupWindow"

    const-string v2, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 216
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v2, -0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownHeight:I

    .line 93
    iput v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownWidth:I

    .line 98
    iput v3, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownGravity:I

    .line 100
    iput-boolean v3, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 101
    iput-boolean v3, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 102
    const v2, 0x7fffffff

    iput v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mListItemExpandMaximum:I

    .line 105
    iput v3, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPromptPosition:I

    .line 116
    new-instance v2, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-direct {v2, p0, v4}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$1;)V

    iput-object v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mResizePopupRunnable:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ResizePopupRunnable;

    .line 117
    new-instance v2, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-direct {v2, p0, v4}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$1;)V

    iput-object v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mTouchInterceptor:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$PopupTouchInterceptor;

    .line 118
    new-instance v2, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$PopupScrollListener;

    invoke-direct {v2, p0, v4}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$PopupScrollListener;-><init>(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$1;)V

    iput-object v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mScrollListener:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$PopupScrollListener;

    .line 119
    new-instance v2, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ListSelectorHider;

    invoke-direct {v2, p0, v4}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ListSelectorHider;-><init>(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$1;)V

    iput-object v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mHideSelector:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ListSelectorHider;

    .line 122
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    .line 124
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 228
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 230
    sget-object v2, Lcn/nubia/commonui/R$styleable;->ListPopupWindow:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 232
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcn/nubia/commonui/R$styleable;->ListPopupWindow_android_dropDownHorizontalOffset:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 234
    sget v2, Lcn/nubia/commonui/R$styleable;->ListPopupWindow_android_dropDownVerticalOffset:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 236
    iget v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    if-eqz v2, :cond_0

    .line 237
    iput-boolean v5, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    .line 239
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 241
    new-instance v2, Lcn/nubia/commonui/actionbar/internal/widget/AppCompatPopupWindow;

    invoke-direct {v2, p1, p2, p3}, Lcn/nubia/commonui/actionbar/internal/widget/AppCompatPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 242
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 245
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 246
    .local v1, "locale":Ljava/util/Locale;
    invoke-static {v1}, Landroid/support/v4/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    iput v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mLayoutDirection:I

    .line 247
    return-void
.end method

.method static synthetic access$1100(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    .prologue
    .line 65
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$1200(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;)Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ResizePopupRunnable;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    .prologue
    .line 65
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mResizePopupRunnable:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ResizePopupRunnable;

    return-object v0
.end method

.method static synthetic access$1300(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    .prologue
    .line 65
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;)Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$DropDownListView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    .prologue
    .line 65
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$DropDownListView;

    return-object v0
.end method

.method private buildDropDown()I
    .locals 21

    .prologue
    .line 1049
    const/16 v17, 0x0

    .line 1051
    .local v17, "otherHeights":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$DropDownListView;

    if-nez v1, :cond_7

    .line 1052
    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 1060
    .local v8, "context":Landroid/content/Context;
    new-instance v1, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$2;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$2;-><init>(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    .line 1070
    new-instance v3, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mModal:Z

    if-nez v1, :cond_6

    const/4 v1, 0x1

    :goto_0
    invoke-direct {v3, v8, v1}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$DropDownListView;-><init>(Landroid/content/Context;Z)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$DropDownListView;

    .line 1071
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1072
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1074
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v1, v3}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1075
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v3}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1076
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$DropDownListView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$DropDownListView;->setFocusable(Z)V

    .line 1077
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$DropDownListView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$DropDownListView;->setFocusableInTouchMode(Z)V

    .line 1078
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$DropDownListView;

    new-instance v3, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$3;-><init>(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;)V

    invoke-virtual {v1, v3}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1094
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mScrollListener:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$PopupScrollListener;

    invoke-virtual {v1, v3}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$DropDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1096
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_1

    .line 1097
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v1, v3}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1100
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$DropDownListView;

    .line 1102
    .local v9, "dropDownView":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    .line 1103
    .local v13, "hintView":Landroid/view/View;
    if-eqz v13, :cond_2

    .line 1106
    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1107
    .local v11, "hintContainer":Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1109
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v12, v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1113
    .local v12, "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPromptPosition:I

    packed-switch v1, :pswitch_data_0

    .line 1125
    const-string v1, "ListPopupWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid hint position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPromptPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownWidth:I

    const/high16 v3, -0x80000000

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 1132
    .local v20, "widthSpec":I
    const/4 v10, 0x0

    .line 1133
    .local v10, "heightSpec":I
    move/from16 v0, v20

    invoke-virtual {v13, v0, v10}, Landroid/view/View;->measure(II)V

    .line 1135
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .end local v12    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 1136
    .restart local v12    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v3, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v3

    iget v3, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v17, v1, v3

    .line 1139
    move-object v9, v11

    .line 1142
    .end local v10    # "heightSpec":I
    .end local v11    # "hintContainer":Landroid/widget/LinearLayout;
    .end local v12    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v20    # "widthSpec":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v9}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1156
    .end local v8    # "context":Landroid/content/Context;
    .end local v13    # "hintView":Landroid/view/View;
    :cond_3
    :goto_2
    const/16 v18, 0x0

    .line 1157
    .local v18, "padding":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1158
    .local v7, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_8

    .line 1159
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1160
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int v18, v1, v3

    .line 1164
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v1, :cond_4

    .line 1165
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 1172
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_9

    const/4 v14, 0x1

    .line 1174
    .local v14, "ignoreBottomDecorations":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    invoke-virtual {v1, v3, v4}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v16

    .line 1177
    .local v16, "maxHeight":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v1, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownHeight:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_a

    .line 1178
    :cond_5
    add-int v1, v16, v18

    .line 1206
    :goto_5
    return v1

    .line 1070
    .end local v7    # "background":Landroid/graphics/drawable/Drawable;
    .end local v9    # "dropDownView":Landroid/view/ViewGroup;
    .end local v14    # "ignoreBottomDecorations":Z
    .end local v16    # "maxHeight":I
    .end local v18    # "padding":I
    .restart local v8    # "context":Landroid/content/Context;
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1115
    .restart local v9    # "dropDownView":Landroid/view/ViewGroup;
    .restart local v11    # "hintContainer":Landroid/widget/LinearLayout;
    .restart local v12    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v13    # "hintView":Landroid/view/View;
    :pswitch_0
    invoke-virtual {v11, v9, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1116
    invoke-virtual {v11, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 1120
    :pswitch_1
    invoke-virtual {v11, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1121
    invoke-virtual {v11, v9, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 1144
    .end local v8    # "context":Landroid/content/Context;
    .end local v9    # "dropDownView":Landroid/view/ViewGroup;
    .end local v11    # "hintContainer":Landroid/widget/LinearLayout;
    .end local v12    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v13    # "hintView":Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 1145
    .restart local v9    # "dropDownView":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    move-object/from16 v19, v0

    .line 1146
    .local v19, "view":Landroid/view/View;
    if-eqz v19, :cond_3

    .line 1147
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 1149
    .restart local v12    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v3, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v3

    iget v3, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v17, v1, v3

    goto/16 :goto_2

    .line 1168
    .end local v12    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v19    # "view":Landroid/view/View;
    .restart local v7    # "background":Landroid/graphics/drawable/Drawable;
    .restart local v18    # "padding":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_3

    .line 1172
    :cond_9
    const/4 v14, 0x0

    goto :goto_4

    .line 1182
    .restart local v14    # "ignoreBottomDecorations":Z
    .restart local v16    # "maxHeight":I
    :cond_a
    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownWidth:I

    packed-switch v1, :pswitch_data_1

    .line 1196
    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownWidth:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1200
    .local v2, "childWidthSpec":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$DropDownListView;

    const/4 v3, 0x0

    const/4 v4, -0x1

    sub-int v5, v16, v17

    const/4 v6, -0x1

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$DropDownListView;->measureHeightOfChildrenCompat(IIIII)I

    move-result v15

    .line 1204
    .local v15, "listContent":I
    if-lez v15, :cond_b

    add-int v17, v17, v18

    .line 1206
    :cond_b
    add-int v1, v15, v17

    goto :goto_5

    .line 1184
    .end local v2    # "childWidthSpec":I
    .end local v15    # "listContent":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    sub-int/2addr v1, v3

    const/high16 v3, -0x80000000

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1188
    .restart local v2    # "childWidthSpec":I
    goto :goto_6

    .line 1190
    .end local v2    # "childWidthSpec":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    sub-int/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1194
    .restart local v2    # "childWidthSpec":I
    goto :goto_6

    .line 1113
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1182
    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private removePromptView()V
    .locals 3

    .prologue
    .line 688
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 689
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 690
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 691
    check-cast v0, Landroid/view/ViewGroup;

    .line 692
    .local v0, "group":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 695
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_0
    return-void
.end method

.method private setPopupClipToScreenEnabled(Z)V
    .locals 6
    .param p1, "clip"    # Z

    .prologue
    .line 1771
    sget-object v1, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 1773
    :try_start_0
    sget-object v1, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1778
    :cond_0
    :goto_0
    return-void

    .line 1774
    :catch_0
    move-exception v0

    .line 1775
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ListPopupWindow"

    const-string v2, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public clearListSelection()V
    .locals 2

    .prologue
    .line 747
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$DropDownListView;

    .line 748
    .local v0, "list":Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$DropDownListView;
    if-eqz v0, :cond_0

    .line 750
    const/4 v1, 0x1

    # setter for: Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$DropDownListView;->access$502(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$DropDownListView;Z)Z

    .line 752
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$DropDownListView;->requestLayout()V

    .line 754
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 671
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 672
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->removePromptView()V

    .line 673
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 674
    iput-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$DropDownListView;

    .line 675
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mResizePopupRunnable:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 676
    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$DropDownListView;

    return-object v0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 2

    .prologue
    .line 768
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 256
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_3

    .line 257
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$PopupDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    .line 261
    :cond_0
    :goto_0
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 262
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 266
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$DropDownListView;

    if-eqz v0, :cond_2

    .line 267
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$DropDownListView;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 269
    :cond_2
    return-void

    .line 258
    :cond_3
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 435
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 436
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 398
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 399
    return-void
.end method

.method public setContentWidth(I)V
    .locals 3
    .param p1, "width"    # I

    .prologue
    .line 508
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 509
    .local v0, "popupBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 510
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 511
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    iput v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownWidth:I

    .line 515
    :goto_0
    return-void

    .line 513
    :cond_0
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->setWidth(I)V

    goto :goto_0
.end method

.method public setDropDownGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 481
    iput p1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownGravity:I

    .line 482
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 710
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 711
    return-void
.end method

.method public setModal(Z)V
    .locals 1
    .param p1, "modal"    # Z

    .prologue
    .line 304
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mModal:Z

    .line 305
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 306
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .prologue
    .line 684
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 685
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 541
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 542
    return-void
.end method

.method public setPromptPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 281
    iput p1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPromptPosition:I

    .line 282
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 498
    iput p1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownWidth:I

    .line 499
    return-void
.end method

.method public show()V
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v9, -0x2

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 584
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->buildDropDown()I

    move-result v6

    .line 586
    .local v6, "height":I
    const/4 v4, 0x0

    .line 587
    .local v4, "widthSpec":I
    const/4 v5, 0x0

    .line 589
    .local v5, "heightSpec":I
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->isInputMethodNotNeeded()Z

    move-result v7

    .line 591
    .local v7, "noInputMethod":Z
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 592
    iget v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v2, v0, :cond_2

    .line 595
    const/4 v4, -0x1

    .line 602
    :goto_0
    iget v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v2, v0, :cond_8

    .line 605
    if-eqz v7, :cond_4

    move v5, v6

    .line 606
    :goto_1
    if-eqz v7, :cond_6

    .line 607
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v8, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v8, v0, :cond_5

    :goto_2
    invoke-virtual {v2, v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 622
    :goto_3
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v2, :cond_0

    move v1, v3

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 624
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    iget v3, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 665
    :cond_1
    :goto_4
    return-void

    .line 596
    :cond_2
    iget v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v2, v9, :cond_3

    .line 597
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    goto :goto_0

    .line 599
    :cond_3
    iget v4, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownWidth:I

    goto :goto_0

    :cond_4
    move v5, v0

    .line 605
    goto :goto_1

    :cond_5
    move v0, v1

    .line 607
    goto :goto_2

    .line 611
    :cond_6
    iget-object v8, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v2, v0, :cond_7

    move v2, v0

    :goto_5
    invoke-virtual {v8, v2, v0}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    goto :goto_3

    :cond_7
    move v2, v1

    goto :goto_5

    .line 616
    :cond_8
    iget v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v0, v9, :cond_9

    .line 617
    move v5, v6

    goto :goto_3

    .line 619
    :cond_9
    iget v5, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownHeight:I

    goto :goto_3

    .line 627
    :cond_a
    iget v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v2, v0, :cond_d

    .line 628
    const/4 v4, -0x1

    .line 637
    :goto_6
    iget v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v2, v0, :cond_f

    .line 638
    const/4 v5, -0x1

    .line 647
    :goto_7
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v4, v5}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 648
    invoke-direct {p0, v3}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->setPopupClipToScreenEnabled(Z)V

    .line 652
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v8, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v8, :cond_11

    iget-boolean v8, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v8, :cond_11

    :goto_8
    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 653
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mTouchInterceptor:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 654
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    iget v8, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    iget v9, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownGravity:I

    invoke-static {v1, v2, v3, v8, v9}, Landroid/support/v4/widget/PopupWindowCompat;->showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    .line 656
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$DropDownListView;->setSelection(I)V

    .line 658
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mModal:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$DropDownListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 659
    :cond_b
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->clearListSelection()V

    .line 661
    :cond_c
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mModal:Z

    if-nez v0, :cond_1

    .line 662
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mHideSelector:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ListSelectorHider;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 630
    :cond_d
    iget v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v2, v9, :cond_e

    .line 631
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_6

    .line 633
    :cond_e
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v8, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownWidth:I

    invoke-virtual {v2, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_6

    .line 640
    :cond_f
    iget v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v2, v9, :cond_10

    .line 641
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_7

    .line 643
    :cond_10
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v8, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownHeight:I

    invoke-virtual {v2, v8}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_7

    :cond_11
    move v3, v1

    .line 652
    goto :goto_8
.end method
