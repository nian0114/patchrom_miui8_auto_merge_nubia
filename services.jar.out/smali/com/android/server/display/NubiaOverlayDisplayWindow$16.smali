.class Lcom/android/server/display/NubiaOverlayDisplayWindow$16;
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
    .line 1752
    iput-object p1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$16;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 1756
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1764
    :goto_0
    return v2

    .line 1758
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$16;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->sendInjectEvent(II)V

    goto :goto_0

    .line 1761
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$16;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->sendInjectEvent(II)V

    goto :goto_0

    .line 1756
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
