.class public Lcom/android/settings_ex/deviceinfo/PercentageBarChart;
.super Landroid/view/View;
.source "PercentageBarChart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/deviceinfo/PercentageBarChart$Entry;
    }
.end annotation


# instance fields
.field private final mEmptyPaint:Landroid/graphics/Paint;

.field private mEntries:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settings_ex/deviceinfo/PercentageBarChart$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mMinTickWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/settings_ex/deviceinfo/PercentageBarChart;->mEmptyPaint:Landroid/graphics/Paint;

    .line 43
    iput v3, p0, Lcom/android/settings_ex/deviceinfo/PercentageBarChart;->mMinTickWidth:I

    .line 67
    sget-object v2, Lcom/android/settings_ex/R$styleable;->PercentageBarChart:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 68
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/deviceinfo/PercentageBarChart;->mMinTickWidth:I

    .line 69
    const/4 v2, 0x0

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 70
    .local v1, "emptyColor":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/PercentageBarChart;->mEmptyPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/PercentageBarChart;->mEmptyPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    return-void
.end method

.method public static createEntry(IFII)Lcom/android/settings_ex/deviceinfo/PercentageBarChart$Entry;
    .locals 6
    .param p0, "order"    # I
    .param p1, "percentage"    # F
    .param p2, "startColor"    # I
    .param p3, "endColor"    # I

    .prologue
    .line 158
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 160
    .local v3, "p":Landroid/graphics/Paint;
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 161
    new-instance v0, Lcom/android/settings_ex/deviceinfo/PercentageBarChart$Entry;

    move v1, p0

    move v2, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/deviceinfo/PercentageBarChart$Entry;-><init>(IFLandroid/graphics/Paint;II)V

    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 26
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 78
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PercentageBarChart;->getPaddingLeft()I

    move-result v21

    .line 81
    .local v21, "left":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PercentageBarChart;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PercentageBarChart;->getPaddingRight()I

    move-result v4

    sub-int v23, v2, v4

    .line 82
    .local v23, "right":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PercentageBarChart;->getPaddingTop()I

    move-result v24

    .line 83
    .local v24, "top":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PercentageBarChart;->getHeight()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PercentageBarChart;->getPaddingBottom()I

    move-result v4

    sub-int v16, v2, v4

    .line 85
    .local v16, "bottom":I
    sub-int v25, v23, v21

    .line 87
    .local v25, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PercentageBarChart;->isLayoutRtl()Z

    move-result v20

    .line 88
    .local v20, "isLayoutRtl":Z
    if-eqz v20, :cond_4

    .line 89
    move/from16 v0, v23

    int-to-float v7, v0

    .line 91
    .local v7, "nextX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/PercentageBarChart;->mEntries:Ljava/util/Collection;

    if-eqz v2, :cond_3

    .line 92
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/PercentageBarChart;->mEntries:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    move/from16 v22, v7

    .end local v7    # "nextX":F
    .local v22, "nextX":F
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings_ex/deviceinfo/PercentageBarChart$Entry;

    .line 94
    .local v17, "e":Lcom/android/settings_ex/deviceinfo/PercentageBarChart$Entry;
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/settings_ex/deviceinfo/PercentageBarChart$Entry;->percentage:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    .line 95
    const/16 v18, 0x0

    .line 99
    .local v18, "entryWidth":F
    :goto_1
    new-instance v1, Landroid/graphics/LinearGradient;

    move/from16 v0, v21

    int-to-float v2, v0

    move/from16 v0, v24

    int-to-float v3, v0

    move/from16 v0, v21

    int-to-float v4, v0

    move/from16 v0, v16

    int-to-float v5, v0

    move-object/from16 v0, v17

    iget v6, v0, Lcom/android/settings_ex/deviceinfo/PercentageBarChart$Entry;->color1:I

    move-object/from16 v0, v17

    iget v7, v0, Lcom/android/settings_ex/deviceinfo/PercentageBarChart$Entry;->color2:I

    sget-object v8, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 100
    .local v1, "lg":Landroid/graphics/LinearGradient;
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/PercentageBarChart$Entry;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 101
    sub-float v3, v22, v18

    .line 102
    .local v3, "lastX":F
    move/from16 v0, v21

    int-to-float v2, v0

    cmpg-float v2, v3, v2

    if-gez v2, :cond_1

    .line 103
    move/from16 v0, v21

    int-to-float v3, v0

    move/from16 v0, v24

    int-to-float v4, v0

    move/from16 v0, v16

    int-to-float v6, v0

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/android/settings_ex/deviceinfo/PercentageBarChart$Entry;->paint:Landroid/graphics/Paint;

    .end local v3    # "lastX":F
    move-object/from16 v2, p1

    move/from16 v5, v22

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 139
    .end local v1    # "lg":Landroid/graphics/LinearGradient;
    .end local v17    # "e":Lcom/android/settings_ex/deviceinfo/PercentageBarChart$Entry;
    .end local v18    # "entryWidth":F
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v22    # "nextX":F
    :goto_2
    return-void

    .line 97
    .restart local v17    # "e":Lcom/android/settings_ex/deviceinfo/PercentageBarChart$Entry;
    .restart local v19    # "i$":Ljava/util/Iterator;
    .restart local v22    # "nextX":F
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/deviceinfo/PercentageBarChart;->mMinTickWidth:I

    int-to-float v2, v2

    move/from16 v0, v25

    int-to-float v4, v0

    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/settings_ex/deviceinfo/PercentageBarChart$Entry;->percentage:F

    mul-float/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v18

    .restart local v18    # "entryWidth":F
    goto :goto_1

    .line 107
    .restart local v1    # "lg":Landroid/graphics/LinearGradient;
    .restart local v3    # "lastX":F
    :cond_1
    move/from16 v0, v24

    int-to-float v4, v0

    move/from16 v0, v16

    int-to-float v6, v0

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/android/settings_ex/deviceinfo/PercentageBarChart$Entry;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move/from16 v5, v22

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 108
    move v7, v3

    .end local v22    # "nextX":F
    .restart local v7    # "nextX":F
    move/from16 v22, v7

    .line 109
    .end local v7    # "nextX":F
    .restart local v22    # "nextX":F
    goto :goto_0

    .end local v1    # "lg":Landroid/graphics/LinearGradient;
    .end local v3    # "lastX":F
    .end local v17    # "e":Lcom/android/settings_ex/deviceinfo/PercentageBarChart$Entry;
    .end local v18    # "entryWidth":F
    :cond_2
    move/from16 v7, v22

    .line 112
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v22    # "nextX":F
    .restart local v7    # "nextX":F
    :cond_3
    move/from16 v0, v21

    int-to-float v5, v0

    move/from16 v0, v24

    int-to-float v6, v0

    move/from16 v0, v16

    int-to-float v8, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ex/deviceinfo/PercentageBarChart;->mEmptyPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 114
    .end local v7    # "nextX":F
    :cond_4
    move/from16 v0, v21

    int-to-float v3, v0

    .line 116
    .restart local v3    # "lastX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/PercentageBarChart;->mEntries:Ljava/util/Collection;

    if-eqz v2, :cond_7

    .line 117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/PercentageBarChart;->mEntries:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings_ex/deviceinfo/PercentageBarChart$Entry;

    .line 119
    .restart local v17    # "e":Lcom/android/settings_ex/deviceinfo/PercentageBarChart$Entry;
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/settings_ex/deviceinfo/PercentageBarChart$Entry;->percentage:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-nez v2, :cond_5

    .line 120
    const/16 v18, 0x0

    .line 124
    .restart local v18    # "entryWidth":F
    :goto_4
    new-instance v1, Landroid/graphics/LinearGradient;

    move/from16 v0, v21

    int-to-float v9, v0

    move/from16 v0, v24

    int-to-float v10, v0

    move/from16 v0, v21

    int-to-float v11, v0

    move/from16 v0, v16

    int-to-float v12, v0

    move-object/from16 v0, v17

    iget v13, v0, Lcom/android/settings_ex/deviceinfo/PercentageBarChart$Entry;->color1:I

    move-object/from16 v0, v17

    iget v14, v0, Lcom/android/settings_ex/deviceinfo/PercentageBarChart$Entry;->color2:I

    sget-object v15, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object v8, v1

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 125
    .restart local v1    # "lg":Landroid/graphics/LinearGradient;
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/PercentageBarChart$Entry;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 126
    add-float v7, v3, v18

    .line 127
    .restart local v7    # "nextX":F
    move/from16 v0, v23

    int-to-float v2, v0

    cmpl-float v2, v7, v2

    if-lez v2, :cond_6

    .line 128
    move/from16 v0, v24

    int-to-float v10, v0

    move/from16 v0, v23

    int-to-float v11, v0

    move/from16 v0, v16

    int-to-float v12, v0

    move-object/from16 v0, v17

    iget-object v13, v0, Lcom/android/settings_ex/deviceinfo/PercentageBarChart$Entry;->paint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move v9, v3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 122
    .end local v1    # "lg":Landroid/graphics/LinearGradient;
    .end local v7    # "nextX":F
    .end local v18    # "entryWidth":F
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/deviceinfo/PercentageBarChart;->mMinTickWidth:I

    int-to-float v2, v2

    move/from16 v0, v25

    int-to-float v4, v0

    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/settings_ex/deviceinfo/PercentageBarChart$Entry;->percentage:F

    mul-float/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v18

    .restart local v18    # "entryWidth":F
    goto :goto_4

    .line 132
    .restart local v1    # "lg":Landroid/graphics/LinearGradient;
    .restart local v7    # "nextX":F
    :cond_6
    move/from16 v0, v24

    int-to-float v6, v0

    move/from16 v0, v16

    int-to-float v8, v0

    move-object/from16 v0, v17

    iget-object v9, v0, Lcom/android/settings_ex/deviceinfo/PercentageBarChart$Entry;->paint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move v5, v3

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 133
    move v3, v7

    .line 134
    goto :goto_3

    .line 137
    .end local v1    # "lg":Landroid/graphics/LinearGradient;
    .end local v7    # "nextX":F
    .end local v17    # "e":Lcom/android/settings_ex/deviceinfo/PercentageBarChart$Entry;
    .end local v18    # "entryWidth":F
    .end local v19    # "i$":Ljava/util/Iterator;
    :cond_7
    move/from16 v0, v24

    int-to-float v10, v0

    move/from16 v0, v23

    int-to-float v11, v0

    move/from16 v0, v16

    int-to-float v12, v0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/deviceinfo/PercentageBarChart;->mEmptyPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move v9, v3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PercentageBarChart;->mEmptyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 148
    return-void
.end method

.method public setEntries(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settings_ex/deviceinfo/PercentageBarChart$Entry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings_ex/deviceinfo/PercentageBarChart$Entry;>;"
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/PercentageBarChart;->mEntries:Ljava/util/Collection;

    .line 166
    return-void
.end method
