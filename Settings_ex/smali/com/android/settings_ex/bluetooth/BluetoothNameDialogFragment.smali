.class public final Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;
.super Landroid/app/DialogFragment;
.source "BluetoothNameDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private mDeviceNameEdited:Z

.field private mDeviceNameUpdated:Z

.field mDeviceNameView:Landroid/widget/EditText;

.field mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

.field private mOkButton:Landroid/widget/Button;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 72
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment$1;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->setDeviceName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;)Lcn/nubia/commonui/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    return-object v0
.end method

.method private createDialogView(Ljava/lang/String;)Landroid/view/View;
    .locals 7
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 139
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040085

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 140
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f12016a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    .line 141
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    const/4 v4, 0x0

    new-instance v5, Lcom/android/settings_ex/bluetooth/Utf8ByteLengthFilter;

    const/16 v6, 0xf8

    invoke-direct {v5, v6}, Lcom/android/settings_ex/bluetooth/Utf8ByteLengthFilter;-><init>(I)V

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 144
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 146
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    new-instance v3, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment$3;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment$3;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 161
    return-object v1
.end method

.method private setDeviceName(Ljava/lang/String;)V
    .locals 3
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 126
    const-string v0, "BluetoothNameDialogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting device name to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->setName(Ljava/lang/String;)V

    .line 128
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 200
    iget-boolean v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameUpdated:Z

    if-eqz v2, :cond_1

    .line 202
    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameUpdated:Z

    .line 203
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameEdited:Z

    .line 206
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    if-eqz v2, :cond_0

    .line 207
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 221
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 97
    .local v0, "localManager":Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;
    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    .line 98
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 102
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "deviceName":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 104
    const-string v1, "device_name"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    const-string v1, "device_name_edited"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameEdited:Z

    .line 107
    :cond_0
    new-instance v1, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c00b4

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->createDialogView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c00b5

    new-instance v3, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment$2;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment$2;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;)V

    invoke-virtual {v1, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 119
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 122
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 166
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 167
    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 168
    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    .line 169
    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    .line 170
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 187
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 188
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 189
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 174
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 175
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    if-nez v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    .line 177
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    iget-boolean v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameEdited:Z

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 179
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 180
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 183
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 132
    const-string v0, "device_name"

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v0, "device_name_edited"

    iget-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameEdited:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 134
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 225
    return-void
.end method

.method updateDeviceName()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameUpdated:Z

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameEdited:Z

    .line 195
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 197
    :cond_0
    return-void
.end method
