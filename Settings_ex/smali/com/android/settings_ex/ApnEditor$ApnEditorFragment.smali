.class public Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "ApnEditor.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ApnEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApnEditorFragment"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sNotSet:Ljava/lang/String;

.field private static final sProjection:[Ljava/lang/String;


# instance fields
.field private mApn:Lcn/nubia/commonui/preference/EditTextPreference;

.field private mApnType:Lcn/nubia/commonui/preference/EditTextPreference;

.field private mAuthType:Lcn/nubia/commonui/preference/ListPreference;

.field private mBearerInitialVal:I

.field private mBearerMulti:Lcn/nubia/commonui/preference/MultiSelectListPreference;

.field private mCarrierEnabled:Landroid/preference/nubia/CheckBoxPreference;

.field private mCurMcc:Ljava/lang/String;

.field private mCurMnc:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mDisableEditor:Z

.field private mFirstTime:Z

.field private mMcc:Lcn/nubia/commonui/preference/EditTextPreference;

.field private mMmsPort:Lcn/nubia/commonui/preference/EditTextPreference;

.field private mMmsProxy:Lcn/nubia/commonui/preference/EditTextPreference;

.field private mMmsc:Lcn/nubia/commonui/preference/EditTextPreference;

.field private mMnc:Lcn/nubia/commonui/preference/EditTextPreference;

.field private mMvnoMatchData:Lcn/nubia/commonui/preference/EditTextPreference;

.field private mMvnoMatchDataStr:Ljava/lang/String;

.field private mMvnoType:Lcn/nubia/commonui/preference/ListPreference;

.field private mMvnoTypeStr:Ljava/lang/String;

.field private mName:Lcn/nubia/commonui/preference/EditTextPreference;

.field private mNewApn:Z

.field private mPassword:Lcn/nubia/commonui/preference/EditTextPreference;

.field private mPort:Lcn/nubia/commonui/preference/EditTextPreference;

.field private mPppNumber:Lcn/nubia/commonui/preference/EditTextPreference;

.field private mProtocol:Lcn/nubia/commonui/preference/ListPreference;

.field private mProxy:Lcn/nubia/commonui/preference/EditTextPreference;

.field private mRes:Landroid/content/res/Resources;

.field private mRoamingProtocol:Lcn/nubia/commonui/preference/ListPreference;

.field private mServer:Lcn/nubia/commonui/preference/EditTextPreference;

.field private mSubId:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUri:Landroid/net/Uri;

.field private mUser:Lcn/nubia/commonui/preference/EditTextPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 114
    const-class v0, Lcom/android/settings_ex/ApnEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->TAG:Ljava/lang/String;

    .line 172
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "apn"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "proxy"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "port"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "user"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "server"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "password"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mmsc"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mcc"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mnc"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "numeric"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mmsproxy"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mmsport"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "authtype"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "carrier_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "bearer"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "roaming_protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "mvno_type"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "mvno_match_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 154
    iput-boolean v0, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mDisableEditor:Z

    .line 163
    iput v0, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mBearerInitialVal:I

    return-void
.end method

.method private bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 524
    .local p1, "raw":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mRes:Landroid/content/res/Resources;

    const v8, 0x7f0a002c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 525
    .local v6, "values":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 526
    .local v4, "retVal":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 527
    .local v2, "first":Z
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 528
    .local v0, "bearer":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mBearerMulti:Lcn/nubia/commonui/preference/MultiSelectListPreference;

    invoke-virtual {v7, v0}, Lcn/nubia/commonui/preference/MultiSelectListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 530
    .local v1, "bearerIndex":I
    if-eqz v2, :cond_0

    .line 531
    :try_start_0
    aget-object v7, v6, v1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    const/4 v2, 0x0

    goto :goto_0

    .line 534
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v6, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 536
    :catch_0
    move-exception v7

    goto :goto_0

    .line 540
    .end local v0    # "bearer":Ljava/lang/String;
    .end local v1    # "bearerIndex":I
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 541
    .local v5, "val":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 544
    .end local v5    # "val":Ljava/lang/String;
    :goto_1
    return-object v5

    .restart local v5    # "val":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 827
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 828
    :cond_0
    const-string p1, ""

    .line 830
    .end local p1    # "value":Ljava/lang/String;
    :cond_1
    return-object p1
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 819
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 820
    :cond_0
    sget-object p1, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->sNotSet:Ljava/lang/String;

    .line 822
    .end local p1    # "value":Ljava/lang/String;
    :cond_1
    return-object p1
.end method

.method private deleteApn()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 802
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 803
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->finish()V

    .line 804
    return-void
.end method

.method private fillUi()V
    .locals 14

    .prologue
    .line 346
    iget-boolean v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mFirstTime:Z

    if-eqz v11, :cond_4

    .line 347
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mFirstTime:Z

    .line 348
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v12, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mSubId:I

    invoke-virtual {v11, v12}, Landroid/telephony/TelephonyManager;->getIccOperatorNumericForData(I)Ljava/lang/String;

    move-result-object v8

    .line 350
    .local v8, "numeric":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mName:Lcn/nubia/commonui/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 351
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mApn:Lcn/nubia/commonui/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x2

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 352
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mProxy:Lcn/nubia/commonui/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x3

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 353
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mPort:Lcn/nubia/commonui/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x4

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 354
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mUser:Lcn/nubia/commonui/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x5

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 355
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mServer:Lcn/nubia/commonui/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x6

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 356
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mPassword:Lcn/nubia/commonui/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x7

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 357
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMmsProxy:Lcn/nubia/commonui/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0xc

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 358
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMmsPort:Lcn/nubia/commonui/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0xd

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 359
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMmsc:Lcn/nubia/commonui/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0x8

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 360
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMcc:Lcn/nubia/commonui/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0x9

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 361
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMnc:Lcn/nubia/commonui/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0xa

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 362
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mApnType:Lcn/nubia/commonui/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0xf

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 363
    iget-boolean v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mNewApn:Z

    if-eqz v11, :cond_0

    .line 365
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x4

    if-le v11, v12, :cond_0

    .line 367
    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 369
    .local v6, "mcc":Ljava/lang/String;
    const/4 v11, 0x3

    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 371
    .local v7, "mnc":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMcc:Lcn/nubia/commonui/preference/EditTextPreference;

    invoke-virtual {v11, v6}, Lcn/nubia/commonui/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 372
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMnc:Lcn/nubia/commonui/preference/EditTextPreference;

    invoke-virtual {v11, v7}, Lcn/nubia/commonui/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 373
    iput-object v7, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mCurMnc:Ljava/lang/String;

    .line 374
    iput-object v6, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mCurMcc:Ljava/lang/String;

    .line 377
    .end local v6    # "mcc":Ljava/lang/String;
    .end local v7    # "mnc":Ljava/lang/String;
    :cond_0
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0xe

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 378
    .local v0, "authVal":I
    const/4 v11, -0x1

    if-eq v0, v11, :cond_6

    .line 379
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mAuthType:Lcn/nubia/commonui/preference/ListPreference;

    invoke-virtual {v11, v0}, Lcn/nubia/commonui/preference/ListPreference;->setValueIndex(I)V

    .line 384
    :goto_0
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mProtocol:Lcn/nubia/commonui/preference/ListPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0x10

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 385
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mRoamingProtocol:Lcn/nubia/commonui/preference/ListPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0x13

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 386
    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mCarrierEnabled:Landroid/preference/nubia/CheckBoxPreference;

    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0x11

    invoke-interface {v11, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v13, 0x1

    if-ne v11, v13, :cond_7

    const/4 v11, 0x1

    :goto_1
    invoke-virtual {v12, v11}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 387
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0x12

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mBearerInitialVal:I

    .line 389
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 391
    .local v3, "bearers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 396
    .local v2, "bearerBitmask":I
    if-nez v2, :cond_8

    .line 397
    iget v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mBearerInitialVal:I

    if-nez v11, :cond_1

    .line 398
    const-string v11, "0"

    invoke-virtual {v3, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 411
    :cond_1
    iget v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mBearerInitialVal:I

    if-eqz v11, :cond_2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mBearerInitialVal:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 413
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mBearerInitialVal:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 415
    :cond_2
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mBearerMulti:Lcn/nubia/commonui/preference/MultiSelectListPreference;

    invoke-virtual {v11, v3}, Lcn/nubia/commonui/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 417
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMvnoType:Lcn/nubia/commonui/preference/ListPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0x14

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 418
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMvnoMatchData:Lcn/nubia/commonui/preference/EditTextPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/preference/EditTextPreference;->setEnabled(Z)V

    .line 419
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMvnoMatchData:Lcn/nubia/commonui/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0x15

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 420
    iget-boolean v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mNewApn:Z

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMvnoTypeStr:Ljava/lang/String;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMvnoMatchDataStr:Ljava/lang/String;

    if-eqz v11, :cond_3

    .line 421
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMvnoType:Lcn/nubia/commonui/preference/ListPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMvnoTypeStr:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 422
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMvnoMatchData:Lcn/nubia/commonui/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMvnoMatchDataStr:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 425
    :cond_3
    const/4 v9, 0x0

    .line 430
    .local v9, "pppNumber":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mPppNumber:Lcn/nubia/commonui/preference/EditTextPreference;

    invoke-virtual {v11, v9}, Lcn/nubia/commonui/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 431
    if-nez v9, :cond_4

    .line 432
    iget-boolean v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mNewApn:Z

    if-nez v11, :cond_9

    .line 433
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mPppNumber:Lcn/nubia/commonui/preference/EditTextPreference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 440
    .end local v0    # "authVal":I
    .end local v2    # "bearerBitmask":I
    .end local v3    # "bearers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v8    # "numeric":Ljava/lang/String;
    .end local v9    # "pppNumber":Ljava/lang/String;
    :cond_4
    :goto_2
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mName:Lcn/nubia/commonui/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mName:Lcn/nubia/commonui/preference/EditTextPreference;

    invoke-virtual {v12}, Lcn/nubia/commonui/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 441
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mApn:Lcn/nubia/commonui/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mApn:Lcn/nubia/commonui/preference/EditTextPreference;

    invoke-virtual {v12}, Lcn/nubia/commonui/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 442
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mProxy:Lcn/nubia/commonui/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mProxy:Lcn/nubia/commonui/preference/EditTextPreference;

    invoke-virtual {v12}, Lcn/nubia/commonui/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 443
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mPort:Lcn/nubia/commonui/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mPort:Lcn/nubia/commonui/preference/EditTextPreference;

    invoke-virtual {v12}, Lcn/nubia/commonui/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 444
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mUser:Lcn/nubia/commonui/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mUser:Lcn/nubia/commonui/preference/EditTextPreference;

    invoke-virtual {v12}, Lcn/nubia/commonui/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 445
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mServer:Lcn/nubia/commonui/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mServer:Lcn/nubia/commonui/preference/EditTextPreference;

    invoke-virtual {v12}, Lcn/nubia/commonui/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 446
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mPassword:Lcn/nubia/commonui/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mPassword:Lcn/nubia/commonui/preference/EditTextPreference;

    invoke-virtual {v12}, Lcn/nubia/commonui/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 447
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMmsProxy:Lcn/nubia/commonui/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMmsProxy:Lcn/nubia/commonui/preference/EditTextPreference;

    invoke-virtual {v12}, Lcn/nubia/commonui/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 448
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMmsPort:Lcn/nubia/commonui/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMmsPort:Lcn/nubia/commonui/preference/EditTextPreference;

    invoke-virtual {v12}, Lcn/nubia/commonui/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMmsc:Lcn/nubia/commonui/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMmsc:Lcn/nubia/commonui/preference/EditTextPreference;

    invoke-virtual {v12}, Lcn/nubia/commonui/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 450
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMcc:Lcn/nubia/commonui/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMcc:Lcn/nubia/commonui/preference/EditTextPreference;

    invoke-virtual {v12}, Lcn/nubia/commonui/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 451
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMnc:Lcn/nubia/commonui/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMnc:Lcn/nubia/commonui/preference/EditTextPreference;

    invoke-virtual {v12}, Lcn/nubia/commonui/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mApnType:Lcn/nubia/commonui/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mApnType:Lcn/nubia/commonui/preference/EditTextPreference;

    invoke-virtual {v12}, Lcn/nubia/commonui/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mPppNumber:Lcn/nubia/commonui/preference/EditTextPreference;

    invoke-virtual {v11}, Lcn/nubia/commonui/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    .line 455
    .restart local v9    # "pppNumber":Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 458
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mPppNumber:Lcn/nubia/commonui/preference/EditTextPreference;

    invoke-direct {p0, v9}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 461
    :cond_5
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mAuthType:Lcn/nubia/commonui/preference/ListPreference;

    invoke-virtual {v11}, Lcn/nubia/commonui/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, "authVal":Ljava/lang/String;
    if-eqz v0, :cond_a

    .line 463
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 464
    .local v1, "authValIndex":I
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mAuthType:Lcn/nubia/commonui/preference/ListPreference;

    invoke-virtual {v11, v1}, Lcn/nubia/commonui/preference/ListPreference;->setValueIndex(I)V

    .line 466
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mRes:Landroid/content/res/Resources;

    const v12, 0x7f0a0028

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 467
    .local v10, "values":[Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mAuthType:Lcn/nubia/commonui/preference/ListPreference;

    aget-object v12, v10, v1

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 472
    .end local v1    # "authValIndex":I
    .end local v10    # "values":[Ljava/lang/String;
    :goto_3
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mProtocol:Lcn/nubia/commonui/preference/ListPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mProtocol:Lcn/nubia/commonui/preference/ListPreference;

    invoke-virtual {v12}, Lcn/nubia/commonui/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mProtocol:Lcn/nubia/commonui/preference/ListPreference;

    invoke-direct {p0, v12, v13}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->protocolDescription(Ljava/lang/String;Lcn/nubia/commonui/preference/ListPreference;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 474
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mRoamingProtocol:Lcn/nubia/commonui/preference/ListPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mRoamingProtocol:Lcn/nubia/commonui/preference/ListPreference;

    invoke-virtual {v12}, Lcn/nubia/commonui/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mRoamingProtocol:Lcn/nubia/commonui/preference/ListPreference;

    invoke-direct {p0, v12, v13}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->protocolDescription(Ljava/lang/String;Lcn/nubia/commonui/preference/ListPreference;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 476
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mBearerMulti:Lcn/nubia/commonui/preference/MultiSelectListPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mBearerMulti:Lcn/nubia/commonui/preference/MultiSelectListPreference;

    invoke-virtual {v12}, Lcn/nubia/commonui/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/preference/MultiSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 478
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMvnoType:Lcn/nubia/commonui/preference/ListPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMvnoType:Lcn/nubia/commonui/preference/ListPreference;

    invoke-virtual {v12}, Lcn/nubia/commonui/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 480
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMvnoMatchData:Lcn/nubia/commonui/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMvnoMatchData:Lcn/nubia/commonui/preference/EditTextPreference;

    invoke-virtual {v12}, Lcn/nubia/commonui/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 482
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f10000e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 483
    .local v4, "ceEditable":Z
    if-eqz v4, :cond_b

    .line 484
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mCarrierEnabled:Landroid/preference/nubia/CheckBoxPreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 488
    :goto_4
    return-void

    .line 381
    .end local v4    # "ceEditable":Z
    .end local v9    # "pppNumber":Ljava/lang/String;
    .local v0, "authVal":I
    .restart local v8    # "numeric":Ljava/lang/String;
    :cond_6
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mAuthType:Lcn/nubia/commonui/preference/ListPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 386
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 401
    .restart local v2    # "bearerBitmask":I
    .restart local v3    # "bearers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_8
    const/4 v5, 0x1

    .line 402
    .local v5, "i":I
    :goto_5
    if-eqz v2, :cond_1

    .line 406
    shr-int/lit8 v2, v2, 0x1

    .line 407
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 434
    .end local v5    # "i":I
    .restart local v9    # "pppNumber":Ljava/lang/String;
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f100010

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 435
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mPppNumber:Lcn/nubia/commonui/preference/EditTextPreference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 469
    .end local v2    # "bearerBitmask":I
    .end local v3    # "bearers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v8    # "numeric":Ljava/lang/String;
    .local v0, "authVal":Ljava/lang/String;
    :cond_a
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mAuthType:Lcn/nubia/commonui/preference/ListPreference;

    sget-object v12, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->sNotSet:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 486
    .restart local v4    # "ceEditable":Z
    :cond_b
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mCarrierEnabled:Landroid/preference/nubia/CheckBoxPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_4
.end method

.method private getErrorMsg()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 751
    const/4 v1, 0x0

    .line 753
    .local v1, "errorMsg":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mName:Lcn/nubia/commonui/preference/EditTextPreference;

    invoke-virtual {v5}, Lcn/nubia/commonui/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 754
    .local v4, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mApn:Lcn/nubia/commonui/preference/EditTextPreference;

    invoke-virtual {v5}, Lcn/nubia/commonui/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 755
    .local v0, "apn":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMcc:Lcn/nubia/commonui/preference/EditTextPreference;

    invoke-virtual {v5}, Lcn/nubia/commonui/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 756
    .local v2, "mcc":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMnc:Lcn/nubia/commonui/preference/EditTextPreference;

    invoke-virtual {v5}, Lcn/nubia/commonui/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 758
    .local v3, "mnc":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_1

    .line 759
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c045b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 768
    :cond_0
    :goto_0
    return-object v1

    .line 760
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_2

    .line 761
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c045c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 762
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    .line 763
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c045d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 764
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const v6, 0xfffe

    and-int/2addr v5, v6

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 765
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c045e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private mvnoDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 549
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMvnoType:Lcn/nubia/commonui/preference/ListPreference;

    invoke-virtual {v6, p1}, Lcn/nubia/commonui/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 550
    .local v1, "mvnoIndex":I
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMvnoType:Lcn/nubia/commonui/preference/ListPreference;

    invoke-virtual {v6}, Lcn/nubia/commonui/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 552
    .local v3, "oldValue":Ljava/lang/String;
    const/4 v6, -0x1

    if-ne v1, v6, :cond_0

    .line 575
    :goto_0
    return-object v5

    .line 555
    :cond_0
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0a002e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 556
    .local v4, "values":[Ljava/lang/String;
    aget-object v6, v4, v1

    const-string v7, "None"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 557
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMvnoMatchData:Lcn/nubia/commonui/preference/EditTextPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcn/nubia/commonui/preference/EditTextPreference;->setEnabled(Z)V

    .line 561
    :goto_1
    if-eqz p1, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 562
    aget-object v6, v4, v1

    const-string v7, "SPN"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 563
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMvnoMatchData:Lcn/nubia/commonui/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcn/nubia/commonui/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 573
    :cond_1
    :goto_2
    :try_start_0
    aget-object v5, v4, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 559
    :cond_2
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMvnoMatchData:Lcn/nubia/commonui/preference/EditTextPreference;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcn/nubia/commonui/preference/EditTextPreference;->setEnabled(Z)V

    goto :goto_1

    .line 564
    :cond_3
    aget-object v6, v4, v1

    const-string v7, "IMSI"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 565
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v7, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mSubId:I

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getIccOperatorNumericForData(I)Ljava/lang/String;

    move-result-object v2

    .line 566
    .local v2, "numeric":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMvnoMatchData:Lcn/nubia/commonui/preference/EditTextPreference;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcn/nubia/commonui/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_2

    .line 567
    .end local v2    # "numeric":Ljava/lang/String;
    :cond_4
    aget-object v6, v4, v1

    const-string v7, "GID"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 568
    iget-object v6, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMvnoMatchData:Lcn/nubia/commonui/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcn/nubia/commonui/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_2

    .line 574
    :catch_0
    move-exception v0

    .line 575
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto/16 :goto_0
.end method

.method private protocolDescription(Ljava/lang/String;Lcn/nubia/commonui/preference/ListPreference;)Ljava/lang/String;
    .locals 6
    .param p1, "raw"    # Ljava/lang/String;
    .param p2, "protocol"    # Lcn/nubia/commonui/preference/ListPreference;

    .prologue
    const/4 v3, 0x0

    .line 496
    invoke-virtual {p2, p1}, Lcn/nubia/commonui/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 497
    .local v1, "protocolIndex":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 504
    :goto_0
    return-object v3

    .line 500
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0a002a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 502
    .local v2, "values":[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 503
    :catch_0
    move-exception v0

    .line 504
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method private starify(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 807
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 808
    :cond_0
    sget-object v2, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->sNotSet:Ljava/lang/String;

    .line 814
    :goto_0
    return-object v2

    .line 810
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [C

    .line 811
    .local v1, "password":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 812
    const/16 v2, 0x2a

    aput-char v2, v1, v0

    .line 811
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 814
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method private validateAndSave(Z)Z
    .locals 17
    .param p1, "force"    # Z

    .prologue
    .line 644
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mDisableEditor:Z

    if-eqz v13, :cond_0

    .line 645
    sget-object v13, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->TAG:Ljava/lang/String;

    const-string v14, "Form is disabled. Nothing to save."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const/4 v13, 0x1

    .line 746
    :goto_0
    return v13

    .line 649
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mName:Lcn/nubia/commonui/preference/EditTextPreference;

    invoke-virtual {v13}, Lcn/nubia/commonui/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 650
    .local v10, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mApn:Lcn/nubia/commonui/preference/EditTextPreference;

    invoke-virtual {v13}, Lcn/nubia/commonui/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 651
    .local v1, "apn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMcc:Lcn/nubia/commonui/preference/EditTextPreference;

    invoke-virtual {v13}, Lcn/nubia/commonui/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 652
    .local v8, "mcc":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMnc:Lcn/nubia/commonui/preference/EditTextPreference;

    invoke-virtual {v13}, Lcn/nubia/commonui/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 654
    .local v9, "mnc":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->getErrorMsg()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1

    if-nez p1, :cond_1

    .line 655
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->showDialog(I)V

    .line 656
    const/4 v13, 0x0

    goto :goto_0

    .line 659
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-nez v13, :cond_2

    .line 660
    sget-object v13, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->TAG:Ljava/lang/String;

    const-string v14, "Could not go to the first row in the Cursor when saving data."

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const/4 v13, 0x0

    goto :goto_0

    .line 666
    :cond_2
    if-eqz p1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mNewApn:Z

    if-eqz v13, :cond_3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x1

    if-ge v13, v14, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x1

    if-ge v13, v14, :cond_3

    .line 667
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mUri:Landroid/net/Uri;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 668
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 671
    :cond_3
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 675
    .local v12, "values":Landroid/content/ContentValues;
    const-string v13, "name"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x1

    if-ge v14, v15, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c07bb

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .end local v10    # "name":Ljava/lang/String;
    :cond_4
    invoke-virtual {v12, v13, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    const-string v13, "apn"

    invoke-virtual {v12, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    const-string v13, "proxy"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mProxy:Lcn/nubia/commonui/preference/EditTextPreference;

    invoke-virtual {v14}, Lcn/nubia/commonui/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    const-string v13, "port"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mPort:Lcn/nubia/commonui/preference/EditTextPreference;

    invoke-virtual {v14}, Lcn/nubia/commonui/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const-string v13, "mmsproxy"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMmsProxy:Lcn/nubia/commonui/preference/EditTextPreference;

    invoke-virtual {v14}, Lcn/nubia/commonui/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    const-string v13, "mmsport"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMmsPort:Lcn/nubia/commonui/preference/EditTextPreference;

    invoke-virtual {v14}, Lcn/nubia/commonui/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    const-string v13, "user"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mUser:Lcn/nubia/commonui/preference/EditTextPreference;

    invoke-virtual {v14}, Lcn/nubia/commonui/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    const-string v13, "server"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mServer:Lcn/nubia/commonui/preference/EditTextPreference;

    invoke-virtual {v14}, Lcn/nubia/commonui/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    const-string v13, "password"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mPassword:Lcn/nubia/commonui/preference/EditTextPreference;

    invoke-virtual {v14}, Lcn/nubia/commonui/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    const-string v13, "mmsc"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMmsc:Lcn/nubia/commonui/preference/EditTextPreference;

    invoke-virtual {v14}, Lcn/nubia/commonui/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mAuthType:Lcn/nubia/commonui/preference/ListPreference;

    invoke-virtual {v13}, Lcn/nubia/commonui/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 688
    .local v2, "authVal":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 689
    const-string v13, "authtype"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 692
    :cond_5
    const-string v13, "protocol"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mProtocol:Lcn/nubia/commonui/preference/ListPreference;

    invoke-virtual {v14}, Lcn/nubia/commonui/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    const-string v13, "roaming_protocol"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mRoamingProtocol:Lcn/nubia/commonui/preference/ListPreference;

    invoke-virtual {v14}, Lcn/nubia/commonui/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    const-string v13, "type"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mApnType:Lcn/nubia/commonui/preference/EditTextPreference;

    invoke-virtual {v14}, Lcn/nubia/commonui/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    const-string v13, "mcc"

    invoke-virtual {v12, v13, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    const-string v13, "mnc"

    invoke-virtual {v12, v13, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    const-string v13, "numeric"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mPppNumber:Lcn/nubia/commonui/preference/EditTextPreference;

    invoke-virtual {v13}, Lcn/nubia/commonui/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    .line 703
    .local v11, "pppNumber":Ljava/lang/String;
    if-eqz v11, :cond_6

    .line 709
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mCurMnc:Ljava/lang/String;

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mCurMcc:Ljava/lang/String;

    if-eqz v13, :cond_7

    .line 710
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mCurMnc:Ljava/lang/String;

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mCurMcc:Ljava/lang/String;

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 711
    const-string v13, "current"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 715
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mBearerMulti:Lcn/nubia/commonui/preference/MultiSelectListPreference;

    invoke-virtual {v13}, Lcn/nubia/commonui/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v5

    .line 716
    .local v5, "bearerSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 717
    .local v4, "bearerBitmask":I
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 718
    .local v3, "bearer":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_a

    .line 719
    const/4 v4, 0x0

    .line 725
    .end local v3    # "bearer":Ljava/lang/String;
    :cond_8
    const-string v13, "bearer_bitmask"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 728
    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mBearerInitialVal:I

    if-nez v13, :cond_b

    .line 729
    :cond_9
    const/4 v6, 0x0

    .line 738
    .local v6, "bearerVal":I
    :goto_2
    const-string v13, "bearer"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 740
    const-string v13, "mvno_type"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMvnoType:Lcn/nubia/commonui/preference/ListPreference;

    invoke-virtual {v14}, Lcn/nubia/commonui/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    const-string v13, "mvno_match_data"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMvnoMatchData:Lcn/nubia/commonui/preference/EditTextPreference;

    invoke-virtual {v14}, Lcn/nubia/commonui/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    const-string v14, "carrier_enabled"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mCarrierEnabled:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v13}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v13

    if-eqz v13, :cond_d

    const/4 v13, 0x1

    :goto_3
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 744
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mUri:Landroid/net/Uri;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v12, v15, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 746
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 722
    .end local v6    # "bearerVal":I
    .restart local v3    # "bearer":Ljava/lang/String;
    :cond_a
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    move-result v13

    or-int/2addr v4, v13

    .line 724
    goto/16 :goto_1

    .line 730
    .end local v3    # "bearer":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mBearerInitialVal:I

    invoke-static {v4, v13}, Landroid/telephony/ServiceState;->bitmaskHasTech(II)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 731
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mBearerInitialVal:I

    .restart local v6    # "bearerVal":I
    goto :goto_2

    .line 736
    .end local v6    # "bearerVal":I
    :cond_c
    const/4 v6, 0x0

    .restart local v6    # "bearerVal":I
    goto :goto_2

    .line 743
    :cond_d
    const/4 v13, 0x0

    goto :goto_3
.end method


# virtual methods
.method public dealActivityEvent(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 850
    packed-switch p1, :pswitch_data_0

    .line 873
    :cond_0
    :goto_0
    return-void

    .line 852
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 853
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 857
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 862
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mNewApn:Z

    if-eqz v0, :cond_1

    .line 863
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 865
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 868
    :pswitch_3
    invoke-direct {p0}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->deleteApn()V

    goto :goto_0

    .line 850
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 328
    const/16 v0, 0xd

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 237
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 238
    const v2, 0x7f080007

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->addPreferencesFromResource(I)V

    .line 240
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0c0439

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->sNotSet:Ljava/lang/String;

    .line 241
    const-string v2, "apn_name"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mName:Lcn/nubia/commonui/preference/EditTextPreference;

    .line 242
    const-string v2, "apn_apn"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mApn:Lcn/nubia/commonui/preference/EditTextPreference;

    .line 243
    const-string v2, "apn_http_proxy"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mProxy:Lcn/nubia/commonui/preference/EditTextPreference;

    .line 244
    const-string v2, "apn_http_port"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mPort:Lcn/nubia/commonui/preference/EditTextPreference;

    .line 245
    const-string v2, "apn_user"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mUser:Lcn/nubia/commonui/preference/EditTextPreference;

    .line 246
    const-string v2, "apn_server"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mServer:Lcn/nubia/commonui/preference/EditTextPreference;

    .line 247
    const-string v2, "apn_password"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mPassword:Lcn/nubia/commonui/preference/EditTextPreference;

    .line 248
    const-string v2, "apn_mms_proxy"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMmsProxy:Lcn/nubia/commonui/preference/EditTextPreference;

    .line 249
    const-string v2, "apn_mms_port"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMmsPort:Lcn/nubia/commonui/preference/EditTextPreference;

    .line 250
    const-string v2, "apn_mmsc"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMmsc:Lcn/nubia/commonui/preference/EditTextPreference;

    .line 251
    const-string v2, "apn_mcc"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMcc:Lcn/nubia/commonui/preference/EditTextPreference;

    .line 252
    const-string v2, "apn_mnc"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMnc:Lcn/nubia/commonui/preference/EditTextPreference;

    .line 253
    const-string v2, "apn_type"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mApnType:Lcn/nubia/commonui/preference/EditTextPreference;

    .line 254
    const-string v2, "apn_ppp_number"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mPppNumber:Lcn/nubia/commonui/preference/EditTextPreference;

    .line 256
    const-string v2, "auth_type"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mAuthType:Lcn/nubia/commonui/preference/ListPreference;

    .line 257
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mAuthType:Lcn/nubia/commonui/preference/ListPreference;

    invoke-virtual {v2, p0}, Lcn/nubia/commonui/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 259
    const-string v2, "apn_protocol"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mProtocol:Lcn/nubia/commonui/preference/ListPreference;

    .line 260
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mProtocol:Lcn/nubia/commonui/preference/ListPreference;

    invoke-virtual {v2, p0}, Lcn/nubia/commonui/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 262
    const-string v2, "apn_roaming_protocol"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mRoamingProtocol:Lcn/nubia/commonui/preference/ListPreference;

    .line 263
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mRoamingProtocol:Lcn/nubia/commonui/preference/ListPreference;

    invoke-virtual {v2, p0}, Lcn/nubia/commonui/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 265
    const-string v2, "carrier_enabled"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mCarrierEnabled:Landroid/preference/nubia/CheckBoxPreference;

    .line 267
    const-string v2, "bearer_multi"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/preference/MultiSelectListPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mBearerMulti:Lcn/nubia/commonui/preference/MultiSelectListPreference;

    .line 268
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mBearerMulti:Lcn/nubia/commonui/preference/MultiSelectListPreference;

    invoke-virtual {v2, p0}, Lcn/nubia/commonui/preference/MultiSelectListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 270
    const-string v2, "mvno_type"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMvnoType:Lcn/nubia/commonui/preference/ListPreference;

    .line 271
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMvnoType:Lcn/nubia/commonui/preference/ListPreference;

    invoke-virtual {v2, p0}, Lcn/nubia/commonui/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 272
    const-string v2, "mvno_match_data"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMvnoMatchData:Lcn/nubia/commonui/preference/EditTextPreference;

    .line 274
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mRes:Landroid/content/res/Resources;

    .line 276
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 277
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "action":Ljava/lang/String;
    const-string v2, "sub_id"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mSubId:I

    .line 280
    const-string v2, "DISABLE_EDITOR"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mDisableEditor:Z

    .line 281
    iget-boolean v2, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mDisableEditor:Z

    if-eqz v2, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 283
    sget-object v2, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->TAG:Ljava/lang/String;

    const-string v5, "ApnEditor form is disabled."

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_0
    if-nez p1, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mFirstTime:Z

    .line 286
    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 287
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mUri:Landroid/net/Uri;

    .line 318
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->sProjection:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v7, v7}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mCursor:Landroid/database/Cursor;

    .line 319
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 321
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 323
    invoke-direct {p0}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->fillUi()V

    .line 324
    :goto_2
    return-void

    :cond_1
    move v2, v4

    .line 285
    goto :goto_0

    .line 288
    :cond_2
    const-string v2, "android.intent.action.INSERT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 289
    iget-boolean v2, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mFirstTime:Z

    if-nez v2, :cond_3

    const-string v2, "pos"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    .line 290
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mUri:Landroid/net/Uri;

    .line 295
    :goto_3
    iput-boolean v3, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mNewApn:Z

    .line 296
    const-string v2, "mvno_type"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMvnoTypeStr:Ljava/lang/String;

    .line 297
    const-string v2, "mvno_match_data"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMvnoMatchDataStr:Ljava/lang/String;

    .line 301
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_5

    .line 302
    sget-object v2, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to insert new telephony provider into "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .line 292
    :cond_4
    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "pos"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mUri:Landroid/net/Uri;

    goto :goto_3

    .line 310
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v4, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_1

    .line 313
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto/16 :goto_2
.end method

.method public onCreateDialog(I)Lcn/nubia/commonui/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x0

    .line 774
    if-nez p1, :cond_0

    .line 775
    invoke-direct {p0}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 777
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c045a

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    .line 783
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 342
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 343
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 581
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 582
    .local v3, "key":Ljava/lang/String;
    const-string v7, "auth_type"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 584
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 585
    .local v2, "index":I
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mAuthType:Lcn/nubia/commonui/preference/ListPreference;

    invoke-virtual {v7, v2}, Lcn/nubia/commonui/preference/ListPreference;->setValueIndex(I)V

    .line 587
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0a0028

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 588
    .local v6, "values":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mAuthType:Lcn/nubia/commonui/preference/ListPreference;

    aget-object v9, v6, v2

    invoke-virtual {v7, v9}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    .end local v2    # "index":I
    .end local v6    # "values":[Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v7, 0x1

    :goto_1
    return v7

    .line 589
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NumberFormatException;
    move v7, v8

    .line 590
    goto :goto_1

    .line 592
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    const-string v7, "apn_protocol"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, p2

    .line 593
    check-cast v7, Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mProtocol:Lcn/nubia/commonui/preference/ListPreference;

    invoke-direct {p0, v7, v9}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->protocolDescription(Ljava/lang/String;Lcn/nubia/commonui/preference/ListPreference;)Ljava/lang/String;

    move-result-object v5

    .line 594
    .local v5, "protocol":Ljava/lang/String;
    if-nez v5, :cond_2

    move v7, v8

    .line 595
    goto :goto_1

    .line 597
    :cond_2
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mProtocol:Lcn/nubia/commonui/preference/ListPreference;

    invoke-virtual {v7, v5}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 598
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mProtocol:Lcn/nubia/commonui/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v7, p2}, Lcn/nubia/commonui/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 599
    .end local v5    # "protocol":Ljava/lang/String;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    const-string v7, "apn_roaming_protocol"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v7, p2

    .line 600
    check-cast v7, Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mRoamingProtocol:Lcn/nubia/commonui/preference/ListPreference;

    invoke-direct {p0, v7, v9}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->protocolDescription(Ljava/lang/String;Lcn/nubia/commonui/preference/ListPreference;)Ljava/lang/String;

    move-result-object v5

    .line 601
    .restart local v5    # "protocol":Ljava/lang/String;
    if-nez v5, :cond_4

    move v7, v8

    .line 602
    goto :goto_1

    .line 604
    :cond_4
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mRoamingProtocol:Lcn/nubia/commonui/preference/ListPreference;

    invoke-virtual {v7, v5}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 605
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mRoamingProtocol:Lcn/nubia/commonui/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v7, p2}, Lcn/nubia/commonui/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 606
    .end local v5    # "protocol":Ljava/lang/String;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_5
    const-string v7, "bearer_multi"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    move-object v7, p2

    .line 607
    check-cast v7, Ljava/util/Set;

    invoke-direct {p0, v7}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    .line 608
    .local v0, "bearer":Ljava/lang/String;
    if-nez v0, :cond_6

    move v7, v8

    .line 609
    goto :goto_1

    .line 611
    :cond_6
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mBearerMulti:Lcn/nubia/commonui/preference/MultiSelectListPreference;

    check-cast p2, Ljava/util/Set;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v7, p2}, Lcn/nubia/commonui/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 612
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mBearerMulti:Lcn/nubia/commonui/preference/MultiSelectListPreference;

    invoke-virtual {v7, v0}, Lcn/nubia/commonui/preference/MultiSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 613
    .end local v0    # "bearer":Ljava/lang/String;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_7
    const-string v7, "mvno_type"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, p2

    .line 614
    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 615
    .local v4, "mvno":Ljava/lang/String;
    if-nez v4, :cond_8

    move v7, v8

    .line 616
    goto :goto_1

    .line 618
    :cond_8
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMvnoType:Lcn/nubia/commonui/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v7, p2}, Lcn/nubia/commonui/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 619
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mMvnoType:Lcn/nubia/commonui/preference/ListPreference;

    invoke-virtual {v7, v4}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 333
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 334
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 336
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 627
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 628
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    const-string v0, "pos"

    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 631
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 837
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 838
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 839
    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mPassword:Lcn/nubia/commonui/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 840
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 847
    :cond_0
    :goto_0
    return-void

    .line 841
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mCarrierEnabled:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->mBearerMulti:Lcn/nubia/commonui/preference/MultiSelectListPreference;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 844
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
