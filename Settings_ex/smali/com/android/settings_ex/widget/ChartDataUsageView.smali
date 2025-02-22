.class public Lcom/android/settings_ex/widget/ChartDataUsageView;
.super Lcom/android/settings_ex/widget/ChartView;
.source "ChartDataUsageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;,
        Lcom/android/settings_ex/widget/ChartDataUsageView$TimeAxis;,
        Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;
    }
.end annotation


# instance fields
.field private mDetailSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

.field private mGrid:Lcom/android/settings_ex/widget/ChartGridView;

.field private mHandler:Landroid/os/Handler;

.field private mHistory:Landroid/net/NetworkStatsHistory;

.field private mInspectEnd:J

.field private mInspectStart:J

.field private mListener:Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

.field private mSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

.field private mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

.field private mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

.field private mVertListener:Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;

.field private mVertMax:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings_ex/widget/ChartDataUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/widget/ChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 295
    new-instance v0, Lcom/android/settings_ex/widget/ChartDataUsageView$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/widget/ChartDataUsageView$2;-><init>(Lcom/android/settings_ex/widget/ChartDataUsageView;)V

    iput-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mVertListener:Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;

    .line 93
    new-instance v0, Lcom/android/settings_ex/widget/ChartDataUsageView$TimeAxis;

    invoke-direct {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView$TimeAxis;-><init>()V

    new-instance v1, Lcom/android/settings_ex/widget/InvertedChartAxis;

    new-instance v2, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;

    invoke-direct {v2}, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;-><init>()V

    invoke-direct {v1, v2}, Lcom/android/settings_ex/widget/InvertedChartAxis;-><init>(Lcom/android/settings_ex/widget/ChartAxis;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->init(Lcom/android/settings_ex/widget/ChartAxis;Lcom/android/settings_ex/widget/ChartAxis;)V

    .line 95
    new-instance v0, Lcom/android/settings_ex/widget/ChartDataUsageView$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/widget/ChartDataUsageView$1;-><init>(Lcom/android/settings_ex/widget/ChartDataUsageView;)V

    iput-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/widget/ChartDataUsageView;Lcom/android/settings_ex/widget/ChartSweepView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/widget/ChartDataUsageView;
    .param p1, "x1"    # Lcom/android/settings_ex/widget/ChartSweepView;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/settings_ex/widget/ChartSweepView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/widget/ChartDataUsageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/widget/ChartDataUsageView;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->updateEstimateVisible()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/widget/ChartDataUsageView;Lcom/android/settings_ex/widget/ChartSweepView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/widget/ChartDataUsageView;
    .param p1, "x1"    # Lcom/android/settings_ex/widget/ChartSweepView;
    .param p2, "x2"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/widget/ChartDataUsageView;->sendUpdateAxisDelayed(Lcom/android/settings_ex/widget/ChartSweepView;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/widget/ChartDataUsageView;Lcom/android/settings_ex/widget/ChartSweepView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/widget/ChartDataUsageView;
    .param p1, "x1"    # Lcom/android/settings_ex/widget/ChartSweepView;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->clearUpdateAxisDelayed(Lcom/android/settings_ex/widget/ChartSweepView;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/widget/ChartDataUsageView;)Lcom/android/settings_ex/widget/ChartSweepView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/widget/ChartDataUsageView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/widget/ChartDataUsageView;)Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/widget/ChartDataUsageView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mListener:Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/widget/ChartDataUsageView;)Lcom/android/settings_ex/widget/ChartSweepView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/widget/ChartDataUsageView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    return-object v0
.end method

.method static synthetic access$700(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/text/SpannableStringBuilder;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/CharSequence;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings_ex/widget/ChartDataUsageView;->setText(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(J)J
    .locals 2
    .param p0, "x0"    # J

    .prologue
    .line 52
    invoke-static {p0, p1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->roundUpToPowerOfTwo(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private clearUpdateAxisDelayed(Lcom/android/settings_ex/widget/ChartSweepView;)V
    .locals 2
    .param p1, "sweep"    # Lcom/android/settings_ex/widget/ChartSweepView;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 293
    return-void
.end method

.method private static roundUpToPowerOfTwo(J)J
    .locals 4
    .param p0, "i"    # J

    .prologue
    const-wide/16 v2, 0x1

    .line 593
    sub-long/2addr p0, v2

    .line 596
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 597
    const/4 v0, 0x2

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 598
    const/4 v0, 0x4

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 599
    const/16 v0, 0x8

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 600
    const/16 v0, 0x10

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 601
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 603
    add-long/2addr p0, v2

    .line 605
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .end local p0    # "i":J
    :goto_0
    return-wide p0

    .restart local p0    # "i":J
    :cond_0
    const-wide p0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method private sendUpdateAxisDelayed(Lcom/android/settings_ex/widget/ChartSweepView;Z)V
    .locals 4
    .param p1, "sweep"    # Lcom/android/settings_ex/widget/ChartSweepView;
    .param p2, "force"    # Z

    .prologue
    const/16 v2, 0x64

    .line 285
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 289
    :cond_1
    return-void
.end method

.method private static setText(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 3
    .param p0, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "bootstrap"    # Ljava/lang/String;

    .prologue
    .line 580
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 581
    .local v1, "start":I
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 582
    .local v0, "end":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 583
    invoke-static {p0, p3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    .line 584
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int v0, v1, v2

    .line 585
    const/16 v2, 0x12

    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 587
    :cond_0
    invoke-virtual {p0, v1, v0, p2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 588
    return-void
.end method

.method private updateEstimateVisible()V
    .locals 10

    .prologue
    .line 266
    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->getMaxEstimate()J

    move-result-wide v4

    .line 269
    .local v4, "maxEstimate":J
    const-wide v2, 0x7fffffffffffffffL

    .line 270
    .local v2, "interestLine":J
    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/ChartSweepView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 271
    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/ChartSweepView;->getValue()J

    move-result-wide v2

    .line 276
    :cond_0
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-gez v1, :cond_1

    .line 277
    const-wide v2, 0x7fffffffffffffffL

    .line 280
    :cond_1
    const-wide/16 v6, 0x7

    mul-long/2addr v6, v2

    const-wide/16 v8, 0xa

    div-long/2addr v6, v8

    cmp-long v1, v4, v6

    if-ltz v1, :cond_3

    const/4 v0, 0x1

    .line 281
    .local v0, "estimateVisible":Z
    :goto_1
    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->setEstimateVisible(Z)V

    .line 282
    return-void

    .line 272
    .end local v0    # "estimateVisible":Z
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/ChartSweepView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/ChartSweepView;->getValue()J

    move-result-wide v2

    goto :goto_0

    .line 280
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updatePrimaryRange()V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->setSecondary(Z)V

    .line 388
    :goto_0
    return-void

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->setSecondary(Z)V

    goto :goto_0
.end method

.method private updateVertAxisBounds(Lcom/android/settings_ex/widget/ChartSweepView;)V
    .locals 24
    .param p1, "activeSweep"    # Lcom/android/settings_ex/widget/ChartSweepView;

    .prologue
    .line 206
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mVertMax:J

    .line 208
    .local v8, "max":J
    const-wide/16 v18, 0x0

    .line 209
    .local v18, "newMax":J
    if-eqz p1, :cond_0

    .line 210
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings_ex/widget/ChartSweepView;->shouldAdjustAxis()I

    move-result v6

    .line 211
    .local v6, "adjustAxis":I
    if-lez v6, :cond_5

    .line 213
    const-wide/16 v20, 0xb

    mul-long v20, v20, v8

    const-wide/16 v22, 0xa

    div-long v18, v20, v22

    .line 223
    .end local v6    # "adjustAxis":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings_ex/widget/ChartSweepView;->getValue()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings_ex/widget/ChartSweepView;->getValue()J

    move-result-wide v22

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 224
    .local v14, "maxSweep":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->getMaxVisible()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->getMaxVisible()J

    move-result-wide v22

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 225
    .local v12, "maxSeries":J
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    const-wide/16 v22, 0xc

    mul-long v20, v20, v22

    const-wide/16 v22, 0xa

    div-long v16, v20, v22

    .line 226
    .local v16, "maxVisible":J
    const-wide/32 v20, 0x3200000

    move-wide/from16 v0, v16

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 227
    .local v10, "maxDefault":J
    move-wide/from16 v0, v18

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    .line 230
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mVertMax:J

    move-wide/from16 v20, v0

    cmp-long v20, v18, v20

    if-eqz v20, :cond_4

    .line 231
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/widget/ChartDataUsageView;->mVertMax:J

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mVert:Lcom/android/settings_ex/widget/ChartAxis;

    move-object/from16 v20, v0

    const-wide/16 v22, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move-wide/from16 v3, v18

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/widget/ChartAxis;->setBounds(JJ)Z

    move-result v7

    .line 234
    .local v7, "changed":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    move-object/from16 v20, v0

    const-wide/16 v22, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/widget/ChartSweepView;->setValidRange(JJ)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    move-object/from16 v20, v0

    const-wide/16 v22, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/widget/ChartSweepView;->setValidRange(JJ)V

    .line 237
    if-eqz v7, :cond_1

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 242
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mGrid:Lcom/android/settings_ex/widget/ChartGridView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings_ex/widget/ChartGridView;->invalidate()V

    .line 245
    if-eqz p1, :cond_2

    .line 246
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings_ex/widget/ChartSweepView;->updateValueFromPosition()V

    .line 252
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_3

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->layoutSweep(Lcom/android/settings_ex/widget/ChartSweepView;)V

    .line 255
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_4

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->layoutSweep(Lcom/android/settings_ex/widget/ChartSweepView;)V

    .line 259
    .end local v7    # "changed":Z
    :cond_4
    return-void

    .line 214
    .end local v10    # "maxDefault":J
    .end local v12    # "maxSeries":J
    .end local v14    # "maxSweep":J
    .end local v16    # "maxVisible":J
    .restart local v6    # "adjustAxis":I
    :cond_5
    if-gez v6, :cond_6

    .line 216
    const-wide/16 v20, 0x9

    mul-long v20, v20, v8

    const-wide/16 v22, 0xa

    div-long v18, v20, v22

    goto/16 :goto_0

    .line 218
    :cond_6
    move-wide/from16 v18, v8

    goto/16 :goto_0
.end method


# virtual methods
.method public bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V
    .locals 4
    .param p1, "stats"    # Landroid/net/NetworkStatsHistory;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 159
    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->setEndTime(J)V

    .line 163
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/settings_ex/widget/ChartSweepView;)V

    .line 164
    invoke-direct {p0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->updateEstimateVisible()V

    .line 165
    invoke-direct {p0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->updatePrimaryRange()V

    .line 166
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->requestLayout()V

    .line 167
    return-void

    .line 159
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public bindNetworkPolicy(Landroid/net/NetworkPolicy;)V
    .locals 8
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const-wide/16 v4, -0x1

    .line 170
    if-nez p1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v6}, Lcom/android/settings_ex/widget/ChartSweepView;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v4, v5}, Lcom/android/settings_ex/widget/ChartSweepView;->setValue(J)V

    .line 173
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v6}, Lcom/android/settings_ex/widget/ChartSweepView;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v4, v5}, Lcom/android/settings_ex/widget/ChartSweepView;->setValue(J)V

    .line 199
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-wide v0, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v7}, Lcom/android/settings_ex/widget/ChartSweepView;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->setEnabled(Z)V

    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    iget-wide v2, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-virtual {v0, v2, v3}, Lcom/android/settings_ex/widget/ChartSweepView;->setValue(J)V

    .line 188
    :goto_1
    iget-wide v0, p1, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 189
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v7}, Lcom/android/settings_ex/widget/ChartSweepView;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    iget-wide v2, p1, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-virtual {v0, v2, v3}, Lcom/android/settings_ex/widget/ChartSweepView;->setValue(J)V

    .line 196
    :goto_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/settings_ex/widget/ChartSweepView;)V

    .line 197
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->requestLayout()V

    .line 198
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->invalidate()V

    goto :goto_0

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v6}, Lcom/android/settings_ex/widget/ChartSweepView;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v7}, Lcom/android/settings_ex/widget/ChartSweepView;->setEnabled(Z)V

    .line 185
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v4, v5}, Lcom/android/settings_ex/widget/ChartSweepView;->setValue(J)V

    goto :goto_1

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v6}, Lcom/android/settings_ex/widget/ChartSweepView;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v4, v5}, Lcom/android/settings_ex/widget/ChartSweepView;->setValue(J)V

    goto :goto_2
.end method

.method public bindNetworkStats(Landroid/net/NetworkStatsHistory;)V
    .locals 1
    .param p1, "stats"    # Landroid/net/NetworkStatsHistory;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 150
    iput-object p1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/settings_ex/widget/ChartSweepView;)V

    .line 152
    invoke-direct {p0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->updateEstimateVisible()V

    .line 153
    invoke-direct {p0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->updatePrimaryRange()V

    .line 154
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->requestLayout()V

    .line 155
    return-void
.end method

.method public getInspectEnd()J
    .locals 2

    .prologue
    .line 345
    iget-wide v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mInspectEnd:J

    return-wide v0
.end method

.method public getInspectStart()J
    .locals 2

    .prologue
    .line 341
    iget-wide v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mInspectStart:J

    return-wide v0
.end method

.method public getLimitBytes()J
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/ChartSweepView;->getLabelValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWarningBytes()J
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/ChartSweepView;->getLabelValue()J

    move-result-wide v0

    return-wide v0
.end method

.method protected onFinishInflate()V
    .locals 8

    .prologue
    const-wide/32 v6, 0x500000

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 110
    invoke-super {p0}, Lcom/android/settings_ex/widget/ChartView;->onFinishInflate()V

    .line 112
    const v0, 0x7f12012c

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/widget/ChartGridView;

    iput-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mGrid:Lcom/android/settings_ex/widget/ChartGridView;

    .line 113
    const v0, 0x7f12012d

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    iput-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    .line 114
    const v0, 0x7f12012e

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    iput-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->setVisibility(I)V

    .line 117
    const v0, 0x7f120130

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    .line 118
    const v0, 0x7f12012f

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    .line 121
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v2, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->setValidRangeDynamic(Lcom/android/settings_ex/widget/ChartSweepView;Lcom/android/settings_ex/widget/ChartSweepView;)V

    .line 122
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/widget/ChartSweepView;->setValidRangeDynamic(Lcom/android/settings_ex/widget/ChartSweepView;Lcom/android/settings_ex/widget/ChartSweepView;)V

    .line 125
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    new-array v1, v4, [Lcom/android/settings_ex/widget/ChartSweepView;

    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->setNeighbors([Lcom/android/settings_ex/widget/ChartSweepView;)V

    .line 126
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    new-array v1, v4, [Lcom/android/settings_ex/widget/ChartSweepView;

    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->setNeighbors([Lcom/android/settings_ex/widget/ChartSweepView;)V

    .line 128
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mVertListener:Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->addOnSweepListener(Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;)V

    .line 129
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mVertListener:Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->addOnSweepListener(Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;)V

    .line 131
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v6, v7}, Lcom/android/settings_ex/widget/ChartSweepView;->setDragInterval(J)V

    .line 132
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v6, v7}, Lcom/android/settings_ex/widget/ChartSweepView;->setDragInterval(J)V

    .line 135
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mGrid:Lcom/android/settings_ex/widget/ChartGridView;

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHoriz:Lcom/android/settings_ex/widget/ChartAxis;

    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mVert:Lcom/android/settings_ex/widget/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/widget/ChartGridView;->init(Lcom/android/settings_ex/widget/ChartAxis;Lcom/android/settings_ex/widget/ChartAxis;)V

    .line 136
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHoriz:Lcom/android/settings_ex/widget/ChartAxis;

    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mVert:Lcom/android/settings_ex/widget/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->init(Lcom/android/settings_ex/widget/ChartAxis;Lcom/android/settings_ex/widget/ChartAxis;)V

    .line 137
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHoriz:Lcom/android/settings_ex/widget/ChartAxis;

    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mVert:Lcom/android/settings_ex/widget/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->init(Lcom/android/settings_ex/widget/ChartAxis;Lcom/android/settings_ex/widget/ChartAxis;)V

    .line 138
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mVert:Lcom/android/settings_ex/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->init(Lcom/android/settings_ex/widget/ChartAxis;)V

    .line 139
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mVert:Lcom/android/settings_ex/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->init(Lcom/android/settings_ex/widget/ChartAxis;)V

    .line 141
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/widget/ChartDataUsageView;->setActivated(Z)V

    .line 142
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 325
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 335
    :goto_0
    return v0

    .line 326
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 328
    goto :goto_0

    .line 331
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->setActivated(Z)V

    move v0, v1

    .line 332
    goto :goto_0

    .line 326
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setListener(Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mListener:Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

    .line 146
    return-void
.end method

.method public setVisibleRange(JJ)V
    .locals 3
    .param p1, "visibleStart"    # J
    .param p3, "visibleEnd"    # J

    .prologue
    .line 362
    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHoriz:Lcom/android/settings_ex/widget/ChartAxis;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/settings_ex/widget/ChartAxis;->setBounds(JJ)Z

    move-result v0

    .line 363
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mGrid:Lcom/android/settings_ex/widget/ChartGridView;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/settings_ex/widget/ChartGridView;->setBounds(JJ)V

    .line 364
    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->setBounds(JJ)V

    .line 365
    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->setBounds(JJ)V

    .line 367
    iput-wide p1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mInspectStart:J

    .line 368
    iput-wide p3, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mInspectEnd:J

    .line 370
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->requestLayout()V

    .line 371
    if-eqz v0, :cond_0

    .line 372
    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 373
    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 376
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/settings_ex/widget/ChartSweepView;)V

    .line 377
    invoke-direct {p0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->updateEstimateVisible()V

    .line 378
    invoke-direct {p0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->updatePrimaryRange()V

    .line 379
    return-void
.end method
