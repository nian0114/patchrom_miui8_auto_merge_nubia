.class public Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;
.super Lcn/nubia/commonui/app/AlertActivity;
.source "UsbModeChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final USB_FUNCTIONS:[Ljava/lang/String;

.field private final mOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 24
    invoke-direct {p0}, Lcn/nubia/commonui/app/AlertActivity;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mOptions:Ljava/util/ArrayList;

    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "mtp"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ptp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->USB_FUNCTIONS:[Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$1;-><init>(Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->updateToggles()V

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 10

    .prologue
    .line 65
    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mOptions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 67
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f0401cf

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 68
    .local v3, "item":Landroid/view/View;
    const v7, 0x7f120402

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 69
    .local v4, "mtp":Landroid/view/View;
    const v7, 0x7f120403

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 70
    .local v6, "ptp":Landroid/view/View;
    const v7, 0x7f120404

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, "defaultOption":Landroid/view/View;
    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mOptions:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mOptions:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mOptions:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mOptions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 75
    .local v5, "option":Landroid/view/View;
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 77
    .end local v5    # "option":Landroid/view/View;
    :cond_0
    return-object v3
.end method

.method private setChecked(Landroid/view/View;Z)V
    .locals 1
    .param p1, "option"    # Landroid/view/View;
    .param p2, "checked"    # Z

    .prologue
    .line 120
    const v0, 0x7f120051

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 121
    return-void
.end method

.method private updateToggles()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 124
    const/4 v5, 0x0

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v8}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 125
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "unlocked"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 126
    .local v4, "unLocked":Z
    const/4 v3, 0x0

    .line 127
    .local v3, "setted":Z
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->USB_FUNCTIONS:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v2, v5, -0x1

    .line 128
    .local v2, "lastIndex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 129
    if-nez v3, :cond_0

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->USB_FUNCTIONS:[Ljava/lang/String;

    aget-object v8, v8, v0

    invoke-virtual {v5, v8}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 130
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mOptions:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-direct {p0, v5, v6}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->setChecked(Landroid/view/View;Z)V

    .line 131
    const/4 v3, 0x1

    .line 128
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mOptions:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-direct {p0, v5, v7}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->setChecked(Landroid/view/View;Z)V

    goto :goto_1

    .line 137
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mOptions:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    if-nez v3, :cond_2

    :goto_2
    invoke-direct {p0, v5, v6}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->setChecked(Landroid/view/View;Z)V

    .line 138
    return-void

    :cond_2
    move v6, v7

    .line 137
    goto :goto_2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 94
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 95
    const-string v4, "UsbModeChooserActivity"

    const-string v5, "In Monkey Test!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->dismiss()V

    .line 117
    :goto_0
    return-void

    .line 100
    :cond_0
    const-string v6, "UsbModeChooserActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onClick:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mOptions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 102
    .local v2, "size":I
    add-int/lit8 v3, v2, -0x1

    .line 103
    .local v3, "which":I
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 104
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mOptions:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 105
    .local v1, "option":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 106
    invoke-direct {p0, v1, v4}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->setChecked(Landroid/view/View;Z)V

    .line 107
    move v3, v0

    .line 103
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 109
    :cond_1
    invoke-direct {p0, v1, v5}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->setChecked(Landroid/view/View;Z)V

    goto :goto_2

    .line 113
    .end local v1    # "option":Landroid/view/View;
    :cond_2
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->USB_FUNCTIONS:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v6, v7}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 114
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mUsbManager:Landroid/hardware/usb/UsbManager;

    add-int/lit8 v7, v2, -0x1

    if-eq v3, v7, :cond_3

    :goto_3
    invoke-virtual {v6, v4}, Landroid/hardware/usb/UsbManager;->setUsbDataUnlocked(Z)V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->dismiss()V

    goto :goto_0

    :cond_3
    move v4, v5

    .line 114
    goto :goto_3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcn/nubia/commonui/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mAlertParams:Lcn/nubia/commonui/app/AlertController$AlertParams;

    .line 42
    .local v0, "p":Lcn/nubia/commonui/app/AlertController$AlertParams;
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 43
    const-string v1, "usb"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 45
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->setupAlert()V

    .line 47
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 48
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Lcn/nubia/commonui/app/AlertActivity;->onDestroy()V

    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 90
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0}, Lcn/nubia/commonui/app/AlertActivity;->onResume()V

    .line 83
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->updateToggles()V

    .line 84
    return-void
.end method
