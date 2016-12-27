.class public Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;
.super Landroid/widget/GridView;
.source "QSTileDragGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView$OnChanageListener;
    }
.end annotation


# instance fields
.field private dragResponseMS:J

.field private isDrag:Z

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mDownX:I

.field private mDownY:I

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragImageView:Landroid/widget/ImageView;

.field private mDragPosition:I

.field private mHandler:Landroid/os/Handler;

.field private mLongClickRunnable:Ljava/lang/Runnable;

.field private mOffset2Left:I

.field private mOffset2Top:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPoint2ItemLeft:I

.field private mPoint2ItemTop:I

.field private mStartDragItemView:Landroid/view/View;

.field private mStatusHeight:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;

.field private moveX:I

.field private moveY:I

.field private onChanageListener:Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView$OnChanageListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->dragResponseMS:J

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->isDrag:Z

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mStartDragItemView:Landroid/view/View;

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mHandler:Landroid/os/Handler;

    .line 68
    new-instance v0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView$1;-><init>(Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;)V

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mLongClickRunnable:Ljava/lang/Runnable;

    .line 54
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mVibrator:Landroid/os/Vibrator;

    .line 56
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mWindowManager:Landroid/view/WindowManager;

    .line 58
    invoke-static {p1}, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->getStatusHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mStatusHeight:I

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mPaint:Landroid/graphics/Paint;

    .line 60
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mConfiguration:Landroid/content/res/Configuration;

    .line 64
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->isDrag:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;)Landroid/os/Vibrator;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mStartDragItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mDragBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;

    .prologue
    .line 22
    iget v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mDownX:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;

    .prologue
    .line 22
    iget v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mDownY:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;Landroid/graphics/Bitmap;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->createDragImage(Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method private createDragImage(Landroid/graphics/Bitmap;II)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "downX"    # I
    .param p3, "downY"    # I

    .prologue
    const/4 v3, -0x2

    .line 154
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 155
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 156
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 157
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mPoint2ItemLeft:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mOffset2Left:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 158
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mPoint2ItemTop:I

    sub-int v1, p3, v1

    iget v2, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mOffset2Top:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mStatusHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 160
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x3f0ccccd    # 0.55f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 161
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 162
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 163
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x18

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 166
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mDragImageView:Landroid/widget/ImageView;

    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mDragImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 168
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mDragImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    return-void
.end method

.method private static getStatusHeight(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 211
    const/4 v5, 0x0

    .line 212
    .local v5, "statusHeight":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .local v4, "localRect":Landroid/graphics/Rect;
    move-object v6, p0

    .line 213
    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 215
    iget v5, v4, Landroid/graphics/Rect;->top:I

    .line 216
    if-nez v5, :cond_0

    .line 219
    :try_start_0
    const-string v6, "com.android.internal.R$dimen"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 220
    .local v2, "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 221
    .local v3, "localObject":Ljava/lang/Object;
    const-string v6, "status_bar_height"

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 224
    .local v1, "i5":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 229
    .end local v1    # "i5":I
    .end local v2    # "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "localObject":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v5

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isTouchInItem(Landroid/view/View;II)Z
    .locals 4
    .param p1, "dragView"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 124
    .local v0, "leftOffset":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 125
    .local v1, "topOffset":I
    if-lt p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    if-le p2, v3, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v2

    .line 128
    :cond_1
    if-lt p3, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    if-gt p3, v3, :cond_0

    .line 131
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private onDragItem(II)V
    .locals 3
    .param p1, "moveX"    # I
    .param p2, "moveY"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mPoint2ItemLeft:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mOffset2Left:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 180
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mPoint2ItemTop:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mOffset2Top:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mStatusHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 182
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mDragImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->onSwapItem(II)V

    .line 184
    return-void
.end method

.method private onStopDrag()V
    .locals 3

    .prologue
    .line 203
    iget v1, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mDragPosition:I

    invoke-virtual {p0}, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 204
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 205
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 206
    invoke-direct {p0}, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->removeDragImage()V

    .line 208
    :cond_0
    return-void
.end method

.method private onSwapItem(II)V
    .locals 3
    .param p1, "moveX"    # I
    .param p2, "moveY"    # I

    .prologue
    const/4 v2, -0x1

    .line 187
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->pointToPosition(II)I

    move-result v0

    .line 188
    .local v0, "tempPosition":I
    iget v1, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mDragPosition:I

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    iget v1, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mDragPosition:I

    if-eq v1, v2, :cond_1

    .line 191
    invoke-virtual {p0}, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 193
    iget v1, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mDragPosition:I

    invoke-virtual {p0}, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 195
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->onChanageListener:Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView$OnChanageListener;

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->onChanageListener:Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView$OnChanageListener;

    iget v2, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mDragPosition:I

    invoke-interface {v1, v2, v0}, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView$OnChanageListener;->onChange(II)V

    .line 198
    :cond_0
    iput v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mDragPosition:I

    .line 200
    :cond_1
    return-void
.end method

.method private removeDragImage()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mDragImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mDragImageView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mDragImageView:Landroid/widget/ImageView;

    .line 176
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, -0x1

    .line 85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 119
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_1
    return v2

    .line 87
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mLongClickRunnable:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->dragResponseMS:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 88
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mDownX:I

    .line 89
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mDownY:I

    .line 90
    iget v2, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mDownX:I

    iget v3, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mDownY:I

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->pointToPosition(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mDragPosition:I

    .line 91
    iget v2, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mDragPosition:I

    if-ne v2, v6, :cond_1

    .line 92
    iget-object v2, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mLongClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 93
    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_1

    .line 95
    :cond_1
    iget v2, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mDragPosition:I

    invoke-virtual {p0}, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mStartDragItemView:Landroid/view/View;

    .line 97
    iget v2, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mDownY:I

    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mStartDragItemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mPoint2ItemTop:I

    .line 98
    iget v2, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mDownX:I

    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mStartDragItemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mPoint2ItemLeft:I

    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mDownY:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mOffset2Top:I

    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mDownX:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mOffset2Left:I

    .line 101
    iget-object v2, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mStartDragItemView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 102
    iget-object v2, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mStartDragItemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 104
    iget-object v2, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mStartDragItemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->destroyDrawingCache()V

    goto/16 :goto_0

    .line 108
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 109
    .local v0, "moveX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 110
    .local v1, "moveY":I
    iget v2, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mDragPosition:I

    if-eq v2, v6, :cond_2

    iget-object v2, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mStartDragItemView:Landroid/view/View;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->isTouchInItem(Landroid/view/View;II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 112
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mLongClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 116
    .end local v0    # "moveX":I
    .end local v1    # "moveY":I
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mLongClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 240
    iget-object v2, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mConfiguration:Landroid/content/res/Configuration;

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->getHeight()I

    move-result v0

    .line 243
    .local v0, "h":I
    invoke-virtual {p0}, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->getWidth()I

    move-result v1

    .line 250
    .local v1, "w":I
    :goto_0
    return-void

    .line 246
    .end local v0    # "h":I
    .end local v1    # "w":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->getHeight()I

    move-result v0

    .line 247
    .restart local v0    # "h":I
    invoke-virtual {p0}, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->getWidth()I

    move-result v1

    .restart local v1    # "w":I
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->isDrag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mDragImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 148
    :goto_0
    const/4 v0, 0x1

    .line 150
    :goto_1
    return v0

    .line 139
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->moveX:I

    .line 140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->moveY:I

    .line 141
    iget v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->moveX:I

    iget v1, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->moveY:I

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->onDragItem(II)V

    goto :goto_0

    .line 144
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->onStopDrag()V

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->isDrag:Z

    goto :goto_0

    .line 150
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setOnChangeListener(Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView$OnChanageListener;)V
    .locals 0
    .param p1, "onChanageListener"    # Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView$OnChanageListener;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->onChanageListener:Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView$OnChanageListener;

    .line 81
    return-void
.end method
