.class public Lcom/android/settings_ex/widget/InvertedChartAxis;
.super Ljava/lang/Object;
.source "InvertedChartAxis.java"

# interfaces
.implements Lcom/android/settings_ex/widget/ChartAxis;


# instance fields
.field private mSize:F

.field private final mWrapped:Lcom/android/settings_ex/widget/ChartAxis;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/widget/ChartAxis;)V
    .locals 0
    .param p1, "wrapped"    # Lcom/android/settings_ex/widget/ChartAxis;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/settings_ex/widget/InvertedChartAxis;->mWrapped:Lcom/android/settings_ex/widget/ChartAxis;

    .line 31
    return-void
.end method


# virtual methods
.method public buildLabel(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;J)J
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p3, "value"    # J

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings_ex/widget/InvertedChartAxis;->mWrapped:Lcom/android/settings_ex/widget/ChartAxis;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/settings_ex/widget/ChartAxis;->buildLabel(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public convertToPoint(J)F
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 46
    iget v0, p0, Lcom/android/settings_ex/widget/InvertedChartAxis;->mSize:F

    iget-object v1, p0, Lcom/android/settings_ex/widget/InvertedChartAxis;->mWrapped:Lcom/android/settings_ex/widget/ChartAxis;

    invoke-interface {v1, p1, p2}, Lcom/android/settings_ex/widget/ChartAxis;->convertToPoint(J)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public convertToValue(F)J
    .locals 2
    .param p1, "point"    # F

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings_ex/widget/InvertedChartAxis;->mWrapped:Lcom/android/settings_ex/widget/ChartAxis;

    iget v1, p0, Lcom/android/settings_ex/widget/InvertedChartAxis;->mSize:F

    sub-float/2addr v1, p1

    invoke-interface {v0, v1}, Lcom/android/settings_ex/widget/ChartAxis;->convertToValue(F)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTickPoints()[F
    .locals 4

    .prologue
    .line 61
    iget-object v2, p0, Lcom/android/settings_ex/widget/InvertedChartAxis;->mWrapped:Lcom/android/settings_ex/widget/ChartAxis;

    invoke-interface {v2}, Lcom/android/settings_ex/widget/ChartAxis;->getTickPoints()[F

    move-result-object v1

    .line 62
    .local v1, "points":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 63
    iget v2, p0, Lcom/android/settings_ex/widget/InvertedChartAxis;->mSize:F

    aget v3, v1, v0

    sub-float/2addr v2, v3

    aput v2, v1, v0

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_0
    return-object v1
.end method

.method public setBounds(JJ)Z
    .locals 1
    .param p1, "min"    # J
    .param p3, "max"    # J

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings_ex/widget/InvertedChartAxis;->mWrapped:Lcom/android/settings_ex/widget/ChartAxis;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/settings_ex/widget/ChartAxis;->setBounds(JJ)Z

    move-result v0

    return v0
.end method

.method public setSize(F)Z
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 40
    iput p1, p0, Lcom/android/settings_ex/widget/InvertedChartAxis;->mSize:F

    .line 41
    iget-object v0, p0, Lcom/android/settings_ex/widget/InvertedChartAxis;->mWrapped:Lcom/android/settings_ex/widget/ChartAxis;

    invoke-interface {v0, p1}, Lcom/android/settings_ex/widget/ChartAxis;->setSize(F)Z

    move-result v0

    return v0
.end method

.method public shouldAdjustAxis(J)I
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/widget/InvertedChartAxis;->mWrapped:Lcom/android/settings_ex/widget/ChartAxis;

    invoke-interface {v0, p1, p2}, Lcom/android/settings_ex/widget/ChartAxis;->shouldAdjustAxis(J)I

    move-result v0

    return v0
.end method
