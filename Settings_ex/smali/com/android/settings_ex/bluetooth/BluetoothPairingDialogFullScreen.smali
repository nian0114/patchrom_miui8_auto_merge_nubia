.class public Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;
.super Lcn/nubia/commonui/actionbar/app/ActionBarActivity;
.source "BluetoothPairingDialogFullScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mBluetoothManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

.field private mCachedDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

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
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;-><init>()V

    .line 80
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen$1;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method private createConfirmationDialog()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 346
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 347
    .local v0, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->createView()Landroid/view/View;

    move-result-object v2

    .line 350
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0c0207

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mCachedDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5, v6}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 353
    invoke-virtual {v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 354
    const v3, 0x7f0c0047

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 355
    const v3, 0x7f0c0049

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 356
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    .line 357
    .local v1, "dialog":Lcn/nubia/commonui/app/AlertDialog;
    invoke-virtual {v1, p0}, Lcn/nubia/commonui/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 358
    invoke-virtual {v1, v7}, Lcn/nubia/commonui/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 359
    return-void
.end method

.method private createConsentDialog()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 362
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 363
    .local v0, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->createView()Landroid/view/View;

    move-result-object v2

    .line 366
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0c0207

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mCachedDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5, v6}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 369
    invoke-virtual {v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 370
    const v3, 0x7f0c0047

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 371
    const v3, 0x7f0c0049

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 372
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    .line 373
    .local v1, "dialog":Lcn/nubia/commonui/app/AlertDialog;
    invoke-virtual {v1, p0}, Lcn/nubia/commonui/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 374
    invoke-virtual {v1, v7}, Lcn/nubia/commonui/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 375
    return-void
.end method

.method private createDisplayPasskeyOrPinDialog()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 378
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 379
    .local v0, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->createView()Landroid/view/View;

    move-result-object v3

    .line 382
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f0c0207

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mCachedDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6, v7}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 385
    invoke-virtual {v0, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 386
    const/high16 v4, 0x1040000

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 387
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    .line 388
    .local v1, "dialog":Lcn/nubia/commonui/app/AlertDialog;
    invoke-virtual {v1, p0}, Lcn/nubia/commonui/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 389
    invoke-virtual {v1, v8}, Lcn/nubia/commonui/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 393
    iget v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 394
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v9}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    iget v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mType:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 396
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mPairingKey:Ljava/lang/String;

    invoke-static {v4}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 397
    .local v2, "pinBytes":[B
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v2}, Landroid/bluetooth/BluetoothDevice;->setPin([B)Z

    goto :goto_0
.end method

.method private createPinEntryView()Landroid/view/View;
    .locals 13

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f04003e

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 211
    .local v7, "view":Landroid/view/View;
    const v8, 0x7f1200d7

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 212
    .local v6, "messageViewCaptionHint":Landroid/widget/TextView;
    const v8, 0x7f1200d9

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 213
    .local v5, "messageView2":Landroid/widget/TextView;
    const v8, 0x7f1200d8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 214
    .local v0, "alphanumericPin":Landroid/widget/CheckBox;
    const v8, 0x7f1200d9

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 216
    .local v1, "contactSharing":Landroid/widget/CheckBox;
    const v8, 0x7f0c0213

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mCachedDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v12, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11, v12}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 219
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 227
    :goto_0
    new-instance v8, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen$2;

    invoke-direct {v8, p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen$2;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;)V

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 237
    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v8

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v8

    const/16 v9, 0x408

    if-ne v8, v9, :cond_2

    .line 239
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 243
    :goto_1
    const v8, 0x7f1200d6

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mPairingView:Landroid/widget/EditText;

    .line 244
    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mPairingView:Landroid/widget/EditText;

    invoke-virtual {v8, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 245
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 248
    const v4, 0x7f0c020c

    .line 250
    .local v4, "messageIdHint":I
    iget v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mType:I

    sparse-switch v8, :sswitch_data_0

    .line 268
    const-string v8, "BluetoothPairingDialogFullScreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Incorrect pairing type for createPinEntryView: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v7, 0x0

    .line 278
    .end local v7    # "view":Landroid/view/View;
    :goto_2
    return-object v7

    .line 220
    .end local v4    # "messageIdHint":I
    .restart local v7    # "view":Landroid/view/View;
    :cond_0
    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 221
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 223
    :cond_1
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 224
    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    goto :goto_0

    .line 241
    :cond_2
    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    .line 252
    .restart local v4    # "messageIdHint":I
    :sswitch_0
    const v4, 0x7f0c020d

    .line 255
    :sswitch_1
    const v3, 0x7f0c020e

    .line 257
    .local v3, "messageId":I
    const/16 v2, 0x10

    .line 272
    .local v2, "maxLength":I
    :goto_3
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(I)V

    .line 273
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(I)V

    .line 274
    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mPairingView:Landroid/widget/EditText;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setInputType(I)V

    .line 275
    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mPairingView:Landroid/widget/EditText;

    const/4 v9, 0x1

    new-array v9, v9, [Landroid/text/InputFilter;

    const/4 v10, 0x0

    new-instance v11, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v11, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v11, v9, v10

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_2

    .line 261
    .end local v2    # "maxLength":I
    .end local v3    # "messageId":I
    :sswitch_2
    const v3, 0x7f0c020f

    .line 263
    .restart local v3    # "messageId":I
    const/4 v2, 0x6

    .line 264
    .restart local v2    # "maxLength":I
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_3

    .line 250
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method private createUserEntryDialog()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 192
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 193
    .local v0, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->createPinEntryView()Landroid/view/View;

    move-result-object v2

    .line 196
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0c0207

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mCachedDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5, v6}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 199
    invoke-virtual {v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 200
    const v3, 0x104000a

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 201
    const/high16 v3, 0x1040000

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 202
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    .line 203
    .local v1, "dialog":Lcn/nubia/commonui/app/AlertDialog;
    invoke-virtual {v1, p0}, Lcn/nubia/commonui/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 204
    invoke-virtual {v1, v7}, Lcn/nubia/commonui/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 205
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcn/nubia/commonui/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mOkButton:Landroid/widget/Button;

    .line 206
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 207
    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 14

    .prologue
    const/4 v7, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 282
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f04003d

    invoke-virtual {v8, v9, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 283
    .local v6, "view":Landroid/view/View;
    const v8, 0x7f1200d2

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 284
    .local v4, "pairingViewCaption":Landroid/widget/TextView;
    const v8, 0x7f1200d3

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 285
    .local v5, "pairingViewContent":Landroid/widget/TextView;
    const v8, 0x7f1200d4

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 286
    .local v2, "messagePairing":Landroid/widget/TextView;
    const v8, 0x7f1200d9

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 288
    .local v0, "contactSharing":Landroid/widget/CheckBox;
    const v8, 0x7f0c0213

    new-array v9, v13, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mCachedDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v11, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v10, v11}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {p0, v8, v9}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v8

    if-ne v8, v13, :cond_1

    .line 291
    invoke-virtual {v0, v13}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 299
    :goto_0
    new-instance v8, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen$3;

    invoke-direct {v8, p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen$3;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;)V

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 309
    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v8

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v8

    const/16 v9, 0x408

    if-ne v8, v9, :cond_3

    .line 311
    invoke-virtual {v0, v12}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 316
    :goto_1
    const/4 v1, 0x0

    .line 317
    .local v1, "messageCaption":Ljava/lang/String;
    const/4 v3, 0x0

    .line 318
    .local v3, "pairingContent":Ljava/lang/String;
    iget v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mType:I

    packed-switch v8, :pswitch_data_0

    .line 332
    const-string v8, "BluetoothPairingDialogFullScreen"

    const-string v9, "Incorrect pairing type received, not creating view"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    .line 342
    .end local v6    # "view":Landroid/view/View;
    :cond_0
    :goto_2
    return-object v6

    .line 292
    .end local v1    # "messageCaption":Ljava/lang/String;
    .end local v3    # "pairingContent":Ljava/lang/String;
    .restart local v6    # "view":Landroid/view/View;
    :cond_1
    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 293
    invoke-virtual {v0, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 295
    :cond_2
    invoke-virtual {v0, v13}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 296
    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8, v13}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    goto :goto_0

    .line 313
    :cond_3
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    .line 321
    .restart local v1    # "messageCaption":Ljava/lang/String;
    .restart local v3    # "pairingContent":Ljava/lang/String;
    :pswitch_0
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 323
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mPairingKey:Ljava/lang/String;

    .line 336
    :goto_3
    if-eqz v3, :cond_0

    .line 337
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 338
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 328
    :pswitch_2
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 318
    nop

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
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->cancelPairingUserInput()Z

    .line 459
    return-void
.end method

.method private onPair(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 423
    iget v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mType:I

    packed-switch v2, :pswitch_data_0

    .line 453
    const-string v2, "BluetoothPairingDialogFullScreen"

    const-string v3, "Incorrect pairing type received"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 426
    :pswitch_1
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 427
    .local v1, "pinBytes":[B
    if-eqz v1, :cond_0

    .line 430
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothDevice;->setPin([B)Z

    goto :goto_0

    .line 434
    .end local v1    # "pinBytes":[B
    :pswitch_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 435
    .local v0, "passkey":I
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothDevice;->setPasskey(I)Z

    goto :goto_0

    .line 440
    .end local v0    # "passkey":I
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    goto :goto_0

    .line 449
    :pswitch_4
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->setRemoteOutOfBandData()Z

    goto :goto_0

    .line 423
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


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 413
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mOkButton:Landroid/widget/Button;

    if-eqz v2, :cond_0

    .line 414
    iget v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mType:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_2

    .line 415
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mOkButton:Landroid/widget/Button;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    const/16 v4, 0x10

    if-lt v3, v4, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 420
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 415
    goto :goto_0

    .line 417
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mOkButton:Landroid/widget/Button;

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
    .line 496
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 504
    if-eqz p2, :cond_0

    .line 505
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mPairingView:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 509
    :goto_0
    return-void

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mPairingView:Landroid/widget/EditText;

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

    .line 469
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mIsButtonPressed:Z

    if-eqz v0, :cond_0

    .line 471
    const-string v0, "BluetoothPairingDialogFullScreen"

    const-string v1, "button already pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :goto_0
    return-void

    .line 474
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 488
    :goto_1
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->onCancel()V

    .line 489
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->finish()V

    goto :goto_0

    .line 476
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mPairingView:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 477
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mPairingView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->onPair(Ljava/lang/String;)V

    .line 481
    :goto_2
    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mIsButtonPressed:Z

    .line 482
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->finish()V

    goto :goto_0

    .line 479
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->onPair(Ljava/lang/String;)V

    goto :goto_2

    .line 486
    :pswitch_1
    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mIsButtonPressed:Z

    goto :goto_1

    .line 474
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/high16 v5, -0x80000000

    .line 102
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    iput-boolean v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mIsButtonPressed:Z

    .line 105
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x680081

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 113
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 115
    const-string v3, "BluetoothPairingDialogFullScreen"

    const-string v4, "Error: this activity may be started only with intent android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->finish()V

    .line 182
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-static {p0}, Lcom/android/settings_ex/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mBluetoothManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    .line 122
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mBluetoothManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    if-nez v3, :cond_1

    .line 123
    const-string v3, "BluetoothPairingDialogFullScreen"

    const-string v4, "Error: BluetoothAdapter not supported by system"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->finish()V

    goto :goto_0

    .line 127
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mBluetoothManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mCachedDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    .line 129
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    iput-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 130
    const-string v3, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mType:I

    .line 132
    iget v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mType:I

    packed-switch v3, :pswitch_data_0

    .line 172
    const-string v3, "BluetoothPairingDialogFullScreen"

    const-string v4, "Incorrect pairing type received, not showing any dialog"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 181
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 136
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->createUserEntryDialog()V

    goto :goto_1

    .line 140
    :pswitch_1
    const-string v3, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 142
    .local v2, "passkey":I
    if-ne v2, v5, :cond_2

    .line 143
    const-string v3, "BluetoothPairingDialogFullScreen"

    const-string v4, "Invalid Confirmation Passkey received, not showing any dialog"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 146
    :cond_2
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%06d"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mPairingKey:Ljava/lang/String;

    .line 147
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->createConfirmationDialog()V

    goto :goto_1

    .line 152
    .end local v2    # "passkey":I
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->createConsentDialog()V

    goto :goto_1

    .line 157
    :pswitch_3
    const-string v3, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 159
    .local v1, "pairingKey":I
    if-ne v1, v5, :cond_3

    .line 160
    const-string v3, "BluetoothPairingDialogFullScreen"

    const-string v4, "Invalid Confirmation Passkey or PIN received, not showing any dialog"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 163
    :cond_3
    iget v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    .line 164
    const-string v3, "%06d"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mPairingKey:Ljava/lang/String;

    .line 168
    :goto_2
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->createDisplayPasskeyOrPinDialog()V

    goto :goto_1

    .line 166
    :cond_4
    const-string v3, "%04d"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mPairingKey:Ljava/lang/String;

    goto :goto_2

    .line 132
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
    .line 404
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 405
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->sendBroadcast(Landroid/content/Intent;)V

    .line 406
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onDestroy()V

    .line 407
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 408
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 410
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 185
    const-string v1, "BluetoothPairingDialogFullScreen"

    const-string v2, "onDismiss "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->sendBroadcast(Landroid/content/Intent;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->finish()V

    .line 189
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 462
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 463
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialogFullScreen;->onCancel()V

    .line 465
    :cond_0
    invoke-super {p0, p1, p2}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

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
    .line 500
    return-void
.end method
