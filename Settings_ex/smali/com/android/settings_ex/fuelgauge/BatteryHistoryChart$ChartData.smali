.class Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;
.super Ljava/lang/Object;
.source "BatteryHistoryChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChartData"
.end annotation


# instance fields
.field mColors:[I

.field mLastBin:I

.field mNumTicks:I

.field mPaints:[Landroid/graphics/Paint;

.field mTicks:[I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method addTick(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "bin"    # I

    .prologue
    const/4 v3, 0x0

    .line 87
    iget v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;->mNumTicks:I

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;->mTicks:[I

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 88
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;->mTicks:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [I

    .line 89
    .local v0, "ticksCopy":[I
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;->mTicks:[I

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;->mTicks:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 90
    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;->mTicks:[I

    .line 91
    const-string v1, "BatteryHistoryChart"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addTick mNumTicks >= mTicks.length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;->mTicks:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .end local v0    # "ticksCopy":[I
    :cond_0
    iget v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;->mLastBin:I

    if-eq p2, v1, :cond_1

    iget v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;->mNumTicks:I

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;->mTicks:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 94
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;->mTicks:[I

    iget v2, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;->mNumTicks:I

    const v3, 0xffff

    and-int/2addr v3, p1

    shl-int/lit8 v4, p2, 0x10

    or-int/2addr v3, v4

    aput v3, v1, v2

    .line 95
    iget v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;->mNumTicks:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;->mNumTicks:I

    .line 96
    iput p2, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;->mLastBin:I

    .line 98
    :cond_1
    return-void
.end method

.method draw(Landroid/graphics/Canvas;II)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "top"    # I
    .param p3, "height"    # I

    .prologue
    .line 107
    const/4 v9, 0x0

    .local v9, "lastBin":I
    const/4 v10, 0x0

    .line 108
    .local v10, "lastX":I
    add-int v7, p2, p3

    .line 109
    .local v7, "bottom":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget v0, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;->mNumTicks:I

    if-ge v8, v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;->mTicks:[I

    aget v11, v0, v8

    .line 111
    .local v11, "tick":I
    const v0, 0xffff

    and-int v12, v11, v0

    .line 112
    .local v12, "x":I
    const/high16 v0, -0x10000

    and-int/2addr v0, v11

    shr-int/lit8 v6, v0, 0x10

    .line 113
    .local v6, "bin":I
    if-eqz v9, :cond_0

    .line 114
    int-to-float v1, v10

    int-to-float v2, p2

    int-to-float v3, v12

    int-to-float v4, v7

    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;->mPaints:[Landroid/graphics/Paint;

    aget-object v5, v0, v9

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 116
    :cond_0
    move v9, v6

    .line 117
    move v10, v12

    .line 109
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 120
    .end local v6    # "bin":I
    .end local v11    # "tick":I
    .end local v12    # "x":I
    :cond_1
    return-void
.end method

.method finish(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 101
    iget v0, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;->mLastBin:I

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;->addTick(II)V

    .line 104
    :cond_0
    return-void
.end method

.method init(I)V
    .locals 2
    .param p1, "width"    # I

    .prologue
    const/4 v1, 0x0

    .line 77
    if-lez p1, :cond_0

    .line 78
    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;->mTicks:[I

    .line 82
    :goto_0
    iput v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;->mNumTicks:I

    .line 83
    iput v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;->mLastBin:I

    .line 84
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;->mTicks:[I

    goto :goto_0
.end method

.method setColors([I)V
    .locals 3
    .param p1, "colors"    # [I

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;->mColors:[I

    .line 68
    array-length v1, p1

    new-array v1, v1, [Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;->mPaints:[Landroid/graphics/Paint;

    .line 69
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;->mPaints:[Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    aput-object v2, v1, v0

    .line 71
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;->mPaints:[Landroid/graphics/Paint;

    aget-object v1, v1, v0

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;->mPaints:[Landroid/graphics/Paint;

    aget-object v1, v1, v0

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    return-void
.end method
