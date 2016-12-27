.class public final Lcom/android/settings_ex/bluetooth/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final mErrorListener:Lcom/android/settings_exlib/bluetooth/Utils$ErrorListener;

.field private static final mOnInitCallback:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lcom/android/settings_ex/bluetooth/Utils$1;

    invoke-direct {v0}, Lcom/android/settings_ex/bluetooth/Utils$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/bluetooth/Utils;->mErrorListener:Lcom/android/settings_exlib/bluetooth/Utils$ErrorListener;

    .line 152
    new-instance v0, Lcom/android/settings_ex/bluetooth/Utils$2;

    invoke-direct {v0}, Lcom/android/settings_ex/bluetooth/Utils$2;-><init>()V

    sput-object v0, Lcom/android/settings_ex/bluetooth/Utils;->mOnInitCallback:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method static synthetic access$000()Lcom/android/settings_exlib/bluetooth/Utils$ErrorListener;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/settings_ex/bluetooth/Utils;->mErrorListener:Lcom/android/settings_exlib/bluetooth/Utils$ErrorListener;

    return-object v0
.end method

.method public static getLocalBtManager(Landroid/content/Context;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    sget-object v0, Lcom/android/settings_ex/bluetooth/Utils;->mOnInitCallback:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;

    invoke-static {p0, v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    return-object v0
.end method

.method public static getSettingsDbData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setSettingsDbData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 166
    return-void
.end method

.method static showDisconnectDialog(Landroid/content/Context;Lcn/nubia/commonui/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dialog"    # Lcn/nubia/commonui/app/AlertDialog;
    .param p2, "disconnectListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "message"    # Ljava/lang/CharSequence;

    .prologue
    const v2, 0x104000a

    .line 67
    if-nez p1, :cond_0

    .line 68
    new-instance v1, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, p2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, p2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object p1

    .line 81
    :goto_0
    invoke-virtual {p1, p3}, Lcn/nubia/commonui/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {p1, p4}, Lcn/nubia/commonui/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {p1}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 84
    return-object p1

    .line 73
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    invoke-virtual {p1}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 77
    :cond_1
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 78
    .local v0, "okText":Ljava/lang/CharSequence;
    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0, p2}, Lcn/nubia/commonui/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method static showError(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "messageResId"    # I

    .prologue
    const v5, 0x7f0c004b

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 98
    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {p0, p2, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "message":Ljava/lang/String;
    const v2, 0x7f0c004c

    if-eq p2, v2, :cond_0

    const v2, 0x7f0c004e

    if-eq p2, v2, :cond_0

    const v2, 0x7f0c004d

    if-eq p2, v2, :cond_0

    if-ne p2, v5, :cond_2

    .line 114
    :cond_0
    const-string v2, "bt_key_pairing_reject"

    invoke-static {p0, v2}, Lcom/android/settings_ex/bluetooth/Utils;->getSettingsDbData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    const-string v2, "bt_key_pairing_reject"

    const-string v3, "0"

    invoke-static {p0, v2, v3}, Lcom/android/settings_ex/bluetooth/Utils;->setSettingsDbData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .end local v0    # "action":Ljava/lang/String;
    :goto_0
    return-void

    .line 119
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {p0, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .end local v0    # "action":Ljava/lang/String;
    :cond_2
    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static updateSearchIndex(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "screenTitle"    # Ljava/lang/String;
    .param p4, "iconResId"    # I
    .param p5, "enabled"    # Z

    .prologue
    .line 131
    new-instance v0, Lcom/android/settings_ex/search/SearchIndexableRaw;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 132
    .local v0, "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    iput-object p1, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->className:Ljava/lang/String;

    .line 133
    iput-object p2, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 134
    iput-object p3, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 135
    iput p4, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->iconResId:I

    .line 136
    iput-boolean p5, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->enabled:Z

    .line 138
    invoke-static {p0}, Lcom/android/settings_ex/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/Index;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/search/Index;->updateFromSearchIndexableData(Landroid/provider/SearchIndexableData;)V

    .line 139
    return-void
.end method
