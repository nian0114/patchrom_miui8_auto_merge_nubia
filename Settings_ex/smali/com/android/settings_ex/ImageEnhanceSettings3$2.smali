.class Lcom/android/settings_ex/ImageEnhanceSettings3$2;
.super Ljava/lang/Object;
.source "ImageEnhanceSettings3.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ImageEnhanceSettings3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ImageEnhanceSettings3;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ImageEnhanceSettings3;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/settings_ex/ImageEnhanceSettings3$2;->this$0:Lcom/android/settings_ex/ImageEnhanceSettings3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 218
    iget-object v1, p0, Lcom/android/settings_ex/ImageEnhanceSettings3$2;->this$0:Lcom/android/settings_ex/ImageEnhanceSettings3;

    # getter for: Lcom/android/settings_ex/ImageEnhanceSettings3;->mHueAdjSeekBar:Lcom/android/settings_ex/LightSeekBar;
    invoke-static {v1}, Lcom/android/settings_ex/ImageEnhanceSettings3;->access$200(Lcom/android/settings_ex/ImageEnhanceSettings3;)Lcom/android/settings_ex/LightSeekBar;

    move-result-object v1

    if-nez v1, :cond_1

    .line 219
    const-string v1, "ImageEnhanceSettings3"

    const-string v2, "mHueAdjSeekBar == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    :goto_0
    return v0

    .line 222
    :cond_1
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 223
    .local v9, "seekRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/settings_ex/ImageEnhanceSettings3$2;->this$0:Lcom/android/settings_ex/ImageEnhanceSettings3;

    # getter for: Lcom/android/settings_ex/ImageEnhanceSettings3;->mHueAdjSeekBar:Lcom/android/settings_ex/LightSeekBar;
    invoke-static {v1}, Lcom/android/settings_ex/ImageEnhanceSettings3;->access$200(Lcom/android/settings_ex/ImageEnhanceSettings3;)Lcom/android/settings_ex/LightSeekBar;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/android/settings_ex/LightSeekBar;->getHitRect(Landroid/graphics/Rect;)V

    .line 224
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, v9, Landroid/graphics/Rect;->top:I

    add-int/lit16 v2, v2, -0x96

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, v9, Landroid/graphics/Rect;->bottom:I

    add-int/lit16 v2, v2, 0x96

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 226
    iget v0, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v6, v0

    .line 227
    .local v6, "y":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, v9, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float v5, v0, v1

    .line 228
    .local v5, "x":F
    const/4 v0, 0x0

    cmpg-float v0, v5, v0

    if-gez v0, :cond_3

    .line 229
    const/4 v5, 0x0

    .line 233
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 236
    .local v8, "me":Landroid/view/MotionEvent;
    iget-object v0, p0, Lcom/android/settings_ex/ImageEnhanceSettings3$2;->this$0:Lcom/android/settings_ex/ImageEnhanceSettings3;

    # getter for: Lcom/android/settings_ex/ImageEnhanceSettings3;->mHueAdjSeekBar:Lcom/android/settings_ex/LightSeekBar;
    invoke-static {v0}, Lcom/android/settings_ex/ImageEnhanceSettings3;->access$200(Lcom/android/settings_ex/ImageEnhanceSettings3;)Lcom/android/settings_ex/LightSeekBar;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/settings_ex/LightSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 230
    .end local v8    # "me":Landroid/view/MotionEvent;
    :cond_3
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v5, v0

    if-lez v0, :cond_2

    .line 231
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v5, v0

    goto :goto_1
.end method
