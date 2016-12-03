.class public Landroid/widget/NubiaCursorController$SelectionModifierCursorController;
.super Landroid/widget/NubiaCursorController;
.source "NubiaCursorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NubiaCursorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectionModifierCursorController"
.end annotation


# instance fields
.field private mClipboardPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

.field private mCoords:[I

.field private mCoords1:[I

.field private mCoords2:[I

.field public mDragAcceleratorActive:Z

.field private mEndHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

.field private mHaventMovedEnoughToStartDrag:Z

.field mHideInvisiblePanel:Z

.field private mIsShowing:Z

.field private mLineSelectionIsOn:I

.field private mMaxTouchOffset:I

.field private mMinTouchOffset:I

.field private mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

.field private mPreviousTapPositionX:F

.field private mPreviousTapPositionY:F

.field private mPreviousTapUpTime:J

.field public mStartHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

.field private mStartOffset:I

.field private mSwitchedLines:Z

.field private mTouchOnHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;


# direct methods
.method constructor <init>(Landroid/widget/Editor;Landroid/content/Context;)V
    .locals 7
    .param p1, "editor"    # Landroid/widget/Editor;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x2

    .line 1350
    invoke-direct {p0, p1, p2}, Landroid/widget/NubiaCursorController;-><init>(Landroid/widget/Editor;Landroid/content/Context;)V

    .line 1318
    new-array v1, v4, [I

    iput-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords:[I

    .line 1319
    new-array v1, v4, [I

    iput-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords1:[I

    .line 1320
    new-array v1, v4, [I

    iput-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords2:[I

    .line 1328
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPreviousTapUpTime:J

    .line 1329
    iput-boolean v6, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mHideInvisiblePanel:Z

    .line 1331
    iput v5, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mStartOffset:I

    .line 1338
    iput v5, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mLineSelectionIsOn:I

    .line 1340
    iput-boolean v6, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mSwitchedLines:Z

    .line 1351
    const v1, 0x303002f

    invoke-virtual {p0, v1}, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->createFloatPanelViewController(I)Landroid/widget/NubiaCursorController$FloatPanelViewController;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mClipboardPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    .line 1352
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, p0}, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->initHandleView(Landroid/widget/Editor;ILandroid/widget/NubiaCursorController;)Landroid/widget/NubiaCursorController$NubiaHandleView;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    .line 1354
    invoke-virtual {p0, p1, v4, p0}, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->initHandleView(Landroid/widget/Editor;ILandroid/widget/NubiaCursorController;)Landroid/widget/NubiaCursorController$NubiaHandleView;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    .line 1356
    new-instance v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController$1;

    invoke-direct {v0, p0}, Landroid/widget/NubiaCursorController$SelectionModifierCursorController$1;-><init>(Landroid/widget/NubiaCursorController$SelectionModifierCursorController;)V

    .line 1364
    .local v0, "onClickListener":Landroid/view/View$OnClickListener;
    const v1, 0x3030031

    invoke-virtual {p0, v1}, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->createFloatPanelViewController(I)Landroid/widget/NubiaCursorController$FloatPanelViewController;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    .line 1365
    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    const v2, 0x30d0080

    invoke-virtual {v1, v2, v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 1367
    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    const v2, 0x30d0081

    invoke-virtual {v1, v2, v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 1369
    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    const v2, 0x30d007b

    invoke-virtual {v1, v2, v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 1371
    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    const v2, 0x30d007d

    invoke-virtual {v1, v2, v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 1373
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 1374
    return-void
.end method

.method static synthetic access$800(Landroid/widget/NubiaCursorController$SelectionModifierCursorController;)Landroid/widget/NubiaCursorController$FloatPanelViewController;
    .locals 1
    .param p0, "x0"    # Landroid/widget/NubiaCursorController$SelectionModifierCursorController;

    .prologue
    .line 1316
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    return-object v0
.end method


# virtual methods
.method public addClipData(Landroid/content/ClipboardManager;Landroid/content/ClipData;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "clipboardManager"    # Landroid/content/ClipboardManager;
    .param p2, "clipdata"    # Landroid/content/ClipData;
    .param p3, "defaultText"    # Ljava/lang/CharSequence;

    .prologue
    .line 1388
    const/4 v0, 0x0

    invoke-static {v0, p3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 1390
    return-void
.end method

.method public computePanelPosition([I)V
    .locals 4
    .param p1, "outPositon"    # [I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1394
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords1:[I

    invoke-virtual {v0, v1}, Landroid/widget/NubiaCursorController$NubiaHandleView;->getHotspotLocationOnScreen([I)V

    .line 1395
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords2:[I

    invoke-virtual {v0, v1}, Landroid/widget/NubiaCursorController$NubiaHandleView;->getHotspotLocationOnScreen([I)V

    .line 1396
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords:[I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 1397
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords1:[I

    aget v0, v0, v3

    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords2:[I

    aget v1, v1, v3

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    aput v0, p1, v3

    .line 1398
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1399
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords1:[I

    aget v0, v0, v2

    aput v0, p1, v2

    .line 1407
    :goto_0
    return-void

    .line 1400
    :cond_0
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1401
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords2:[I

    aget v0, v0, v2

    aput v0, p1, v2

    goto :goto_0

    .line 1403
    :cond_1
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords1:[I

    aget v0, v0, v2

    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords2:[I

    aget v1, v1, v2

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    aput v0, p1, v2

    .line 1404
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords:[I

    aget v0, v0, v3

    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords1:[I

    aget v1, v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, p1, v3

    goto :goto_0
.end method

.method public computePanelPositionOnBottom()I
    .locals 3

    .prologue
    .line 1411
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords2:[I

    invoke-virtual {v0, v1}, Landroid/widget/NubiaCursorController$NubiaHandleView;->getHotspotLocationOnScreen([I)V

    .line 1412
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->getHandleNoShadowRealHeight()I

    move-result v0

    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords2:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public computePanelPositionOnEndTop()I
    .locals 2

    .prologue
    .line 1417
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords2:[I

    invoke-virtual {v0, v1}, Landroid/widget/NubiaCursorController$NubiaHandleView;->getHotspotLocationOnScreen([I)V

    .line 1418
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords2:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public enterDrag()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1439
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->show()V

    .line 1440
    iput-boolean v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mDragAcceleratorActive:Z

    .line 1443
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->hide()V

    .line 1450
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1451
    return-void
.end method

.method public getClipboardPanel()Landroid/widget/NubiaCursorController$FloatPanelViewController;
    .locals 1

    .prologue
    .line 1614
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mClipboardPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    return-object v0
.end method

.method public getMaxTouchOffset()I
    .locals 1

    .prologue
    .line 1422
    iget v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mMaxTouchOffset:I

    return v0
.end method

.method public getMinTouchOffset()I
    .locals 1

    .prologue
    .line 1426
    iget v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mMinTouchOffset:I

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 1430
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->hide()V

    .line 1431
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->hide()V

    .line 1432
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->hide()V

    .line 1433
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mClipboardPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->hide()V

    .line 1434
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mIsShowing:Z

    .line 1435
    return-void
.end method

.method public initDrawables()V
    .locals 0

    .prologue
    .line 1378
    return-void
.end method

.method public initHandles()V
    .locals 0

    .prologue
    .line 1384
    return-void
.end method

.method public isDragAcceleratorActive()Z
    .locals 1

    .prologue
    .line 1672
    iget-boolean v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mDragAcceleratorActive:Z

    return v0
.end method

.method public isSelectionStartDragged()Z
    .locals 1

    .prologue
    .line 1454
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

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
    .line 1458
    iget-boolean v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mIsShowing:Z

    return v0
.end method

.method public onDetached()V
    .locals 2

    .prologue
    .line 1658
    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1659
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1661
    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    if-eqz v1, :cond_0

    .line 1662
    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v1}, Landroid/widget/NubiaCursorController$NubiaHandleView;->onDetached()V

    .line 1663
    :cond_0
    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    if-eqz v1, :cond_1

    .line 1664
    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v1}, Landroid/widget/NubiaCursorController$NubiaHandleView;->onDetached()V

    .line 1665
    :cond_1
    return-void
.end method

.method public onHandleTouchEvent(Landroid/widget/NubiaCursorController$NubiaHandleView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "touchHandleView"    # Landroid/widget/NubiaCursorController$NubiaHandleView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1463
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1477
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1465
    :pswitch_0
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1466
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->hide()V

    .line 1467
    :cond_1
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mClipboardPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1468
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mClipboardPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->hide()V

    goto :goto_0

    .line 1471
    :pswitch_1
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V

    goto :goto_0

    .line 1463
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1482
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 1483
    .local v2, "action":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    if-eqz v3, :cond_3

    .line 1484
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1485
    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 1487
    :cond_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    .line 1488
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1489
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1492
    :cond_1
    const/4 v10, 0x1

    .line 1568
    :cond_2
    :goto_0
    return v10

    .line 1494
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_9

    if-nez v2, :cond_9

    .line 1495
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    .line 1496
    .local v19, "xpos":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v20

    .line 1497
    .local v20, "ypos":F
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/widget/NubiaCursorController$NubiaHandleView;->inRecRange(FF)Z

    move-result v14

    .line 1499
    .local v14, "isTouchStartHandle":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/widget/NubiaCursorController$NubiaHandleView;->inRecRange(FF)Z

    move-result v13

    .line 1500
    .local v13, "isTouchEndHandle":Z
    const/16 v18, 0x0

    .line 1501
    .local v18, "touchHandle":Landroid/widget/NubiaCursorController$NubiaHandleView;
    if-eqz v14, :cond_7

    if-eqz v13, :cond_7

    .line 1502
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/widget/NubiaCursorController$NubiaHandleView;->distance(FF)F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/widget/NubiaCursorController$NubiaHandleView;->distance(FF)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_6

    .line 1504
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    move-object/from16 v18, v0

    .line 1514
    :cond_4
    :goto_1
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    .line 1515
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    if-eqz v3, :cond_9

    .line 1516
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1517
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1520
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1521
    const/4 v10, 0x1

    goto :goto_0

    .line 1506
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    move-object/from16 v18, v0

    goto :goto_1

    .line 1509
    :cond_7
    if-eqz v14, :cond_8

    .line 1510
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    move-object/from16 v18, v0

    .line 1511
    :cond_8
    if-eqz v13, :cond_4

    .line 1512
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    move-object/from16 v18, v0

    goto :goto_1

    .line 1524
    .end local v13    # "isTouchEndHandle":Z
    .end local v14    # "isTouchStartHandle":Z
    .end local v18    # "touchHandle":Landroid/widget/NubiaCursorController$NubiaHandleView;
    .end local v19    # "xpos":F
    .end local v20    # "ypos":F
    :cond_9
    packed-switch v2, :pswitch_data_0

    .line 1562
    :cond_a
    :goto_2
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->hasMagnifierController()Z

    move-result v11

    .line 1563
    .local v11, "hasMagnifier":Z
    const/4 v10, 0x0

    .line 1564
    .local v10, "handle":Z
    if-eqz v11, :cond_b

    .line 1565
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->getMagnifierController()Lnubia/widget/TextMagnifierController;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lnubia/widget/TextMagnifierController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    .line 1566
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1567
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/NubiaCursorController;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/widget/NubiaCursorController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 1526
    .end local v10    # "handle":Z
    .end local v11    # "hasMagnifier":Z
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 1527
    .local v6, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 1528
    .local v7, "y":F
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v6, v7}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v15

    .line 1529
    .local v15, "offset":I
    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mMaxTouchOffset:I

    .line 1530
    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 1531
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEditor:Landroid/widget/Editor;

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPreviousTapUpTime:J

    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPreviousTapPositionX:F

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPreviousTapPositionY:F

    invoke-virtual/range {v3 .. v9}, Landroid/widget/Editor;->startTextSelectionModeIfDoubleTap(JFFFF)V

    .line 1533
    move-object/from16 v0, p0

    iput v6, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPreviousTapPositionX:F

    .line 1534
    move-object/from16 v0, p0

    iput v7, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPreviousTapPositionY:F

    goto :goto_2

    .line 1538
    .end local v6    # "x":F
    .end local v7    # "y":F
    .end local v15    # "offset":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1540
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v16

    .line 1541
    .local v16, "pCounts":I
    const/4 v12, 0x0

    .local v12, "index":I
    :goto_3
    move/from16 v0, v16

    if-ge v12, v0, :cond_a

    .line 1542
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v17

    .line 1544
    .local v17, "pOffset":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mMinTouchOffset:I

    move/from16 v0, v17

    if-ge v0, v3, :cond_c

    .line 1545
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 1546
    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mMaxTouchOffset:I

    move/from16 v0, v17

    if-le v0, v3, :cond_d

    .line 1547
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mMaxTouchOffset:I

    .line 1541
    :cond_d
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1552
    .end local v12    # "index":I
    .end local v16    # "pCounts":I
    .end local v17    # "pOffset":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->onTapUpEvent()V

    .line 1553
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPreviousTapUpTime:J

    .line 1554
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mDragAcceleratorActive:Z

    goto/16 :goto_2

    .line 1524
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public resetTouchOffsets()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1572
    iput v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mMaxTouchOffset:I

    .line 1573
    iput v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 1574
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mDragAcceleratorActive:Z

    .line 1575
    return-void
.end method

.method public setMinMaxOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 1578
    iput p1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mMaxTouchOffset:I

    .line 1579
    iput p1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 1580
    return-void
.end method

.method public show()V
    .locals 7

    .prologue
    .line 1584
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    .line 1585
    iget-object v6, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1611
    :cond_0
    :goto_0
    return-void

    .line 1587
    :cond_1
    const/4 v6, 0x4

    new-array v0, v6, [I

    fill-array-data v0, :array_0

    .line 1590
    .local v0, "buttonIds":[I
    const/4 v6, 0x3

    new-array v3, v6, [I

    fill-array-data v3, :array_1

    .line 1592
    .local v3, "splitIds":[I
    iget-object v6, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v6, v0}, Landroid/widget/Editor;->getFloatPanelShowHides([I)Ljava/util/ArrayList;

    move-result-object v5

    .line 1594
    .local v5, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const/4 v2, 0x0

    .line 1595
    .local v2, "showBtns":Z
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 1596
    .local v4, "value":Ljava/lang/Boolean;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1597
    const/4 v2, 0x1

    .line 1601
    .end local v4    # "value":Ljava/lang/Boolean;
    :cond_3
    if-eqz v2, :cond_0

    .line 1603
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mIsShowing:Z

    .line 1604
    iget-object v6, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v6}, Landroid/widget/NubiaCursorController$NubiaHandleView;->show()V

    .line 1605
    iget-object v6, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v6}, Landroid/widget/NubiaCursorController$NubiaHandleView;->show()V

    .line 1606
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->updatePosition()V

    .line 1607
    iget-object v6, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v6}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V

    .line 1608
    iget-object v6, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v6}, Landroid/widget/Editor;->hideInsertionPointCursorControllerWrap()V

    .line 1609
    iget-object v6, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v6, v0, v3, v5}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->showHideButtons([I[ILjava/util/ArrayList;)V

    .line 1610
    iget-object v6, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mClipboardPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v6}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->hide()V

    goto :goto_0

    .line 1587
    nop

    :array_0
    .array-data 4
        0x30d0080
        0x30d0081
        0x30d007b
        0x30d007d
    .end array-data

    .line 1590
    :array_1
    .array-data 4
        0x30d0078
        0x30d007a
        0x30d007c
    .end array-data
.end method

.method public updatePosition()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1619
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1654
    :cond_0
    :goto_0
    return-void

    .line 1621
    :cond_1
    iget-object v2, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mClipboardPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v2}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1622
    iget-object v2, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v2}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->hide()V

    .line 1623
    iget-object v2, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mClipboardPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v2}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V

    goto :goto_0

    .line 1626
    :cond_2
    iget-object v2, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v2}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1628
    iget-object v2, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mClipboardPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v2}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->hide()V

    .line 1629
    iget-object v2, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v2}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V

    .line 1630
    iput-boolean v3, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mHideInvisiblePanel:Z

    goto :goto_0

    .line 1632
    :cond_3
    iget-object v2, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 1633
    .local v1, "start":I
    iget-object v2, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 1634
    .local v0, "end":I
    if-ltz v1, :cond_4

    if-gez v0, :cond_5

    .line 1635
    :cond_4
    const-string v2, "NubiaCursorController"

    const-string v3, "Update selection controller position called with no cursor"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->hide()V

    goto :goto_0

    .line 1640
    :cond_5
    if-ne v1, v0, :cond_6

    .line 1641
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->hide()V

    goto :goto_0

    .line 1644
    :cond_6
    iget-object v2, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v2, v1, v3}, Landroid/widget/NubiaCursorController$NubiaHandleView;->positionAtCursorOffset(IZ)V

    .line 1645
    iget-object v2, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v2, v0, v3}, Landroid/widget/NubiaCursorController$NubiaHandleView;->positionAtCursorOffset(IZ)V

    .line 1646
    iget-object v2, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v2}, Landroid/widget/NubiaCursorController$NubiaHandleView;->isShowing()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v2}, Landroid/widget/NubiaCursorController$NubiaHandleView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1648
    :cond_7
    iget-boolean v2, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mHideInvisiblePanel:Z

    if-eqz v2, :cond_0

    .line 1649
    iget-object v2, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mClipboardPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v2}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->hide()V

    .line 1650
    iget-object v2, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v2}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V

    .line 1651
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mHideInvisiblePanel:Z

    goto :goto_0
.end method
