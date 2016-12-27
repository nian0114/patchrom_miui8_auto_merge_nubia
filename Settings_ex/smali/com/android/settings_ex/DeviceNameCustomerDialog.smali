.class public Lcom/android/settings_ex/DeviceNameCustomerDialog;
.super Lcn/nubia/commonui/app/AlertDialog;
.source "DeviceNameCustomerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private initial_content:Ljava/lang/CharSequence;

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mContext:Landroid/content/Context;

.field private mCustomDeviceNameEditText:Landroid/widget/EditText;

.field private mOkButtonPos:I

.field private mOriginalName:Ljava/lang/String;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mView:Landroid/view/View;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcn/nubia/commonui/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 28
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/settings_ex/DeviceNameCustomerDialog;->mOkButtonPos:I

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/DeviceNameCustomerDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 88
    new-instance v0, Lcom/android/settings_ex/DeviceNameCustomerDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DeviceNameCustomerDialog$1;-><init>(Lcom/android/settings_ex/DeviceNameCustomerDialog;)V

    iput-object v0, p0, Lcom/android/settings_ex/DeviceNameCustomerDialog;->mTextWatcher:Landroid/text/TextWatcher;

    .line 45
    iput-object p1, p0, Lcom/android/settings_ex/DeviceNameCustomerDialog;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/DeviceNameCustomerDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DeviceNameCustomerDialog;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/settings_ex/DeviceNameCustomerDialog;->mCustomDeviceNameEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method private handleCancle()V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method private onLayout()V
    .locals 4

    .prologue
    .line 63
    const-string v1, "ro.config.devicename"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "productName":Ljava/lang/String;
    const-string v1, "persist.sys.devicename"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/DeviceNameCustomerDialog;->mOriginalName:Ljava/lang/String;

    .line 65
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/DeviceNameCustomerDialog;->setInverseBackgroundForced(Z)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceNameCustomerDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040082

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/DeviceNameCustomerDialog;->mView:Landroid/view/View;

    .line 67
    iget-object v1, p0, Lcom/android/settings_ex/DeviceNameCustomerDialog;->mView:Landroid/view/View;

    const v2, 0x7f120167

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/settings_ex/DeviceNameCustomerDialog;->mCustomDeviceNameEditText:Landroid/widget/EditText;

    .line 68
    iget-object v1, p0, Lcom/android/settings_ex/DeviceNameCustomerDialog;->mCustomDeviceNameEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settings_ex/DeviceNameCustomerDialog;->mOriginalName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v1, p0, Lcom/android/settings_ex/DeviceNameCustomerDialog;->mCustomDeviceNameEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    .line 70
    iget-object v1, p0, Lcom/android/settings_ex/DeviceNameCustomerDialog;->mCustomDeviceNameEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settings_ex/DeviceNameCustomerDialog;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 71
    iget-object v1, p0, Lcom/android/settings_ex/DeviceNameCustomerDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/DeviceNameCustomerDialog;->setView(Landroid/view/View;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceNameCustomerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 73
    invoke-direct {p0}, Lcom/android/settings_ex/DeviceNameCustomerDialog;->setButtons()V

    .line 75
    return-void
.end method

.method private setBtName(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 156
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private setButtons()V
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceNameCustomerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 124
    .local v0, "context":Landroid/content/Context;
    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p0}, Lcom/android/settings_ex/DeviceNameCustomerDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 125
    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p0}, Lcom/android/settings_ex/DeviceNameCustomerDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 126
    return-void
.end method

.method private setWifiApName(Ljava/lang/String;)V
    .locals 3
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/settings_ex/DeviceNameCustomerDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/settings_ex/DeviceNameCustomerDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lcom/android/settings_ex/DeviceNameCustomerDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 172
    iget-object v0, p0, Lcom/android/settings_ex/DeviceNameCustomerDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 173
    iget-object v0, p0, Lcom/android/settings_ex/DeviceNameCustomerDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings_ex/DeviceNameCustomerDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/DeviceNameCustomerDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings_ex/DeviceNameCustomerDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0
.end method

.method private setWifiP2pName(Ljava/lang/String;)V
    .locals 3
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/settings_ex/DeviceNameCustomerDialog;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings_ex/DeviceNameCustomerDialog;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->setDeviceName(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 163
    iget-object v0, p0, Lcom/android/settings_ex/DeviceNameCustomerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_p2p_device_name"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 166
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x0

    .line 131
    iget-object v2, p0, Lcom/android/settings_ex/DeviceNameCustomerDialog;->mCustomDeviceNameEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "device_name":Ljava/lang/String;
    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    .line 133
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "newName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 135
    iget-object v2, p0, Lcom/android/settings_ex/DeviceNameCustomerDialog;->mOriginalName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 136
    const-string v2, "persist.sys.devicename"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-direct {p0, v1}, Lcom/android/settings_ex/DeviceNameCustomerDialog;->setBtName(Ljava/lang/String;)V

    .line 138
    invoke-direct {p0, v1}, Lcom/android/settings_ex/DeviceNameCustomerDialog;->setWifiP2pName(Ljava/lang/String;)V

    .line 139
    invoke-direct {p0, v1}, Lcom/android/settings_ex/DeviceNameCustomerDialog;->setWifiApName(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceNameCustomerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0c8f

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 152
    .end local v1    # "newName":Ljava/lang/String;
    :goto_0
    return-void

    .line 142
    .restart local v1    # "newName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceNameCustomerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0c90

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 145
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/DeviceNameCustomerDialog;->handleCancle()V

    goto :goto_0

    .line 148
    .end local v1    # "newName":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/DeviceNameCustomerDialog;->handleCancle()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings_ex/DeviceNameCustomerDialog;->mContext:Landroid/content/Context;

    const-string v1, "wifip2p"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/settings_ex/DeviceNameCustomerDialog;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 52
    iget-object v0, p0, Lcom/android/settings_ex/DeviceNameCustomerDialog;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/settings_ex/DeviceNameCustomerDialog;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings_ex/DeviceNameCustomerDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/DeviceNameCustomerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DeviceNameCustomerDialog;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/DeviceNameCustomerDialog;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings_ex/DeviceNameCustomerDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 56
    iget-object v0, p0, Lcom/android/settings_ex/DeviceNameCustomerDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DeviceNameCustomerDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 57
    invoke-direct {p0}, Lcom/android/settings_ex/DeviceNameCustomerDialog;->onLayout()V

    .line 58
    invoke-super {p0, p1}, Lcn/nubia/commonui/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 59
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Lcn/nubia/commonui/app/AlertDialog;->onStart()V

    .line 83
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DeviceNameCustomerDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 84
    return-void
.end method

.method public setInitialContent(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "initial_content"    # Ljava/lang/CharSequence;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/settings_ex/DeviceNameCustomerDialog;->initial_content:Ljava/lang/CharSequence;

    .line 183
    return-void
.end method
