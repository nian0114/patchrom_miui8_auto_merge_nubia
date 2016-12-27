.class Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;
.super Landroid/os/Handler;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_exlib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_exlib/applications/ApplicationsState;


# direct methods
.method constructor <init>(Lcom/android/settings_exlib/applications/ApplicationsState;)V
    .locals 0

    .prologue
    .line 686
    iput-object p1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 698
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    invoke-virtual {v2}, Lcom/android/settings_exlib/applications/ApplicationsState;->rebuildActiveSessions()V

    .line 699
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 744
    :cond_0
    :goto_0
    return-void

    .line 701
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    .line 702
    .local v1, "s":Lcom/android/settings_exlib/applications/ApplicationsState$Session;
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 703
    iget-object v2, v1, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;

    iget-object v3, v1, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mLastAppList:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;->onRebuildComplete(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 707
    .end local v1    # "s":Lcom/android/settings_exlib/applications/ApplicationsState$Session;
    :pswitch_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 708
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;

    invoke-interface {v2}, Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;->onPackageListChanged()V

    .line 707
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 712
    .end local v0    # "i":I
    :pswitch_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 713
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;

    invoke-interface {v2}, Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;->onPackageIconChanged()V

    .line 712
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 717
    .end local v0    # "i":I
    :pswitch_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 718
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    iget-object v3, v2, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v2}, Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;->onPackageSizeChanged(Ljava/lang/String;)V

    .line 717
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 723
    .end local v0    # "i":I
    :pswitch_4
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 724
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;

    invoke-interface {v2}, Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;->onAllSizesComputed()V

    .line 723
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 728
    .end local v0    # "i":I
    :pswitch_5
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 729
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    iget-object v3, v2, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_6
    invoke-interface {v3, v2}, Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;->onRunningStateChanged(Z)V

    .line 728
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 729
    :cond_1
    const/4 v2, 0x0

    goto :goto_6

    .line 734
    .end local v0    # "i":I
    :pswitch_6
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_7
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 735
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;

    invoke-interface {v2}, Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;->onLauncherInfoChanged()V

    .line 734
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 739
    .end local v0    # "i":I
    :pswitch_7
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_8
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 740
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;

    invoke-interface {v2}, Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;->onLoadEntriesCompleted()V

    .line 739
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 699
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
