.class Lcom/android/server/display/NubiaOverlayDisplayWindow$3;
.super Ljava/lang/Object;
.source "NubiaOverlayDisplayWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 926
    iput-object p1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$3;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 929
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$3;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->needSingleLayerRefreshHere()V
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$900(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    .line 930
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$3;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->hideScreenHigherBarAnimation()V
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$1000(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    .line 931
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$3;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherCenterButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$1100(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 932
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$3;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherRightButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$1200(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 933
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$3;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherLeftButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$1300(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 934
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$3;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$1400(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 935
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$3;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherBarVisible:Z

    .line 936
    return-void
.end method
