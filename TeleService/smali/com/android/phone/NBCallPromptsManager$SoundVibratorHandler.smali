.class Lcom/android/phone/NBCallPromptsManager$SoundVibratorHandler;
.super Landroid/os/Handler;
.source "NBCallPromptsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBCallPromptsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoundVibratorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBCallPromptsManager;


# direct methods
.method public constructor <init>(Lcom/android/phone/NBCallPromptsManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBCallPromptsManager$SoundVibratorHandler;->this$0:Lcom/android/phone/NBCallPromptsManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private initSound()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/phone/NBCallPromptsManager$SoundVibratorHandler;->this$0:Lcom/android/phone/NBCallPromptsManager;

    # getter for: Lcom/android/phone/NBCallPromptsManager;->mToneGeneratorLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/phone/NBCallPromptsManager;->access$000(Lcom/android/phone/NBCallPromptsManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/NBCallPromptsManager$SoundVibratorHandler;->this$0:Lcom/android/phone/NBCallPromptsManager;

    # getter for: Lcom/android/phone/NBCallPromptsManager;->mNBCallPromptsSound:Lcom/android/phone/NBCallPromptsSound;
    invoke-static {v1}, Lcom/android/phone/NBCallPromptsManager;->access$100(Lcom/android/phone/NBCallPromptsManager;)Lcom/android/phone/NBCallPromptsSound;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_0

    :try_start_1
    invoke-direct {p0}, Lcom/android/phone/NBCallPromptsManager$SoundVibratorHandler;->loadSound()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/android/phone/NBCallPromptsManager$SoundVibratorHandler;->this$0:Lcom/android/phone/NBCallPromptsManager;

    const/4 v3, 0x0

    # setter for: Lcom/android/phone/NBCallPromptsManager;->mNBCallPromptsSound:Lcom/android/phone/NBCallPromptsSound;
    invoke-static {v1, v3}, Lcom/android/phone/NBCallPromptsManager;->access$102(Lcom/android/phone/NBCallPromptsManager;Lcom/android/phone/NBCallPromptsSound;)Lcom/android/phone/NBCallPromptsSound;

    goto :goto_0

    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private loadSound()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBCallPromptsManager$SoundVibratorHandler;->this$0:Lcom/android/phone/NBCallPromptsManager;

    new-instance v1, Lcom/android/phone/NBCallPromptsSound;

    iget-object v2, p0, Lcom/android/phone/NBCallPromptsManager$SoundVibratorHandler;->this$0:Lcom/android/phone/NBCallPromptsManager;

    # getter for: Lcom/android/phone/NBCallPromptsManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/NBCallPromptsManager;->access$200(Lcom/android/phone/NBCallPromptsManager;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/phone/NBCallPromptsSound;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/phone/NBCallPromptsManager;->mNBCallPromptsSound:Lcom/android/phone/NBCallPromptsSound;
    invoke-static {v0, v1}, Lcom/android/phone/NBCallPromptsManager;->access$102(Lcom/android/phone/NBCallPromptsManager;Lcom/android/phone/NBCallPromptsSound;)Lcom/android/phone/NBCallPromptsSound;

    iget-object v0, p0, Lcom/android/phone/NBCallPromptsManager$SoundVibratorHandler;->this$0:Lcom/android/phone/NBCallPromptsManager;

    # getter for: Lcom/android/phone/NBCallPromptsManager;->mNBCallPromptsSound:Lcom/android/phone/NBCallPromptsSound;
    invoke-static {v0}, Lcom/android/phone/NBCallPromptsManager;->access$100(Lcom/android/phone/NBCallPromptsManager;)Lcom/android/phone/NBCallPromptsSound;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/NBCallPromptsSound;->load(I)V

    iget-object v0, p0, Lcom/android/phone/NBCallPromptsManager$SoundVibratorHandler;->this$0:Lcom/android/phone/NBCallPromptsManager;

    # getter for: Lcom/android/phone/NBCallPromptsManager;->mNBCallPromptsSound:Lcom/android/phone/NBCallPromptsSound;
    invoke-static {v0}, Lcom/android/phone/NBCallPromptsManager;->access$100(Lcom/android/phone/NBCallPromptsManager;)Lcom/android/phone/NBCallPromptsSound;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/NBCallPromptsSound;->load(I)V

    iget-object v0, p0, Lcom/android/phone/NBCallPromptsManager$SoundVibratorHandler;->this$0:Lcom/android/phone/NBCallPromptsManager;

    # getter for: Lcom/android/phone/NBCallPromptsManager;->mNBCallPromptsSound:Lcom/android/phone/NBCallPromptsSound;
    invoke-static {v0}, Lcom/android/phone/NBCallPromptsManager;->access$100(Lcom/android/phone/NBCallPromptsManager;)Lcom/android/phone/NBCallPromptsSound;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/phone/NBCallPromptsSound;->load(I)V

    return-void
.end method

.method private playSound(I)V
    .locals 2
    .param p1, "soundIndex"    # I

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBCallPromptsManager$SoundVibratorHandler;->this$0:Lcom/android/phone/NBCallPromptsManager;

    # getter for: Lcom/android/phone/NBCallPromptsManager;->mToneGeneratorLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/phone/NBCallPromptsManager;->access$000(Lcom/android/phone/NBCallPromptsManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/NBCallPromptsManager$SoundVibratorHandler;->this$0:Lcom/android/phone/NBCallPromptsManager;

    # getter for: Lcom/android/phone/NBCallPromptsManager;->mNBCallPromptsSound:Lcom/android/phone/NBCallPromptsSound;
    invoke-static {v0}, Lcom/android/phone/NBCallPromptsManager;->access$100(Lcom/android/phone/NBCallPromptsManager;)Lcom/android/phone/NBCallPromptsSound;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBCallPromptsManager$SoundVibratorHandler;->this$0:Lcom/android/phone/NBCallPromptsManager;

    # getter for: Lcom/android/phone/NBCallPromptsManager;->mNBCallPromptsSound:Lcom/android/phone/NBCallPromptsSound;
    invoke-static {v0}, Lcom/android/phone/NBCallPromptsManager;->access$100(Lcom/android/phone/NBCallPromptsManager;)Lcom/android/phone/NBCallPromptsSound;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/phone/NBCallPromptsSound;->play(I)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private releaseSound()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBCallPromptsManager$SoundVibratorHandler;->this$0:Lcom/android/phone/NBCallPromptsManager;

    # getter for: Lcom/android/phone/NBCallPromptsManager;->mToneGeneratorLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/phone/NBCallPromptsManager;->access$000(Lcom/android/phone/NBCallPromptsManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/NBCallPromptsManager$SoundVibratorHandler;->this$0:Lcom/android/phone/NBCallPromptsManager;

    # getter for: Lcom/android/phone/NBCallPromptsManager;->mNBCallPromptsSound:Lcom/android/phone/NBCallPromptsSound;
    invoke-static {v0}, Lcom/android/phone/NBCallPromptsManager;->access$100(Lcom/android/phone/NBCallPromptsManager;)Lcom/android/phone/NBCallPromptsSound;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBCallPromptsManager$SoundVibratorHandler;->this$0:Lcom/android/phone/NBCallPromptsManager;

    # getter for: Lcom/android/phone/NBCallPromptsManager;->mNBCallPromptsSound:Lcom/android/phone/NBCallPromptsSound;
    invoke-static {v0}, Lcom/android/phone/NBCallPromptsManager;->access$100(Lcom/android/phone/NBCallPromptsManager;)Lcom/android/phone/NBCallPromptsSound;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/NBCallPromptsSound;->release()V

    iget-object v0, p0, Lcom/android/phone/NBCallPromptsManager$SoundVibratorHandler;->this$0:Lcom/android/phone/NBCallPromptsManager;

    const/4 v2, 0x0

    # setter for: Lcom/android/phone/NBCallPromptsManager;->mNBCallPromptsSound:Lcom/android/phone/NBCallPromptsSound;
    invoke-static {v0, v2}, Lcom/android/phone/NBCallPromptsManager;->access$102(Lcom/android/phone/NBCallPromptsManager;Lcom/android/phone/NBCallPromptsSound;)Lcom/android/phone/NBCallPromptsSound;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/NBCallPromptsManager$SoundVibratorHandler;->this$0:Lcom/android/phone/NBCallPromptsManager;

    iget-object v0, v0, Lcom/android/phone/NBCallPromptsManager;->mSoundWorkerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/NBCallPromptsManager$SoundVibratorHandler;->this$0:Lcom/android/phone/NBCallPromptsManager;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/phone/NBCallPromptsManager;->mSoundWorkerThread:Landroid/os/HandlerThread;

    :cond_1
    iget-object v0, p0, Lcom/android/phone/NBCallPromptsManager$SoundVibratorHandler;->this$0:Lcom/android/phone/NBCallPromptsManager;

    iget-object v0, v0, Lcom/android/phone/NBCallPromptsManager;->mSoundVibratorHandler:Lcom/android/phone/NBCallPromptsManager$SoundVibratorHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/NBCallPromptsManager$SoundVibratorHandler;->this$0:Lcom/android/phone/NBCallPromptsManager;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/phone/NBCallPromptsManager;->mSoundVibratorHandler:Lcom/android/phone/NBCallPromptsManager$SoundVibratorHandler;

    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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
    invoke-direct {p0}, Lcom/android/phone/NBCallPromptsManager$SoundVibratorHandler;->initSound()V

    goto :goto_0

    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/phone/NBCallPromptsManager$SoundVibratorHandler;->playSound(I)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/phone/NBCallPromptsManager$SoundVibratorHandler;->releaseSound()V

    invoke-virtual {p0}, Lcom/android/phone/NBCallPromptsManager$SoundVibratorHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
