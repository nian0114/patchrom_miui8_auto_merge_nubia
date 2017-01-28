.class final Lnubia/util/FrameworkDataStatisticsManager$ClientHandler;
.super Landroid/os/Handler;
.source "FrameworkDataStatisticsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/util/FrameworkDataStatisticsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClientHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/util/FrameworkDataStatisticsManager;


# direct methods
.method public constructor <init>(Lnubia/util/FrameworkDataStatisticsManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Lnubia/util/FrameworkDataStatisticsManager$ClientHandler;->this$0:Lnubia/util/FrameworkDataStatisticsManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lnubia/util/FrameworkDataStatisticsManager$ClientHandler;->this$0:Lnubia/util/FrameworkDataStatisticsManager;

    # invokes: Lnubia/util/FrameworkDataStatisticsManager;->unBind()V
    invoke-static {v0}, Lnubia/util/FrameworkDataStatisticsManager;->access$000(Lnubia/util/FrameworkDataStatisticsManager;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lnubia/util/FrameworkDataStatisticsManager$ClientHandler;->this$0:Lnubia/util/FrameworkDataStatisticsManager;

    # invokes: Lnubia/util/FrameworkDataStatisticsManager;->handleServiceRunnable()V
    invoke-static {v0}, Lnubia/util/FrameworkDataStatisticsManager;->access$100(Lnubia/util/FrameworkDataStatisticsManager;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
