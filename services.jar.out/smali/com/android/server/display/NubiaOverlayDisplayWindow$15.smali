.class Lcom/android/server/display/NubiaOverlayDisplayWindow$15;
.super Ljava/lang/Object;
.source "NubiaOverlayDisplayWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 1725
    iput-object p1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$15;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v7, 0x52

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1730
    const-string v1, "0"

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->KEY_MENU_AND_HOME_POS:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$5100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1733
    .local v0, "isKeyPosNotChanged":Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1748
    :goto_0
    return v4

    .line 1735
    :pswitch_0
    if-eqz v0, :cond_0

    .line 1736
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$15;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    invoke-virtual {v1, v4, v6}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->sendInjectEvent(II)V

    goto :goto_0

    .line 1738
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$15;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    invoke-virtual {v1, v4, v7}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->sendInjectEvent(II)V

    goto :goto_0

    .line 1741
    :pswitch_1
    if-eqz v0, :cond_1

    .line 1742
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$15;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    invoke-virtual {v1, v5, v6}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->sendInjectEvent(II)V

    goto :goto_0

    .line 1744
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$15;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    invoke-virtual {v1, v5, v7}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->sendInjectEvent(II)V

    goto :goto_0

    .line 1733
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
