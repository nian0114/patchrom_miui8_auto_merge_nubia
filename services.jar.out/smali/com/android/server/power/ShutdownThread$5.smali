.class Lcom/android/server/power/ShutdownThread$5;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;JI[Z)V
    .locals 0

    .prologue
    .line 565
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$5;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-wide p2, p0, Lcom/android/server/power/ShutdownThread$5;->val$endTime:J

    iput p4, p0, Lcom/android/server/power/ShutdownThread$5;->val$timeout:I

    iput-object p5, p0, Lcom/android/server/power/ShutdownThread$5;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 571
    const-string v10, "nfc"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v5

    .line 573
    .local v5, "nfc":Landroid/nfc/INfcAdapter;
    const-string v10, "phone"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v7

    .line 575
    .local v7, "phone":Lcom/android/internal/telephony/ITelephony;
    const-string v10, "bluetooth_manager"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    .line 580
    .local v0, "bluetooth":Landroid/bluetooth/IBluetoothManager;
    if-eqz v5, :cond_0

    :try_start_0
    invoke-interface {v5}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_b

    :cond_0
    const/4 v6, 0x1

    .line 582
    .local v6, "nfcOff":Z
    :goto_0
    if-nez v6, :cond_1

    .line 583
    const-string v10, "ShutdownThread"

    const-string v11, "Turning off NFC..."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const/4 v10, 0x0

    invoke-interface {v5, v10}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z

    move-result v10

    if-nez v10, :cond_c

    :cond_2
    const/4 v1, 0x1

    .line 593
    .local v1, "bluetoothOff":Z
    :goto_2
    if-nez v1, :cond_3

    .line 594
    const-string v10, "ShutdownThread"

    const-string v11, "Disabling Bluetooth..."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const/4 v10, 0x0

    invoke-interface {v0, v10}, Landroid/bluetooth/IBluetoothManager;->disable(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 603
    :cond_3
    :goto_3
    if-eqz v7, :cond_4

    :try_start_2
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z

    move-result v10

    if-nez v10, :cond_d

    :cond_4
    const/4 v8, 0x1

    .line 604
    .local v8, "radioOff":Z
    :goto_4
    if-nez v8, :cond_5

    .line 605
    const-string v10, "ShutdownThread"

    const-string v11, "Turning off cellular radios..."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->shutdownMobileRadios()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 613
    :cond_5
    :goto_5
    const-string v10, "ShutdownThread"

    const-string v11, "Waiting for NFC, Bluetooth and Radio..."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iget-wide v10, p0, Lcom/android/server/power/ShutdownThread$5;->val$endTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long v2, v10, v12

    .line 616
    .local v2, "delay":J
    :goto_6
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-lez v10, :cond_a

    .line 617
    # getter for: Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$100()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 618
    iget v10, p0, Lcom/android/server/power/ShutdownThread$5;->val$timeout:I

    int-to-long v10, v10

    sub-long/2addr v10, v2

    long-to-double v10, v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4028000000000000L    # 12.0

    mul-double/2addr v10, v12

    iget v12, p0, Lcom/android/server/power/ShutdownThread$5;->val$timeout:I

    int-to-double v12, v12

    div-double/2addr v10, v12

    double-to-int v9, v10

    .line 620
    .local v9, "status":I
    add-int/lit8 v9, v9, 0x6

    .line 621
    # getter for: Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$200()Lcom/android/server/power/ShutdownThread;

    move-result-object v10

    const/4 v11, 0x0

    # invokes: Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    invoke-static {v10, v9, v11}, Lcom/android/server/power/ShutdownThread;->access$300(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    .line 624
    .end local v9    # "status":I
    :cond_6
    if-nez v1, :cond_7

    .line 626
    :try_start_3
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v10

    if-nez v10, :cond_e

    const/4 v1, 0x1

    .line 631
    :goto_7
    if-eqz v1, :cond_7

    .line 632
    const-string v10, "ShutdownThread"

    const-string v11, "Bluetooth turned off."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_7
    if-nez v8, :cond_8

    .line 637
    :try_start_4
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v10

    if-nez v10, :cond_f

    const/4 v8, 0x1

    .line 642
    :goto_8
    if-eqz v8, :cond_8

    .line 643
    const-string v10, "ShutdownThread"

    const-string v11, "Radio turned off."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :cond_8
    if-nez v6, :cond_9

    .line 648
    :try_start_5
    invoke-interface {v5}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_10

    const/4 v6, 0x1

    .line 653
    :goto_9
    if-eqz v6, :cond_9

    .line 654
    const-string v10, "ShutdownThread"

    const-string v11, "NFC turned off."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_9
    if-eqz v8, :cond_11

    if-eqz v1, :cond_11

    if-eqz v6, :cond_11

    .line 659
    const-string v10, "ShutdownThread"

    const-string v11, "NFC, Radio and Bluetooth shutdown complete."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iget-object v10, p0, Lcom/android/server/power/ShutdownThread$5;->val$done:[Z

    const/4 v11, 0x0

    const/4 v12, 0x1

    aput-boolean v12, v10, v11

    .line 667
    :cond_a
    return-void

    .line 580
    .end local v1    # "bluetoothOff":Z
    .end local v2    # "delay":J
    .end local v6    # "nfcOff":Z
    .end local v8    # "radioOff":Z
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 586
    :catch_0
    move-exception v4

    .line 587
    .local v4, "ex":Landroid/os/RemoteException;
    const-string v10, "ShutdownThread"

    const-string v11, "RemoteException during NFC shutdown"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 588
    const/4 v6, 0x1

    .restart local v6    # "nfcOff":Z
    goto/16 :goto_1

    .line 592
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 597
    :catch_1
    move-exception v4

    .line 598
    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string v10, "ShutdownThread"

    const-string v11, "RemoteException during bluetooth shutdown"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 599
    const/4 v1, 0x1

    .restart local v1    # "bluetoothOff":Z
    goto/16 :goto_3

    .line 603
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_d
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 608
    :catch_2
    move-exception v4

    .line 609
    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string v10, "ShutdownThread"

    const-string v11, "RemoteException during radio shutdown"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 610
    const/4 v8, 0x1

    .restart local v8    # "radioOff":Z
    goto/16 :goto_5

    .line 626
    .end local v4    # "ex":Landroid/os/RemoteException;
    .restart local v2    # "delay":J
    :cond_e
    const/4 v1, 0x0

    goto :goto_7

    .line 627
    :catch_3
    move-exception v4

    .line 628
    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string v10, "ShutdownThread"

    const-string v11, "RemoteException during bluetooth shutdown"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 629
    const/4 v1, 0x1

    goto :goto_7

    .line 637
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_f
    const/4 v8, 0x0

    goto :goto_8

    .line 638
    :catch_4
    move-exception v4

    .line 639
    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string v10, "ShutdownThread"

    const-string v11, "RemoteException during radio shutdown"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 640
    const/4 v8, 0x1

    goto :goto_8

    .line 648
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_10
    const/4 v6, 0x0

    goto :goto_9

    .line 649
    :catch_5
    move-exception v4

    .line 650
    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string v10, "ShutdownThread"

    const-string v11, "RemoteException during NFC shutdown"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 651
    const/4 v6, 0x1

    goto :goto_9

    .line 663
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_11
    const-wide/16 v10, 0x1f4

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    .line 665
    iget-wide v10, p0, Lcom/android/server/power/ShutdownThread$5;->val$endTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long v2, v10, v12

    goto/16 :goto_6
.end method
