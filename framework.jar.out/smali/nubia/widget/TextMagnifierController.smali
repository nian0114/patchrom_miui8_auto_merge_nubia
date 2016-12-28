.class public Lnubia/widget/TextMagnifierController;
.super Lnubia/widget/MagnifierController;
.source "TextMagnifierController.java"


# instance fields
.field private final mEditor:Landroid/widget/Editor;

.field private mOffset:I

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;)V
    .locals 1
    .param p1, "editor"    # Landroid/widget/Editor;

    .prologue
    invoke-virtual {p1}, Landroid/widget/Editor;->textview()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0}, Lnubia/widget/MagnifierController;-><init>(Landroid/view/View;)V

    const/4 v0, -0x1

    iput v0, p0, Lnubia/widget/TextMagnifierController;->mOffset:I

    iput-object p1, p0, Lnubia/widget/TextMagnifierController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p1}, Landroid/widget/Editor;->textview()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lnubia/widget/TextMagnifierController;->mTextView:Landroid/widget/TextView;

    return-void
.end method

.method private initLongClickXY()V
    .locals 1

    .prologue
    iget-object v0, p0, Lnubia/widget/TextMagnifierController;->mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mLastDownPositionX:F

    float-to-int v0, v0

    iput v0, p0, Lnubia/widget/TextMagnifierController;->mLongClickX:I

    iget-object v0, p0, Lnubia/widget/TextMagnifierController;->mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mLastDownPositionY:F

    float-to-int v0, v0

    iput v0, p0, Lnubia/widget/TextMagnifierController;->mLongClickY:I

    return-void
.end method


# virtual methods
.method public onHandleController(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v0, p0, Lnubia/widget/TextMagnifierController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/NubiaCursorController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/NubiaCursorController;->onHandleTouchEvent(Landroid/widget/NubiaCursorController$NubiaHandleView;Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public onPostHide()V
    .locals 1

    .prologue
    iget-object v0, p0, Lnubia/widget/TextMagnifierController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->makeBlink()V

    return-void
.end method

.method public onPreShow()V
    .locals 1

    .prologue
    iget-object v0, p0, Lnubia/widget/TextMagnifierController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->stopBlink()V

    return-void
.end method

.method public onUpdatePosition(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    if-nez p1, :cond_1

    invoke-direct {p0}, Lnubia/widget/TextMagnifierController;->initLongClickXY()V

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    .local v1, "update":Z
    iget-object v2, p0, Lnubia/widget/TextMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .local v0, "offset":I
    iget v2, p0, Lnubia/widget/TextMagnifierController;->mOffset:I

    if-eq v0, v2, :cond_0

    iput v0, p0, Lnubia/widget/TextMagnifierController;->mOffset:I

    iget-object v2, p0, Lnubia/widget/TextMagnifierController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2, v0}, Landroid/widget/Editor;->setTextSelection(I)V

    const/4 v1, 0x1

    goto :goto_0
.end method
