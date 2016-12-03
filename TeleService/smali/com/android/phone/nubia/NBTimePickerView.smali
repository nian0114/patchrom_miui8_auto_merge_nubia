.class public Lcom/android/phone/nubia/NBTimePickerView;
.super Landroid/widget/FrameLayout;
.source "NBTimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/nubia/NBTimePickerView$SaveState;
    }
.end annotation


# instance fields
.field private mHourView:Lcom/android/phone/nubia/NBWheelView;

.field private mMinuteView:Lcom/android/phone/nubia/NBWheelView;

.field private mPaint:Landroid/graphics/Paint;


# virtual methods
.method public final getCurrentHour()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/phone/nubia/NBTimePickerView;->mHourView:Lcom/android/phone/nubia/NBWheelView;

    invoke-virtual {v0}, Lcom/android/phone/nubia/NBWheelView;->getValue()I

    move-result v0

    return v0
.end method

.method public final getCurrentMinute()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/phone/nubia/NBTimePickerView;->mMinuteView:Lcom/android/phone/nubia/NBWheelView;

    invoke-virtual {v0}, Lcom/android/phone/nubia/NBWheelView;->getValue()I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/phone/nubia/NBTimePickerView;->mMinuteView:Lcom/android/phone/nubia/NBWheelView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/nubia/NBTimePickerView;->mMinuteView:Lcom/android/phone/nubia/NBWheelView;

    invoke-virtual {v0}, Lcom/android/phone/nubia/NBWheelView;->getMiddleTop()I

    move-result v7

    .local v7, "top":I
    iget-object v0, p0, Lcom/android/phone/nubia/NBTimePickerView;->mMinuteView:Lcom/android/phone/nubia/NBWheelView;

    invoke-virtual {v0}, Lcom/android/phone/nubia/NBWheelView;->getMiddleBottom()I

    move-result v6

    .local v6, "bottom":I
    int-to-float v2, v7

    invoke-virtual {p0}, Lcom/android/phone/nubia/NBTimePickerView;->getRight()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v7

    iget-object v5, p0, Lcom/android/phone/nubia/NBTimePickerView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    int-to-float v2, v6

    invoke-virtual {p0}, Lcom/android/phone/nubia/NBTimePickerView;->getRight()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v6

    iget-object v5, p0, Lcom/android/phone/nubia/NBTimePickerView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .end local v6    # "bottom":I
    .end local v7    # "top":I
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    move-object v0, p1

    check-cast v0, Lcom/android/phone/nubia/NBTimePickerView$SaveState;

    .local v0, "ss":Lcom/android/phone/nubia/NBTimePickerView$SaveState;
    invoke-virtual {v0}, Lcom/android/phone/nubia/NBTimePickerView$SaveState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v1, v0, Lcom/android/phone/nubia/NBTimePickerView$SaveState;->mHour:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/nubia/NBTimePickerView;->setCurrentHour(Ljava/lang/Integer;)V

    iget v1, v0, Lcom/android/phone/nubia/NBTimePickerView$SaveState;->mMinute:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/nubia/NBTimePickerView;->setCurrentMinute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/android/phone/nubia/NBTimePickerView$SaveState;

    invoke-virtual {p0}, Lcom/android/phone/nubia/NBTimePickerView;->getCurrentHour()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/phone/nubia/NBTimePickerView;->getCurrentMinute()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/android/phone/nubia/NBTimePickerView$SaveState;-><init>(Landroid/os/Parcelable;II)V

    return-object v1
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "currentHour"    # Ljava/lang/Integer;

    .prologue
    if-nez p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/phone/nubia/NBTimePickerView;->getCurrentHour()I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/nubia/NBTimePickerView;->mHourView:Lcom/android/phone/nubia/NBWheelView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/nubia/NBWheelView;->setValue(I)V

    goto :goto_0
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "currentMinute"    # Ljava/lang/Integer;

    .prologue
    if-nez p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/phone/nubia/NBTimePickerView;->getCurrentMinute()I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/nubia/NBTimePickerView;->mMinuteView:Lcom/android/phone/nubia/NBWheelView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/nubia/NBWheelView;->setValue(I)V

    goto :goto_0
.end method
