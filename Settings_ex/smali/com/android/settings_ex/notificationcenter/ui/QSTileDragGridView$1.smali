.class Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView$1;
.super Ljava/lang/Object;
.source "QSTileDragGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView$1;->this$0:Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView$1;->this$0:Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->isDrag:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->access$002(Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;Z)Z

    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView$1;->this$0:Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;

    # getter for: Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v0}, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->access$100(Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;)Landroid/os/Vibrator;

    move-result-object v0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 74
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView$1;->this$0:Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;

    # getter for: Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mStartDragItemView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->access$200(Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView$1;->this$0:Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;

    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView$1;->this$0:Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;

    # getter for: Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mDragBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->access$300(Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView$1;->this$0:Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;

    # getter for: Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mDownX:I
    invoke-static {v2}, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->access$400(Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView$1;->this$0:Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;

    # getter for: Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->mDownY:I
    invoke-static {v3}, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->access$500(Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;)I

    move-result v3

    # invokes: Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->createDragImage(Landroid/graphics/Bitmap;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->access$600(Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;Landroid/graphics/Bitmap;II)V

    .line 76
    return-void
.end method
