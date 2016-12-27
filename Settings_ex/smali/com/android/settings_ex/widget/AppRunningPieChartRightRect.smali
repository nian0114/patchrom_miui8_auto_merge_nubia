.class public Lcom/android/settings_ex/widget/AppRunningPieChartRightRect;
.super Landroid/view/View;
.source "AppRunningPieChartRightRect.java"


# instance fields
.field colorRes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, -0x1

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const-string v2, "http://schemas.android.com/apk/res/android"

    .line 21
    .local v2, "xmlns":Ljava/lang/String;
    const-string v3, "http://schemas.android.com/apk/res/android"

    const-string v4, "textColor"

    invoke-interface {p2, v3, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 22
    .local v1, "TextColorVal":Ljava/lang/String;
    const-string v3, "http://schemas.android.com/apk/res/android"

    const-string v4, "textColor"

    invoke-interface {p2, v3, v4, v5}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 24
    .local v0, "TextColorRes":I
    if-eq v0, v5, :cond_1

    .line 26
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/AppRunningPieChartRightRect;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/widget/AppRunningPieChartRightRect;->colorRes:I

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 31
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/widget/AppRunningPieChartRightRect;->colorRes:I

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 39
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 42
    .local v0, "mPaintFill":Landroid/graphics/Paint;
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 43
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    iget v2, p0, Lcom/android/settings_ex/widget/AppRunningPieChartRightRect;->colorRes:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/settings_ex/widget/AppRunningPieChartRightRect;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/settings_ex/widget/AppRunningPieChartRightRect;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 48
    .local v1, "oval":Landroid/graphics/RectF;
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 50
    return-void
.end method
