.class public final Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;
.super Landroid/preference/Preference;
.source "BluetoothDevicePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice$Callback;


# static fields
.field private static sDimAlpha:I


# instance fields
.field private final mBluetoothReceiver:Landroid/content/BroadcastReceiver;

.field private final mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

.field private mContext:Landroid/content/Context;

.field private mDisconnectDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private mOnSettingsClickListener:Landroid/view/View$OnClickListener;

.field private mOriWidgetLayoutResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/high16 v0, -0x80000000

    sput v0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cachedDevice"    # Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 70
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mOriWidgetLayoutResId:I

    .line 304
    new-instance v2, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference$2;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    sget v2, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_0

    .line 83
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 84
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010033

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 85
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    .line 88
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_0
    iput-object p2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    .line 90
    const v2, 0x7f040123

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->setLayoutResource(I)V

    .line 92
    invoke-virtual {p2}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    .line 93
    const-string v2, "user"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 94
    .local v1, "um":Landroid/os/UserManager;
    const-string v2, "no_config_bluetooth"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getWidgetLayoutResource()I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mOriWidgetLayoutResId:I

    .line 96
    const v2, 0x7f040120

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->setWidgetLayoutResource(I)V

    .line 100
    .end local v1    # "um":Landroid/os/UserManager;
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2, p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->onDeviceAttributesChanged()V

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)Lcn/nubia/commonui/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Lcn/nubia/commonui/app/AlertDialog;

    return-object v0
.end method

.method private askDisconnect()V
    .locals 9

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mContext:Landroid/content/Context;

    .line 216
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 218
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mContext:Landroid/content/Context;

    const v6, 0x7f0c00bf

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 220
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mContext:Landroid/content/Context;

    const v6, 0x7f0c00b7

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "message":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mContext:Landroid/content/Context;

    const v6, 0x7f0c00b6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 223
    .local v4, "title":Ljava/lang/String;
    new-instance v1, Landroid/content/IntentFilter;

    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 224
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 226
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference$1;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V

    .line 240
    .local v0, "disconnectListener":Landroid/content/DialogInterface$OnClickListener;
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-static {v5, v6, v0, v4, v7}, Lcom/android/settings_ex/bluetooth/Utils;->showDisconnectDialog(Landroid/content/Context;Lcn/nubia/commonui/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 242
    return-void
.end method

.method private getBtClassDrawable()I
    .locals 7

    .prologue
    .line 263
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 264
    .local v0, "btClass":Landroid/bluetooth/BluetoothClass;
    if-eqz v0, :cond_1

    .line 265
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 285
    :goto_0
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v3

    .line 286
    .local v3, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .line 287
    .local v2, "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    invoke-interface {v2, v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;)I

    move-result v4

    .line 288
    .local v4, "resId":I
    if-eqz v4, :cond_0

    .line 301
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    .end local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;>;"
    .end local v4    # "resId":I
    :goto_1
    return v4

    .line 267
    :sswitch_0
    const v4, 0x7f0200cc

    goto :goto_1

    .line 270
    :sswitch_1
    const v4, 0x7f0200c6

    goto :goto_1

    .line 273
    :sswitch_2
    invoke-static {v0}, Lcom/android/settings_exlib/bluetooth/HidProfile;->getHidClassDrawable(Landroid/bluetooth/BluetoothClass;)I

    move-result v4

    goto :goto_1

    .line 276
    :sswitch_3
    const v4, 0x7f0200ca

    goto :goto_1

    .line 282
    :cond_1
    const-string v5, "BluetoothDevicePreference"

    const-string v6, "mBtClass is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 292
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;>;"
    :cond_2
    if-eqz v0, :cond_4

    .line 293
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 294
    const v4, 0x7f0200c8

    goto :goto_1

    .line 297
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 298
    const v4, 0x7f0200c9

    goto :goto_1

    .line 301
    :cond_4
    const v4, 0x7f020121

    goto :goto_1

    .line 265
    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
        0x500 -> :sswitch_2
        0x600 -> :sswitch_3
    .end sparse-switch
.end method

.method private pair()V
    .locals 5

    .prologue
    .line 245
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->startPairing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0c004b

    invoke-static {v2, v3, v4}, Lcom/android/settings_ex/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;I)V

    .line 260
    :goto_0
    return-void

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 251
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/settings_ex/search/SearchIndexableRaw;

    invoke-direct {v1, v0}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 252
    .local v1, "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    const-class v2, Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings_ex/search/SearchIndexableRaw;->className:Ljava/lang/String;

    .line 253
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 254
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0204

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 255
    const v2, 0x7f020121

    iput v2, v1, Lcom/android/settings_ex/search/SearchIndexableRaw;->iconResId:I

    .line 256
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/settings_ex/search/SearchIndexableRaw;->enabled:Z

    .line 258
    invoke-static {v0}, Lcom/android/settings_ex/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/Index;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/search/Index;->updateFromSearchIndexableData(Landroid/provider/SearchIndexableData;)V

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 2
    .param p1, "another"    # Landroid/preference/Preference;

    .prologue
    .line 192
    instance-of v0, p1, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_0

    .line 194
    invoke-super {p0, p1}, Landroid/preference/Preference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    .line 197
    .end local p1    # "another":Landroid/preference/Preference;
    :goto_0
    return v0

    .restart local p1    # "another":Landroid/preference/Preference;
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    check-cast p1, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .end local p1    # "another":Landroid/preference/Preference;
    iget-object v1, p1, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->compareTo(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 54
    check-cast p1, Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 178
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_1

    .line 179
    :cond_0
    const/4 v0, 0x0

    .line 181
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    check-cast p1, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method getCachedDevice()Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->hashCode()I

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 153
    const-string v1, "bt_checkbox"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 154
    const-string v1, "bt_checkbox"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->setDependency(Ljava/lang/String;)V

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 158
    const v1, 0x7f1202c9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 160
    .local v0, "deviceDetails":Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 166
    .end local v0    # "deviceDetails":Landroid/widget/ImageView;
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 167
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 174
    :cond_0
    return-void
.end method

.method onClicked()V
    .locals 3

    .prologue
    .line 202
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    .line 204
    .local v0, "bondState":I
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->askDisconnect()V

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 207
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->connect(Z)V

    goto :goto_0

    .line 208
    :cond_2
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->pair()V

    goto :goto_0
.end method

.method public onDeviceAttributesChanged()V
    .locals 3

    .prologue
    .line 129
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getConnectionSummary()I

    move-result v1

    .line 132
    .local v1, "summaryResId":I
    if-eqz v1, :cond_1

    .line 133
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->setSummary(I)V

    .line 138
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getBtClassDrawable()I

    move-result v0

    .line 139
    .local v0, "iconResId":I
    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->setIcon(I)V

    .line 144
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->setEnabled(Z)V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->notifyHierarchyChanged()V

    .line 148
    return-void

    .line 135
    .end local v0    # "iconResId":I
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 144
    .restart local v0    # "iconResId":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected onPrepareForRemoval()V
    .locals 1

    .prologue
    .line 115
    invoke-super {p0}, Landroid/preference/Preference;->onPrepareForRemoval()V

    .line 116
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 117
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 121
    :cond_0
    return-void
.end method

.method public restoreOriWidgetLayoutResource()V
    .locals 3

    .prologue
    .line 72
    const-string v0, "zhb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreOriWidgetLayoutResource : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mOriWidgetLayoutResId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mOriWidgetLayoutResId:I

    if-lez v0, :cond_0

    .line 74
    iget v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mOriWidgetLayoutResId:I

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->setWidgetLayoutResource(I)V

    .line 76
    :cond_0
    return-void
.end method

.method public setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    .line 111
    return-void
.end method
