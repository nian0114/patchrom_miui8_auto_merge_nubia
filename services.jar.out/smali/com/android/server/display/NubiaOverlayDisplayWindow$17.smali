.class Lcom/android/server/display/NubiaOverlayDisplayWindow$17;
.super Ljava/lang/Object;
.source "NubiaOverlayDisplayWindow.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/NubiaOverlayDisplayWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;


# direct methods
.method constructor <init>(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$17;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 17
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v2, "0"

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->KEY_MENU_AND_HOME_POS:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$5100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .local v16, "isKeyPosNotChanged":Z
    const/4 v7, 0x0

    .local v7, "keyCode":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/NubiaOverlayDisplayWindow$17;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerLeftButton:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$5200(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v2

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_2

    if-eqz v16, :cond_1

    const/16 v7, 0x52

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/NubiaOverlayDisplayWindow$17;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    # setter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->downTime:J
    invoke-static {v2, v4, v5}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$5502(Lcom/android/server/display/NubiaOverlayDisplayWindow;J)J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/NubiaOverlayDisplayWindow$17;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->downTime:J
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$5500(Lcom/android/server/display/NubiaOverlayDisplayWindow;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/NubiaOverlayDisplayWindow$17;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->downTime:J
    invoke-static {v4}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$5500(Lcom/android/server/display/NubiaOverlayDisplayWindow;)J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x88

    const/16 v13, 0x101

    const/4 v14, 0x0

    invoke-static/range {v2 .. v14}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v15

    .local v15, "down":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v15, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    invoke-virtual {v15}, Landroid/view/KeyEvent;->recycle()V

    const/4 v2, 0x0

    return v2

    .end local v15    # "down":Landroid/view/KeyEvent;
    :cond_1
    const/4 v7, 0x4

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/NubiaOverlayDisplayWindow$17;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerRightButton:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$5300(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v2

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_4

    if-eqz v16, :cond_3

    const/4 v7, 0x4

    :goto_1
    goto :goto_0

    :cond_3
    const/16 v7, 0x52

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/NubiaOverlayDisplayWindow$17;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerCenterButton:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$5400(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v2

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_0

    const/4 v7, 0x3

    goto :goto_0
.end method
