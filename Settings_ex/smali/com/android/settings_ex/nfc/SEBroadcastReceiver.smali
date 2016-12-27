.class public Lcom/android/settings_ex/nfc/SEBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SEBroadcastReceiver.java"


# instance fields
.field private mNfcAdapter:Landroid/nfc/NfcAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private isSim1HasSe()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 83
    const-string v3, "isSimHasSe............."

    invoke-direct {p0, v3}, Lcom/android/settings_ex/nfc/SEBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 86
    iget-object v3, p0, Lcom/android/settings_ex/nfc/SEBroadcastReceiver;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/nfc/SEBroadcastReceiver;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    iget-object v3, p0, Lcom/android/settings_ex/nfc/SEBroadcastReceiver;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->getSecureElementList()[I

    move-result-object v0

    .line 92
    .local v0, "elementList":[I
    if-eqz v0, :cond_0

    array-length v3, v0

    if-lez v3, :cond_0

    .line 93
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "elementList["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] ========== "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ex/nfc/SEBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 95
    aget v3, v0, v1

    const/16 v4, 0xf3

    if-ne v3, v4, :cond_1

    .line 96
    const/4 v2, 0x1

    .line 100
    .end local v0    # "elementList":[I
    .end local v1    # "i":I
    :cond_0
    return v2

    .line 93
    .restart local v0    # "elementList":[I
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private isSim1Ready()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 67
    const-string v4, "gsm.sim.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "prop":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prop ======= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings_ex/nfc/SEBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 69
    if-eqz v0, :cond_1

    const-string v4, ""

    if-eq v0, v4, :cond_1

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 70
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "s":[Ljava/lang/String;
    const-string v4, "READY"

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 79
    .end local v1    # "s":[Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 75
    :cond_1
    const-string v4, "READY"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    move v2, v3

    .line 79
    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 104
    const-string v0, "SEBroadcastReceiver"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "action":Ljava/lang/String;
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/nfc/SEBroadcastReceiver;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 27
    iget-object v1, p0, Lcom/android/settings_ex/nfc/SEBroadcastReceiver;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v1, :cond_2

    const-string v1, "0"

    const-string v2, "persist.sys.wireless_se"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "0"

    const-string v2, "persist.sys.switch_se"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 29
    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    const-string v2, "android.nfc.extra.ADAPTER_STATE"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 32
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/nfc/SEBroadcastReceiver;->isSim1Ready()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/settings_ex/nfc/SEBroadcastReceiver;->isSim1HasSe()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 33
    const-string v1, "0"

    const-string v2, "persist.sys.sim_se"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 34
    const-string v1, "2"

    const-string v2, "persist.sys.switch_se"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 35
    iget-object v1, p0, Lcom/android/settings_ex/nfc/SEBroadcastReceiver;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enableCardEmulatorF3()V

    .line 36
    const-string v1, "persist.sys.switch_se"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v1, "persist.sys.sim_se"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_2
    :goto_0
    return-void

    .line 41
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/nfc/SEBroadcastReceiver;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "1"

    const-string v2, "persist.sys.switch_se"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 42
    iget-object v1, p0, Lcom/android/settings_ex/nfc/SEBroadcastReceiver;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enableCardEmulatorF4()V

    .line 43
    const-string v1, "persist.sys.switch_se"

    const-string v2, "2"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v1, "persist.sys.sim_se"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
