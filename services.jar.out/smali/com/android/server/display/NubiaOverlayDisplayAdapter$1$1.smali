.class Lcom/android/server/display/NubiaOverlayDisplayAdapter$1$1;
.super Landroid/database/ContentObserver;
.source "NubiaOverlayDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/NubiaOverlayDisplayAdapter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/NubiaOverlayDisplayAdapter$1;


# direct methods
.method constructor <init>(Lcom/android/server/display/NubiaOverlayDisplayAdapter$1;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    iput-object p1, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$1$1;->this$1:Lcom/android/server/display/NubiaOverlayDisplayAdapter$1;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$1$1;->this$1:Lcom/android/server/display/NubiaOverlayDisplayAdapter$1;

    iget-object v0, v0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$1;->this$0:Lcom/android/server/display/NubiaOverlayDisplayAdapter;

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayAdapter;->updateOverlayDisplayDevices()V
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayAdapter;->access$000(Lcom/android/server/display/NubiaOverlayDisplayAdapter;)V

    return-void
.end method
