.class public abstract Landroid/widget/NubiaCursorController;
.super Ljava/lang/Object;
.source "NubiaCursorController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/NubiaCursorController$SelectionStartHandleView;,
        Landroid/widget/NubiaCursorController$SelectionModifierCursorController;,
        Landroid/widget/NubiaCursorController$SelectionEndHandleView;,
        Landroid/widget/NubiaCursorController$NubiaHandleView;,
        Landroid/widget/NubiaCursorController$MagnifierInsertionHandleView;,
        Landroid/widget/NubiaCursorController$InsertionPointCursorController;,
        Landroid/widget/NubiaCursorController$InsertionHandleView;,
        Landroid/widget/NubiaCursorController$FloatPanelViewController;
    }
.end annotation


# static fields
.field public static final INSERT_CURSOR_TYPE:I = 0x1

.field public static final MAX_CLIP_DATA_NUMBER:I = 0x3

.field public static final SELECT_CURSOR_TYPE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "NubiaCursorController"

.field public static final mHandleAlpha:I = 0xf2


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mEditor:Landroid/widget/Editor;

.field private mFloatPanelEdgeLeftRightPadding:I

.field private mFloatPanelLeftRightPadding:I

.field private mScreenSizePonit:Landroid/graphics/Point;

.field private mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleRight:Landroid/graphics/drawable/Drawable;

.field protected mTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/Editor;Landroid/content/Context;)V
    .locals 3
    .param p1, "editor"    # Landroid/widget/Editor;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/NubiaCursorController;->mEditor:Landroid/widget/Editor;

    iput-object p2, p0, Landroid/widget/NubiaCursorController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/widget/Editor;->textview()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/NubiaCursorController;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/NubiaCursorController;->mTextView:Landroid/widget/TextView;

    const v1, 0x4cffffff    # 1.3421772E8f

    iget-object v2, p0, Landroid/widget/NubiaCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHighlightColor()I

    move-result v2

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x309003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/NubiaCursorController;->mFloatPanelEdgeLeftRightPadding:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x309003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/NubiaCursorController;->mFloatPanelLeftRightPadding:I

    return-void
.end method

.method static synthetic access$100(Landroid/widget/NubiaCursorController;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/NubiaCursorController;

    .prologue
    iget-object v0, p0, Landroid/widget/NubiaCursorController;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/NubiaCursorController;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Landroid/widget/NubiaCursorController;

    .prologue
    iget-object v0, p0, Landroid/widget/NubiaCursorController;->mScreenSizePonit:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$202(Landroid/widget/NubiaCursorController;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 0
    .param p0, "x0"    # Landroid/widget/NubiaCursorController;
    .param p1, "x1"    # Landroid/graphics/Point;

    .prologue
    iput-object p1, p0, Landroid/widget/NubiaCursorController;->mScreenSizePonit:Landroid/graphics/Point;

    return-object p1
.end method

.method static synthetic access$300(Landroid/widget/NubiaCursorController;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NubiaCursorController;

    .prologue
    iget v0, p0, Landroid/widget/NubiaCursorController;->mFloatPanelLeftRightPadding:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/NubiaCursorController;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NubiaCursorController;

    .prologue
    iget v0, p0, Landroid/widget/NubiaCursorController;->mFloatPanelEdgeLeftRightPadding:I

    return v0
.end method

.method static synthetic access$600(J)I
    .locals 2
    .param p0, "x0"    # J

    .prologue
    invoke-static {p0, p1}, Landroid/widget/NubiaCursorController;->extractRangeStartFromLong(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(J)I
    .locals 2
    .param p0, "x0"    # J

    .prologue
    invoke-static {p0, p1}, Landroid/widget/NubiaCursorController;->extractRangeEndFromLong(J)I

    move-result v0

    return v0
.end method

.method public static create(Landroid/widget/Editor;Landroid/content/Context;I)Landroid/widget/NubiaCursorController;
    .locals 1
    .param p0, "editor"    # Landroid/widget/Editor;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    new-instance v0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;

    invoke-direct {v0, p0, p1}, Landroid/widget/NubiaCursorController$InsertionPointCursorController;-><init>(Landroid/widget/Editor;Landroid/content/Context;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    new-instance v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;

    invoke-direct {v0, p0, p1}, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;-><init>(Landroid/widget/Editor;Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ensureSelectionHandles()V
    .locals 4

    .prologue
    iget-object v2, p0, Landroid/widget/NubiaCursorController;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .local v1, "typedArray":Landroid/content/res/TypedArray;
    const/16 v2, 0xde

    const v3, 0x30a0006

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .local v0, "appThemeColor":I
    iget-object v2, p0, Landroid/widget/NubiaCursorController;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/NubiaCursorController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x3020121

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/NubiaCursorController;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/widget/NubiaCursorController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x3020120

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/NubiaCursorController;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/widget/NubiaCursorController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x3020122

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/NubiaCursorController;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static extractRangeEndFromLong(J)I
    .locals 2
    .param p0, "time"    # J

    .prologue
    const-wide/16 v0, -0x1

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method private static extractRangeStartFromLong(J)I
    .locals 2
    .param p0, "time"    # J

    .prologue
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public abstract computePanelPosition([I)V
.end method

.method public abstract computePanelPositionOnBottom()I
.end method

.method public abstract computePanelPositionOnEndTop()I
.end method

.method public createFloatPanelViewController(I)Landroid/widget/NubiaCursorController$FloatPanelViewController;
    .locals 1
    .param p1, "layoutId"    # I

    .prologue
    new-instance v0, Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-direct {v0, p0, p0, p1}, Landroid/widget/NubiaCursorController$FloatPanelViewController;-><init>(Landroid/widget/NubiaCursorController;Landroid/widget/NubiaCursorController;I)V

    return-object v0
.end method

.method public abstract getClipboardPanel()Landroid/widget/NubiaCursorController$FloatPanelViewController;
.end method

.method public getMaxTouchOffset()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getMinTouchOffset()I
    .locals 1

    .prologue
    const/4 v0, -0x1

    return v0
.end method

.method public abstract hide()V
.end method

.method initHandleView(Landroid/widget/Editor;ILandroid/widget/NubiaCursorController;)Landroid/widget/NubiaCursorController$NubiaHandleView;
    .locals 3
    .param p1, "editor"    # Landroid/widget/Editor;
    .param p2, "type"    # I
    .param p3, "controller"    # Landroid/widget/NubiaCursorController;

    .prologue
    invoke-direct {p0}, Landroid/widget/NubiaCursorController;->ensureSelectionHandles()V

    const/4 v0, 0x0

    .local v0, "outHandleView":Landroid/widget/NubiaCursorController$NubiaHandleView;
    if-nez p2, :cond_2

    invoke-virtual {p1}, Landroid/widget/Editor;->hasMagnifierController()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/widget/NubiaCursorController$MagnifierInsertionHandleView;

    .end local v0    # "outHandleView":Landroid/widget/NubiaCursorController$NubiaHandleView;
    iget-object v1, p0, Landroid/widget/NubiaCursorController;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, p0, p1, v1}, Landroid/widget/NubiaCursorController$MagnifierInsertionHandleView;-><init>(Landroid/widget/NubiaCursorController;Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)V

    .restart local v0    # "outHandleView":Landroid/widget/NubiaCursorController$NubiaHandleView;
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0, p3}, Landroid/widget/NubiaCursorController$NubiaHandleView;->setCursorController(Landroid/widget/NubiaCursorController;)V

    invoke-virtual {v0, p2}, Landroid/widget/NubiaCursorController$NubiaHandleView;->setType(I)V

    :goto_1
    return-object v0

    :cond_1
    new-instance v0, Landroid/widget/NubiaCursorController$InsertionHandleView;

    .end local v0    # "outHandleView":Landroid/widget/NubiaCursorController$NubiaHandleView;
    iget-object v1, p0, Landroid/widget/NubiaCursorController;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, p0, p1, v1}, Landroid/widget/NubiaCursorController$InsertionHandleView;-><init>(Landroid/widget/NubiaCursorController;Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)V

    .restart local v0    # "outHandleView":Landroid/widget/NubiaCursorController$NubiaHandleView;
    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    new-instance v0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;

    .end local v0    # "outHandleView":Landroid/widget/NubiaCursorController$NubiaHandleView;
    iget-object v1, p0, Landroid/widget/NubiaCursorController;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/widget/NubiaCursorController;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, p0, p1, v1, v2}, Landroid/widget/NubiaCursorController$SelectionStartHandleView;-><init>(Landroid/widget/NubiaCursorController;Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .restart local v0    # "outHandleView":Landroid/widget/NubiaCursorController$NubiaHandleView;
    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    new-instance v0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;

    .end local v0    # "outHandleView":Landroid/widget/NubiaCursorController$NubiaHandleView;
    iget-object v1, p0, Landroid/widget/NubiaCursorController;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/widget/NubiaCursorController;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, p0, p1, v1, v2}, Landroid/widget/NubiaCursorController$SelectionEndHandleView;-><init>(Landroid/widget/NubiaCursorController;Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .restart local v0    # "outHandleView":Landroid/widget/NubiaCursorController$NubiaHandleView;
    goto :goto_0

    :cond_4
    const-string v1, "NubiaCursorController"

    const-string v2, "Failed to init handle view"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isSelectionStartDragged()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isShowing()Z
.end method

.method onClipBoardPancelClick()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController;->getClipboardPanel()Landroid/widget/NubiaCursorController$FloatPanelViewController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->hide()V

    return-void
.end method

.method public abstract onDetached()V
.end method

.method public abstract onHandleTouchEvent(Landroid/widget/NubiaCursorController$NubiaHandleView;Landroid/view/MotionEvent;)Z
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public onTouchModeChanged(Z)V
    .locals 0
    .param p1, "isInTouchMode"    # Z

    .prologue
    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/NubiaCursorController;->hide()V

    :cond_0
    return-void
.end method

.method public resetTouchOffsets()V
    .locals 0

    .prologue
    return-void
.end method

.method public selectCurrentRange()Z
    .locals 15

    .prologue
    iget-object v13, p0, Landroid/widget/NubiaCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v13

    instance-of v13, v13, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v13, :cond_0

    iget-object v13, p0, Landroid/widget/NubiaCursorController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v13}, Landroid/widget/Editor;->selectAllWrap()Z

    move-result v13

    :goto_0
    return v13

    :cond_0
    iget-object v13, p0, Landroid/widget/NubiaCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    .local v1, "inputType":I
    and-int/lit8 v2, v1, 0xf

    .local v2, "klass":I
    and-int/lit16 v11, v1, 0xff0

    .local v11, "variation":I
    const/4 v13, 0x2

    if-eq v2, v13, :cond_1

    const/4 v13, 0x3

    if-eq v2, v13, :cond_1

    const/4 v13, 0x4

    if-eq v2, v13, :cond_1

    const/16 v13, 0x10

    if-eq v11, v13, :cond_1

    const/16 v13, 0x20

    if-eq v11, v13, :cond_1

    const/16 v13, 0xd0

    if-eq v11, v13, :cond_1

    const/16 v13, 0xb0

    if-ne v11, v13, :cond_2

    :cond_1
    iget-object v13, p0, Landroid/widget/NubiaCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->selectAllText()Z

    move-result v13

    goto :goto_0

    :cond_2
    iget-object v13, p0, Landroid/widget/NubiaCursorController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v13}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/NubiaCursorController;

    move-result-object v0

    .local v0, "controller":Landroid/widget/NubiaCursorController;
    invoke-virtual {v0}, Landroid/widget/NubiaCursorController;->getMinTouchOffset()I

    move-result v4

    .local v4, "minOffset":I
    invoke-virtual {v0}, Landroid/widget/NubiaCursorController;->getMaxTouchOffset()I

    move-result v3

    .local v3, "maxOffset":I
    if-ltz v4, :cond_3

    iget-object v13, p0, Landroid/widget/NubiaCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-le v4, v13, :cond_4

    :cond_3
    const/4 v13, 0x0

    goto :goto_0

    :cond_4
    if-ltz v3, :cond_5

    iget-object v13, p0, Landroid/widget/NubiaCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-le v3, v13, :cond_6

    :cond_5
    const/4 v13, 0x0

    goto :goto_0

    :cond_6
    iget-object v13, p0, Landroid/widget/NubiaCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    check-cast v13, Landroid/text/Spanned;

    const-class v14, Landroid/text/style/URLSpan;

    invoke-interface {v13, v4, v3, v14}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/text/style/URLSpan;

    .local v10, "urlSpans":[Landroid/text/style/URLSpan;
    array-length v13, v10

    const/4 v14, 0x1

    if-lt v13, v14, :cond_8

    const/4 v13, 0x0

    aget-object v9, v10, v13

    .local v9, "urlSpan":Landroid/text/style/URLSpan;
    iget-object v13, p0, Landroid/widget/NubiaCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    check-cast v13, Landroid/text/Spanned;

    invoke-interface {v13, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    .local v8, "selectionStart":I
    iget-object v13, p0, Landroid/widget/NubiaCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    check-cast v13, Landroid/text/Spanned;

    invoke-interface {v13, v9}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .end local v9    # "urlSpan":Landroid/text/style/URLSpan;
    .local v5, "selectionEnd":I
    :cond_7
    :goto_1
    iget-object v13, p0, Landroid/widget/NubiaCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    check-cast v13, Landroid/text/Spannable;

    invoke-static {v13, v8, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    if-le v5, v8, :cond_a

    const/4 v13, 0x1

    goto/16 :goto_0

    .end local v5    # "selectionEnd":I
    .end local v8    # "selectionStart":I
    :cond_8
    iget-object v13, p0, Landroid/widget/NubiaCursorController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v13}, Landroid/widget/Editor;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v12

    .local v12, "wordIterator":Landroid/text/method/WordIterator;
    iget-object v13, p0, Landroid/widget/NubiaCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13, v4, v3}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    invoke-virtual {v12, v4}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v8

    .restart local v8    # "selectionStart":I
    invoke-virtual {v12, v3}, Landroid/text/method/WordIterator;->getEnd(I)I

    move-result v5

    .restart local v5    # "selectionEnd":I
    const/4 v13, -0x1

    if-eq v8, v13, :cond_9

    const/4 v13, -0x1

    if-eq v5, v13, :cond_9

    if-ne v8, v5, :cond_7

    :cond_9
    iget-object v13, p0, Landroid/widget/NubiaCursorController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v13, v4}, Landroid/widget/Editor;->getCharRangeWrap(I)J

    move-result-wide v6

    .local v6, "range":J
    invoke-static {v6, v7}, Landroid/widget/NubiaCursorController;->extractRangeStartFromLong(J)I

    move-result v8

    invoke-static {v6, v7}, Landroid/widget/NubiaCursorController;->extractRangeEndFromLong(J)I

    move-result v5

    goto :goto_1

    .end local v6    # "range":J
    .end local v12    # "wordIterator":Landroid/text/method/WordIterator;
    :cond_a
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method public setMinMaxOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    return-void
.end method

.method setupClipBoardPanel(Landroid/content/ClipData;Landroid/view/View$OnClickListener;)V
    .locals 10
    .param p1, "clipData"    # Landroid/content/ClipData;
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController;->getClipboardPanel()Landroid/widget/NubiaCursorController$FloatPanelViewController;

    move-result-object v7

    const v8, 0x30d0076

    invoke-virtual {v7, v8}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->getElement(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .local v4, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-static {}, Lnubia/os/ClipServiceManagerExtra;->getInstance()Lnubia/os/ClipServiceManagerExtra;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lnubia/os/ClipServiceManagerExtra;->getData(I)Ljava/util/List;

    move-result-object v0

    .local v0, "datas":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x3

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    .local v5, "num":I
    iget-object v7, p0, Landroid/widget/NubiaCursorController;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .local v2, "inflater":Landroid/view/LayoutInflater;
    const/4 v7, 0x1

    if-ne v5, v7, :cond_1

    const v7, 0x3030030

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .local v6, "tv":Landroid/widget/TextView;
    const/4 v7, 0x0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v7, 0x3020129

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .end local v6    # "tv":Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController;->getClipboardPanel()Landroid/widget/NubiaCursorController$FloatPanelViewController;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V

    return-void

    :cond_1
    const/4 v7, 0x1

    if-le v5, v7, :cond_0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    const v7, 0x3030030

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .restart local v6    # "tv":Landroid/widget/TextView;
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez v1, :cond_3

    const v7, 0x302012d

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_1
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v7, v5, -0x1

    if-eq v1, v7, :cond_2

    new-instance v3, Landroid/widget/ImageView;

    iget-object v7, p0, Landroid/widget/NubiaCursorController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .local v3, "iv":Landroid/widget/ImageView;
    const v7, 0x302012e

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .end local v3    # "iv":Landroid/widget/ImageView;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v7, v5, -0x1

    if-ne v1, v7, :cond_4

    const v7, 0x3020127

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_4
    const v7, 0x302012b

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public abstract show()V
.end method

.method public abstract updatePosition()V
.end method
