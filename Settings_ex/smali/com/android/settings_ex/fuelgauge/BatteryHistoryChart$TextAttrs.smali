.class Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;
.super Ljava/lang/Object;
.source "BatteryHistoryChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextAttrs"
.end annotation


# instance fields
.field styleIndex:I

.field textColor:Landroid/content/res/ColorStateList;

.field textSize:I

.field typefaceIndex:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;->textColor:Landroid/content/res/ColorStateList;

    .line 237
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    .line 238
    iput v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;->typefaceIndex:I

    .line 239
    iput v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;->styleIndex:I

    return-void
.end method


# virtual methods
.method apply(Landroid/content/Context;Landroid/text/TextPaint;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paint"    # Landroid/text/TextPaint;

    .prologue
    .line 277
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p2, Landroid/text/TextPaint;->density:F

    .line 278
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 281
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;->textColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 282
    iget v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 284
    const/4 v0, 0x0

    .line 285
    .local v0, "tf":Landroid/graphics/Typeface;
    iget v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;->typefaceIndex:I

    packed-switch v1, :pswitch_data_0

    .line 299
    :goto_0
    iget v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;->styleIndex:I

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;->setTypeface(Landroid/text/TextPaint;Landroid/graphics/Typeface;I)V

    .line 300
    return-void

    .line 287
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 288
    goto :goto_0

    .line 291
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 292
    goto :goto_0

    .line 295
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method retrieve(Landroid/content/Context;Landroid/content/res/TypedArray;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "from"    # Landroid/content/res/TypedArray;
    .param p3, "index"    # I

    .prologue
    const/4 v6, -0x1

    .line 242
    const/4 v1, 0x0

    .line 243
    .local v1, "appearance":Landroid/content/res/TypedArray;
    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 244
    .local v0, "ap":I
    if-eq v0, v6, :cond_0

    .line 245
    sget-object v5, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, v0, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 248
    :cond_0
    if-eqz v1, :cond_2

    .line 249
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v4

    .line 250
    .local v4, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 251
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 253
    .local v2, "attr":I
    packed-switch v2, :pswitch_data_0

    .line 250
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 255
    :pswitch_0
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;->textColor:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 259
    :pswitch_1
    iget v5, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    goto :goto_1

    .line 263
    :pswitch_2
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;->typefaceIndex:I

    goto :goto_1

    .line 267
    :pswitch_3
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;->styleIndex:I

    goto :goto_1

    .line 272
    .end local v2    # "attr":I
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 274
    .end local v3    # "i":I
    .end local v4    # "n":I
    :cond_2
    return-void

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public setTypeface(Landroid/text/TextPaint;Landroid/graphics/Typeface;I)V
    .locals 5
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "tf"    # Landroid/graphics/Typeface;
    .param p3, "style"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 303
    if-lez p3, :cond_4

    .line 304
    if-nez p2, :cond_1

    .line 305
    invoke-static {p3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p2

    .line 310
    :goto_0
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 312
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 313
    .local v1, "typefaceStyle":I
    :goto_1
    xor-int/lit8 v4, v1, -0x1

    and-int v0, p3, v4

    .line 314
    .local v0, "need":I
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 315
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_3

    const/high16 v2, -0x41800000    # -0.25f

    :goto_2
    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 321
    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :goto_3
    return-void

    .line 307
    :cond_1
    invoke-static {p2, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p2

    goto :goto_0

    :cond_2
    move v1, v2

    .line 312
    goto :goto_1

    .restart local v0    # "need":I
    .restart local v1    # "typefaceStyle":I
    :cond_3
    move v2, v3

    .line 315
    goto :goto_2

    .line 317
    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :cond_4
    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 318
    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 319
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_3
.end method
