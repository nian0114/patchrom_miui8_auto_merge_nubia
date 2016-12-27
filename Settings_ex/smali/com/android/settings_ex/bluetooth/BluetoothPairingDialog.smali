.class public final Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;
.super Lcn/nubia/commonui/app/AlertActivity;
.source "BluetoothPairingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mBluetoothManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

.field private mCachedDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mHandler:Landroid/os/Handler;

.field private mIsButtonPressed:Z

.field private mOkButton:Landroid/widget/Button;

.field private mPairingKey:Ljava/lang/String;

.field private mPairingView:Landroid/widget/EditText;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcn/nubia/commonui/app/AlertActivity;-><init>()V

    .line 82
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog$1;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 106
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog$2;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method private allowPhonebookAccess()V
    .locals 5

    .prologue
    .line 405
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mCachedDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 406
    .local v0, "cachedDevice":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    if-nez v0, :cond_0

    .line 407
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mCachedDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mBluetoothManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mBluetoothManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 412
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    .line 413
    return-void
.end method

.method private createConfirmationDialog()V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcn/nubia/commonui/app/AlertController$AlertParams;

    .line 339
    .local v0, "p":Lcn/nubia/commonui/app/AlertController$AlertParams;
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 340
    const v1, 0x7f0c0047

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 341
    iput-object p0, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 342
    const v1, 0x7f0c0049

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 343
    iput-object p0, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 344
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 345
    return-void
.end method

.method private createConsentDialog()V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcn/nubia/commonui/app/AlertController$AlertParams;

    .line 353
    .local v0, "p":Lcn/nubia/commonui/app/AlertController$AlertParams;
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 354
    const v1, 0x7f0c0047

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 355
    iput-object p0, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 356
    const v1, 0x7f0c0049

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 357
    iput-object p0, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 358
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 359
    return-void
.end method

.method private createDisplayPasskeyOrPinDialog()V
    .locals 4

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcn/nubia/commonui/app/AlertController$AlertParams;

    .line 367
    .local v0, "p":Lcn/nubia/commonui/app/AlertController$AlertParams;
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->createView()Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 368
    const/high16 v2, 0x1040000

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 369
    iput-object p0, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 370
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 374
    iget v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 375
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    iget v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 377
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 378
    .local v1, "pinBytes":[B
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothDevice;->setPin([B)Z

    goto :goto_0
.end method

.method private createPinEntryView()Landroid/view/View;
    .locals 13

    .prologue
    const/4 v10, 0x0

    .line 238
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const v11, 0x7f04003e

    invoke-virtual {v9, v11, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 239
    .local v8, "view":Landroid/view/View;
    const v9, 0x7f1200d7

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 240
    .local v6, "messageViewCaptionHint":Landroid/widget/TextView;
    const v9, 0x7f1200d0

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 241
    .local v5, "messageViewCaption":Landroid/widget/TextView;
    const v9, 0x7f1200d1

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 242
    .local v7, "messageViewContent":Landroid/widget/TextView;
    const v9, 0x7f1200d9

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 243
    .local v4, "messageView2":Landroid/widget/TextView;
    const v9, 0x7f1200d8

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 244
    .local v0, "alphanumericPin":Landroid/widget/CheckBox;
    const v9, 0x7f1200d6

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    .line 245
    iget-object v9, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    invoke-virtual {v9, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 246
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 249
    const v3, 0x7f0c020c

    .line 251
    .local v3, "messageIdHint":I
    iget v9, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mType:I

    sparse-switch v9, :sswitch_data_0

    .line 269
    const-string v9, "BluetoothPairingDialog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Incorrect pairing type for createPinEntryView: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mType:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v10

    .line 283
    .end local v8    # "view":Landroid/view/View;
    :goto_0
    return-object v8

    .line 253
    .restart local v8    # "view":Landroid/view/View;
    :sswitch_0
    const v3, 0x7f0c020d

    .line 256
    :sswitch_1
    const v2, 0x7f0c020e

    .line 258
    .local v2, "messageId":I
    const/16 v1, 0x10

    .line 274
    .local v1, "maxLength":I
    :goto_1
    const v9, 0x7f0c0208

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(I)V

    .line 275
    iget-object v9, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mCachedDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v10, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9, v10}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(I)V

    .line 278
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(I)V

    .line 279
    iget-object v9, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setInputType(I)V

    .line 280
    iget-object v9, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    const/4 v10, 0x1

    new-array v10, v10, [Landroid/text/InputFilter;

    const/4 v11, 0x0

    new-instance v12, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v12, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v12, v10, v11

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    .line 262
    .end local v1    # "maxLength":I
    .end local v2    # "messageId":I
    :sswitch_2
    const v2, 0x7f0c020f

    .line 264
    .restart local v2    # "messageId":I
    const/4 v1, 0x6

    .line 265
    .restart local v1    # "maxLength":I
    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    .line 251
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method private createUserEntryDialog()V
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcn/nubia/commonui/app/AlertController$AlertParams;

    .line 226
    .local v0, "p":Lcn/nubia/commonui/app/AlertController$AlertParams;
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->createPinEntryView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 227
    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 228
    iput-object p0, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 229
    const/high16 v1, 0x1040000

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 230
    iput-object p0, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 231
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 233
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mAlert:Lcn/nubia/commonui/app/AlertController;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    .line 234
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 235
    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 14

    .prologue
    const/4 v9, 0x0

    const v13, 0x7f0c0208

    const/4 v12, 0x0

    .line 287
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f04003d

    invoke-virtual {v10, v11, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 290
    .local v8, "view":Landroid/view/View;
    iget-object v10, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mCachedDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v11, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v10, v11}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 291
    .local v4, "name":Ljava/lang/String;
    const v10, 0x7f1200d0

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 292
    .local v2, "messageViewCaption":Landroid/widget/TextView;
    const v10, 0x7f1200d1

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 293
    .local v3, "messageViewContent":Landroid/widget/TextView;
    const v10, 0x7f1200d2

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 294
    .local v6, "pairingViewCaption":Landroid/widget/TextView;
    const v10, 0x7f1200d3

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 295
    .local v7, "pairingViewContent":Landroid/widget/TextView;
    const v10, 0x7f1200d4

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 297
    .local v1, "messagePairing":Landroid/widget/TextView;
    const/4 v0, 0x0

    .line 298
    .local v0, "messageCaption":Ljava/lang/String;
    const/4 v5, 0x0

    .line 299
    .local v5, "pairingContent":Ljava/lang/String;
    iget v10, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mType:I

    packed-switch v10, :pswitch_data_0

    .line 315
    const-string v10, "BluetoothPairingDialog"

    const-string v11, "Incorrect pairing type received, not creating view"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v9

    .line 330
    .end local v8    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-object v8

    .line 302
    .restart local v8    # "view":Landroid/view/View;
    :pswitch_0
    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 304
    :pswitch_1
    invoke-virtual {p0, v13}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 305
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    .line 319
    :goto_1
    if-eqz v2, :cond_1

    .line 320
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    :cond_1
    if-eqz v5, :cond_0

    .line 325
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 326
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 327
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 310
    :pswitch_2
    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 311
    invoke-virtual {p0, v13}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 312
    goto :goto_1

    .line 299
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onCancel()V
    .locals 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->cancelPairingUserInput()Z

    .line 455
    const-string v0, "bt_key_pairing_reject"

    const-string v1, "1"

    invoke-static {p0, v0, v1}, Lcom/android/settings_ex/bluetooth/Utils;->setSettingsDbData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method private onPair(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 416
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->allowPhonebookAccess()V

    .line 418
    iget v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mType:I

    packed-switch v2, :pswitch_data_0

    .line 448
    const-string v2, "BluetoothPairingDialog"

    const-string v3, "Incorrect pairing type received"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 421
    :pswitch_1
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 422
    .local v1, "pinBytes":[B
    if-eqz v1, :cond_0

    .line 425
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothDevice;->setPin([B)Z

    goto :goto_0

    .line 429
    .end local v1    # "pinBytes":[B
    :pswitch_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 430
    .local v0, "passkey":I
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothDevice;->setPasskey(I)Z

    goto :goto_0

    .line 435
    .end local v0    # "passkey":I
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    goto :goto_0

    .line 444
    :pswitch_4
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->setRemoteOutOfBandData()Z

    goto :goto_0

    .line 418
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method private removePairingTimedoutMsg()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mHandler:Landroid/os/Handler;

    const v1, 0xea60

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 122
    return-void
.end method

.method private sendPairingTimedoutMsg()V
    .locals 4

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 119
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 395
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    if-eqz v2, :cond_0

    .line 396
    iget v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_2

    .line 397
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    const/16 v4, 0x10

    if-lt v3, v4, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 402
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 397
    goto :goto_0

    .line 399
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    if-lez v3, :cond_3

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 492
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 500
    if-eqz p2, :cond_0

    .line 501
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 505
    :goto_0
    return-void

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    .line 467
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mIsButtonPressed:Z

    if-eqz v0, :cond_0

    .line 469
    const-string v0, "BluetoothPairingDialog"

    const-string v1, "button already pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :goto_0
    return-void

    .line 472
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 485
    :goto_1
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->onCancel()V

    goto :goto_0

    .line 474
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 475
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->onPair(Ljava/lang/String;)V

    .line 479
    :goto_2
    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mIsButtonPressed:Z

    goto :goto_0

    .line 477
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->onPair(Ljava/lang/String;)V

    goto :goto_2

    .line 483
    :pswitch_1
    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mIsButtonPressed:Z

    goto :goto_1

    .line 472
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/high16 v6, -0x80000000

    .line 127
    invoke-super {p0, p1}, Lcn/nubia/commonui/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 129
    iput-boolean v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mIsButtonPressed:Z

    .line 131
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 132
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 134
    const-string v4, "BluetoothPairingDialog"

    const-string v5, "Error: this activity may be started only with intent android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->finish()V

    .line 218
    :goto_0
    return-void

    .line 140
    :cond_0
    const-string v4, "com.android.settings.bluetooth.pairing.keep_screen_on"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 141
    const-string v4, "BluetoothPairingDialog"

    const-string v5, "EXTRA_KEEP_SCREEN_ON"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const-string v4, "com.android.settings.bluetooth.pairing.keep_screen_on"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 143
    .local v1, "keep_screen_on":I
    if-lez v1, :cond_1

    .line 144
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x680001

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 153
    .end local v1    # "keep_screen_on":I
    :cond_1
    invoke-static {p0}, Lcom/android/settings_ex/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mBluetoothManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    .line 154
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mBluetoothManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    if-nez v4, :cond_2

    .line 155
    const-string v4, "BluetoothPairingDialog"

    const-string v5, "Error: BluetoothAdapter not supported by system"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->finish()V

    goto :goto_0

    .line 159
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mBluetoothManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mCachedDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    .line 161
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    iput-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 162
    const-string v4, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mType:I

    .line 164
    iget v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mType:I

    packed-switch v4, :pswitch_data_0

    .line 204
    const-string v4, "BluetoothPairingDialog"

    const-string v5, "Incorrect pairing type received, not showing any dialog"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :goto_1
    invoke-virtual {p0, v8}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->setFinishOnTouchOutside(Z)V

    .line 214
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 215
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 217
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->sendPairingTimedoutMsg()V

    goto :goto_0

    .line 168
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->createUserEntryDialog()V

    goto :goto_1

    .line 172
    :pswitch_1
    const-string v4, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 174
    .local v3, "passkey":I
    if-ne v3, v6, :cond_3

    .line 175
    const-string v4, "BluetoothPairingDialog"

    const-string v5, "Invalid Confirmation Passkey received, not showing any dialog"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 178
    :cond_3
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%06d"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    .line 179
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->createConfirmationDialog()V

    goto :goto_1

    .line 184
    .end local v3    # "passkey":I
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->createConsentDialog()V

    goto :goto_1

    .line 189
    :pswitch_3
    const-string v4, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 191
    .local v2, "pairingKey":I
    if-ne v2, v6, :cond_4

    .line 192
    const-string v4, "BluetoothPairingDialog"

    const-string v5, "Invalid Confirmation Passkey or PIN received, not showing any dialog"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 195
    :cond_4
    iget v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 196
    const-string v4, "%06d"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    .line 200
    :goto_2
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->createDisplayPasskeyOrPinDialog()V

    goto :goto_1

    .line 198
    :cond_5
    const-string v4, "%04d"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    goto :goto_2

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->removePairingTimedoutMsg()V

    .line 386
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 387
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->sendBroadcast(Landroid/content/Intent;)V

    .line 388
    invoke-super {p0}, Lcn/nubia/commonui/app/AlertActivity;->onDestroy()V

    .line 389
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 390
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 392
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 460
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 461
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->onCancel()V

    .line 463
    :cond_0
    invoke-super {p0, p1, p2}, Lcn/nubia/commonui/app/AlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 496
    return-void
.end method
