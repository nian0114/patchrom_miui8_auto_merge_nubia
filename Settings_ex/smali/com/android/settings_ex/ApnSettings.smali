.class public Lcom/android/settings_ex/ApnSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "ApnSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/ApnSettings$4;,
        Lcom/android/settings_ex/ApnSettings$RestoreApnProcessHandler;,
        Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;
    }
.end annotation


# static fields
.field private static final DEFAULTAPN_URI:Landroid/net/Uri;

.field private static final PREFERAPN_URI:Landroid/net/Uri;

.field private static mRestoreDefaultApnMode:Z


# instance fields
.field private mAddAPNView:Landroid/view/View;

.field private mAllowAddingApns:Z

.field private mBottomButton:Landroid/view/View;

.field private mButtomPanel:Landroid/view/View;

.field private mHideImsApn:Z

.field private mMobileStateFilter:Landroid/content/IntentFilter;

.field private final mMobileStateReceiver:Landroid/content/BroadcastReceiver;

.field private mMvnoMatchData:Ljava/lang/String;

.field private mMvnoType:Ljava/lang/String;

.field private mRestoreApnProcessHandler:Lcom/android/settings_ex/ApnSettings$RestoreApnProcessHandler;

.field private mRestoreApnUiHandler:Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;

.field private mRestoreDefaultApnThread:Landroid/os/HandlerThread;

.field private mSelectedKey:Ljava/lang/String;

.field private mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private mUm:Landroid/os/UserManager;

.field private mUnavailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const-string v0, "content://telephony/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    .line 99
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 126
    new-instance v0, Lcom/android/settings_ex/ApnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ApnSettings$1;-><init>(Lcom/android/settings_ex/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    .line 474
    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .param p0, "x0"    # Landroid/content/Intent;

    .prologue
    .line 68
    invoke-static {p0}, Lcom/android/settings_ex/ApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 68
    sget-boolean v0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnMode:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 68
    sput-boolean p0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnMode:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/ApnSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ApnSettings;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings_ex/ApnSettings;->fillList()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/ApnSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ApnSettings;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings_ex/ApnSettings;->addNewApn()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/ApnSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ApnSettings;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings_ex/ApnSettings;->restoreDefaultApn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/ApnSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ApnSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ApnSettings;->setEnabled(Z)V

    return-void
.end method

.method static synthetic access$700()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/android/settings_ex/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    return-object v0
.end method

.method private addApnToList(Lcom/android/settings_ex/ApnPreference;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "pref"    # Lcom/android/settings_ex/ApnPreference;
    .param p4, "r"    # Lcom/android/internal/telephony/uicc/IccRecords;
    .param p5, "mvnoType"    # Ljava/lang/String;
    .param p6, "mvnoMatchData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings_ex/ApnPreference;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/ApnPreference;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/ApnPreference;",
            ">;",
            "Lcom/android/internal/telephony/uicc/IccRecords;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 343
    .local p2, "mnoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    .local p3, "mvnoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    if-eqz p4, :cond_1

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 344
    invoke-static {p4, p5, p6}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatches(Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    iput-object p5, p0, Lcom/android/settings_ex/ApnSettings;->mMvnoType:Ljava/lang/String;

    .line 348
    iput-object p6, p0, Lcom/android/settings_ex/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addNewApn()V
    .locals 4

    .prologue
    .line 372
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT"

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 373
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings_ex/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 375
    .local v1, "subId":I
    :goto_0
    const-string v2, "sub_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 376
    iget-object v2, p0, Lcom/android/settings_ex/ApnSettings;->mMvnoType:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 377
    const-string v2, "mvno_type"

    iget-object v3, p0, Lcom/android/settings_ex/ApnSettings;->mMvnoType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    const-string v2, "mvno_match_data"

    iget-object v3, p0, Lcom/android/settings_ex/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 381
    return-void

    .line 373
    .end local v1    # "subId":I
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private fillList()V
    .locals 29

    .prologue
    .line 251
    const/16 v20, 0x0

    .line 252
    .local v20, "isSelectedKeyMatch":Z
    const-string v2, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ApnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/telephony/TelephonyManager;

    .line 253
    .local v26, "tm":Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-nez v2, :cond_4

    const-string v22, ""

    .line 255
    .local v22, "mccmnc":Ljava/lang/String;
    :goto_0
    const-string v2, "ApnSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mccmnc = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    new-instance v28, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "numeric=\""

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "\" AND NOT (type=\'ia\' AND (apn=\"\" OR apn IS NULL)) "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    .local v28, "where":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/ApnSettings;->mHideImsApn:Z

    if-eqz v2, :cond_0

    .line 260
    const-string v2, " AND NOT (type=\'ims\')"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x6

    new-array v4, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "_id"

    aput-object v10, v4, v9

    const/4 v9, 0x1

    const-string v10, "name"

    aput-object v10, v4, v9

    const/4 v9, 0x2

    const-string v10, "apn"

    aput-object v10, v4, v9

    const/4 v9, 0x3

    const-string v10, "type"

    aput-object v10, v4, v9

    const/4 v9, 0x4

    const-string v10, "mvno_type"

    aput-object v10, v4, v9

    const/4 v9, 0x5

    const-string v10, "mvno_match_data"

    aput-object v10, v4, v9

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "name ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 267
    .local v18, "cursor":Landroid/database/Cursor;
    if-eqz v18, :cond_b

    .line 268
    const/4 v6, 0x0

    .line 269
    .local v6, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ApnSettings;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v2, :cond_1

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ApnSettings;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ex/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {v2, v9, v10}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v6

    .line 273
    :cond_1
    const-string v2, "apn_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ApnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceGroup;

    .line 274
    .local v17, "apnList":Landroid/preference/PreferenceGroup;
    invoke-virtual/range {v17 .. v17}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 276
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .local v4, "mnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .local v5, "mvnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v11, "mnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v12, "mvnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/ApnSettings;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 282
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    .line 283
    :goto_1
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_7

    .line 284
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 285
    .local v23, "name":Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 286
    .local v16, "apn":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 287
    .local v21, "key":Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 288
    .local v27, "type":Ljava/lang/String;
    const/4 v2, 0x4

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 289
    .local v7, "mvnoType":Ljava/lang/String;
    const/4 v2, 0x5

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 291
    .local v8, "mvnoMatchData":Ljava/lang/String;
    new-instance v3, Lcom/android/settings_ex/ApnPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/android/settings_ex/ApnPreference;-><init>(Landroid/content/Context;)V

    .line 293
    .local v3, "pref":Lcom/android/settings_ex/ApnPreference;
    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/settings_ex/ApnPreference;->setKey(Ljava/lang/String;)V

    .line 294
    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/android/settings_ex/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 295
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/settings_ex/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 296
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/android/settings_ex/ApnPreference;->setPersistent(Z)V

    .line 297
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/settings_ex/ApnPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 299
    if-eqz v27, :cond_2

    const-string v2, "mms"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "ia"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "ims"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_2
    const/16 v25, 0x1

    .line 300
    .local v25, "selectable":Z
    :goto_2
    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/android/settings_ex/ApnPreference;->setSelectable(Z)V

    .line 301
    if-eqz v25, :cond_6

    .line 302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ApnSettings;->mSelectedKey:Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ApnSettings;->mSelectedKey:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 303
    invoke-virtual {v3}, Lcom/android/settings_ex/ApnPreference;->setChecked()V

    .line 304
    const/16 v20, 0x1

    .line 305
    const-string v2, "ApnSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "find select key = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ex/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object/from16 v2, p0

    .line 307
    invoke-direct/range {v2 .. v8}, Lcom/android/settings_ex/ApnSettings;->addApnToList(Lcom/android/settings_ex/ApnPreference;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :goto_3
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    .line 253
    .end local v3    # "pref":Lcom/android/settings_ex/ApnPreference;
    .end local v4    # "mnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    .end local v5    # "mvnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    .end local v6    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v7    # "mvnoType":Ljava/lang/String;
    .end local v8    # "mvnoMatchData":Ljava/lang/String;
    .end local v11    # "mnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    .end local v12    # "mvnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    .end local v16    # "apn":Ljava/lang/String;
    .end local v17    # "apnList":Landroid/preference/PreferenceGroup;
    .end local v18    # "cursor":Landroid/database/Cursor;
    .end local v21    # "key":Ljava/lang/String;
    .end local v22    # "mccmnc":Ljava/lang/String;
    .end local v23    # "name":Ljava/lang/String;
    .end local v25    # "selectable":Z
    .end local v27    # "type":Ljava/lang/String;
    .end local v28    # "where":Ljava/lang/StringBuilder;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getIccOperatorNumericForData(I)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_0

    .line 299
    .restart local v3    # "pref":Lcom/android/settings_ex/ApnPreference;
    .restart local v4    # "mnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    .restart local v5    # "mvnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    .restart local v6    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    .restart local v7    # "mvnoType":Ljava/lang/String;
    .restart local v8    # "mvnoMatchData":Ljava/lang/String;
    .restart local v11    # "mnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    .restart local v12    # "mvnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    .restart local v16    # "apn":Ljava/lang/String;
    .restart local v17    # "apnList":Landroid/preference/PreferenceGroup;
    .restart local v18    # "cursor":Landroid/database/Cursor;
    .restart local v21    # "key":Ljava/lang/String;
    .restart local v22    # "mccmnc":Ljava/lang/String;
    .restart local v23    # "name":Ljava/lang/String;
    .restart local v27    # "type":Ljava/lang/String;
    .restart local v28    # "where":Ljava/lang/StringBuilder;
    :cond_5
    const/16 v25, 0x0

    goto :goto_2

    .restart local v25    # "selectable":Z
    :cond_6
    move-object/from16 v9, p0

    move-object v10, v3

    move-object v13, v6

    move-object v14, v7

    move-object v15, v8

    .line 309
    invoke-direct/range {v9 .. v15}, Lcom/android/settings_ex/ApnSettings;->addApnToList(Lcom/android/settings_ex/ApnPreference;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 313
    .end local v3    # "pref":Lcom/android/settings_ex/ApnPreference;
    .end local v7    # "mvnoType":Ljava/lang/String;
    .end local v8    # "mvnoMatchData":Ljava/lang/String;
    .end local v16    # "apn":Ljava/lang/String;
    .end local v21    # "key":Ljava/lang/String;
    .end local v23    # "name":Ljava/lang/String;
    .end local v25    # "selectable":Z
    .end local v27    # "type":Ljava/lang/String;
    :cond_7
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 315
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 316
    move-object v4, v5

    .line 317
    move-object v11, v12

    .line 322
    :cond_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/preference/Preference;

    .line 323
    .local v24, "preference":Landroid/preference/Preference;
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 327
    .end local v24    # "preference":Landroid/preference/Preference;
    :cond_9
    if-nez v20, :cond_a

    invoke-virtual/range {v17 .. v17}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-lez v2, :cond_a

    .line 328
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/ApnPreference;

    .line 329
    .restart local v3    # "pref":Lcom/android/settings_ex/ApnPreference;
    invoke-virtual {v3}, Lcom/android/settings_ex/ApnPreference;->setChecked()V

    .line 330
    invoke-virtual {v3}, Lcom/android/settings_ex/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings_ex/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    .line 331
    const-string v2, "ApnSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "set key to  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcom/android/settings_ex/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .end local v3    # "pref":Lcom/android/settings_ex/ApnPreference;
    :cond_a
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/preference/Preference;

    .line 335
    .restart local v24    # "preference":Landroid/preference/Preference;
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_5

    .line 338
    .end local v4    # "mnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    .end local v5    # "mvnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    .end local v6    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v11    # "mnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    .end local v12    # "mvnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/ApnPreference;>;"
    .end local v17    # "apnList":Landroid/preference/PreferenceGroup;
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v24    # "preference":Landroid/preference/Preference;
    :cond_b
    return-void
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 146
    const-string v1, "state"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 148
    const-class v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 150
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0
.end method

.method private getSelectedApnKey()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 413
    const/4 v7, 0x0

    .line 416
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings_ex/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/ApnSettings;->getUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v8

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 418
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 419
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 420
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 422
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 423
    return-object v7
.end method

.method private getUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 507
    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 509
    .local v0, "subId":I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subId/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 507
    .end local v0    # "subId":I
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private restoreDefaultApn()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 427
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/ApnSettings;->setEnabled(Z)V

    .line 428
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ApnSettings;->showDialog(I)V

    .line 429
    sput-boolean v3, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnMode:Z

    .line 431
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;

    if-nez v0, :cond_0

    .line 432
    new-instance v0, Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings_ex/ApnSettings;Lcom/android/settings_ex/ApnSettings$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings_ex/ApnSettings$RestoreApnProcessHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_2

    .line 437
    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Restore default APN Handler: Process Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    .line 439
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 440
    new-instance v0, Lcom/android/settings_ex/ApnSettings$RestoreApnProcessHandler;

    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings_ex/ApnSettings$RestoreApnProcessHandler;-><init>(Lcom/android/settings_ex/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings_ex/ApnSettings$RestoreApnProcessHandler;

    .line 444
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings_ex/ApnSettings$RestoreApnProcessHandler;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/ApnSettings$RestoreApnProcessHandler;->sendEmptyMessage(I)Z

    .line 446
    return v3
.end method

.method private setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mAddAPNView:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/android/settings_ex/Utils;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 514
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mBottomButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 515
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 516
    return-void
.end method

.method private setSelectedApnKey(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 403
    iput-object p1, p0, Lcom/android/settings_ex/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 404
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 406
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 407
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "apn_id"

    iget-object v3, p0, Lcom/android/settings_ex/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    sget-object v2, Lcom/android/settings_ex/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/android/settings_ex/ApnSettings;->getUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 410
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 156
    const/16 v0, 0xc

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 187
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0401c2

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mAddAPNView:Landroid/view/View;

    .line 189
    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mAddAPNView:Landroid/view/View;

    new-instance v2, Lcom/android/settings_ex/ApnSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/ApnSettings$2;-><init>(Lcom/android/settings_ex/ApnSettings;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/ApnSettings;->mAddAPNView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 197
    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mUm:Landroid/os/UserManager;

    const-string v2, "no_config_mobile_networks"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_2

    .line 199
    :cond_0
    iput-boolean v3, p0, Lcom/android/settings_ex/ApnSettings;->mUnavailable:Z

    .line 200
    new-instance v1, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings_ex/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ApnSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 201
    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mButtomPanel:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 202
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnSettings;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 203
    .local v0, "empty":Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 204
    const v1, 0x7f0c05ee

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 205
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 213
    .end local v0    # "empty":Landroid/widget/TextView;
    :cond_1
    :goto_0
    return-void

    .line 210
    :cond_2
    const v1, 0x7f080008

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ApnSettings;->addPreferencesFromResource(I)V

    .line 212
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 161
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 163
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "sub_id"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 166
    .local v3, "subId":I
    const-string v4, "user"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/ApnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    iput-object v4, p0, Lcom/android/settings_ex/ApnSettings;->mUm:Landroid/os/UserManager;

    .line 168
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/settings_ex/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    .line 171
    iget-object v4, p0, Lcom/android/settings_ex/ApnSettings;->mUm:Landroid/os/UserManager;

    const-string v5, "no_config_mobile_networks"

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 172
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/ApnSettings;->setHasOptionsMenu(Z)V

    .line 175
    :cond_0
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 176
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/ApnSettings;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 178
    const-string v4, "carrier_config"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/ApnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierConfigManager;

    .line 180
    .local v2, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v2}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    .line 181
    .local v1, "b":Landroid/os/PersistableBundle;
    const-string v4, "hide_ims_apn_bool"

    invoke-virtual {v1, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings_ex/ApnSettings;->mHideImsApn:Z

    .line 182
    const-string v4, "allow_adding_apns_bool"

    invoke-virtual {v1, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings_ex/ApnSettings;->mAllowAddingApns:Z

    .line 183
    return-void
.end method

.method public onCreateDialog(I)Lcn/nubia/commonui/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 497
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_0

    .line 498
    new-instance v0, Lcn/nubia/commonui/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/commonui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 499
    .local v0, "dialog":Lcn/nubia/commonui/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c045f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 500
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/ProgressDialog;->setCancelable(Z)V

    .line 503
    .end local v0    # "dialog":Lcn/nubia/commonui/app/ProgressDialog;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 358
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 359
    .local v0, "view":Landroid/view/ViewGroup;
    const v1, 0x7f04018d

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mButtomPanel:Landroid/view/View;

    .line 360
    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mButtomPanel:Landroid/view/View;

    const v2, 0x7f120381

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mBottomButton:Landroid/view/View;

    .line 361
    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mBottomButton:Landroid/view/View;

    new-instance v2, Lcom/android/settings_ex/ApnSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/ApnSettings$3;-><init>(Lcom/android/settings_ex/ApnSettings;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 243
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 245
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 248
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 232
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 234
    iget-boolean v0, p0, Lcom/android/settings_ex/ApnSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    .line 239
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 392
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange(): Preference - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 396
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/android/settings_ex/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    .line 399
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 385
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 386
    .local v0, "pos":I
    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, v0

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 387
    .local v1, "url":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 388
    const/4 v2, 0x1

    return v2
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 217
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 219
    iget-boolean v0, p0, Lcom/android/settings_ex/ApnSettings;->mUnavailable:Z

    if-eqz v0, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 225
    sget-boolean v0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnMode:Z

    if-nez v0, :cond_0

    .line 226
    invoke-direct {p0}, Lcom/android/settings_ex/ApnSettings;->fillList()V

    goto :goto_0
.end method
