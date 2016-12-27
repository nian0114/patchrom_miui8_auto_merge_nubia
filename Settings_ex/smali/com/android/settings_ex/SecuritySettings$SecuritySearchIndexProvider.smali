.class Lcom/android/settings_ex/SecuritySettings$SecuritySearchIndexProvider;
.super Lcom/android/settings_ex/search/BaseSearchIndexProvider;
.source "SecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SecuritySearchIndexProvider"
.end annotation


# instance fields
.field mIsPrimary:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1136
    invoke-direct {p0}, Lcom/android/settings_ex/search/BaseSearchIndexProvider;-><init>()V

    .line 1138
    # getter for: Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I
    invoke-static {}, Lcom/android/settings_ex/SecuritySettings;->access$400()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/SecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    .line 1139
    return-void

    .line 1138
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1264
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1266
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    # invokes: Lcom/android/settings_ex/SecuritySettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I
    invoke-static {p1, v1}, Lcom/android/settings_ex/SecuritySettings;->access$500(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v2

    .line 1269
    .local v2, "resId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 1270
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    iget-boolean v5, p0, Lcom/android/settings_ex/SecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1271
    :cond_0
    const-string v5, "sim_lock"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1274
    :cond_1
    const-string v5, "user"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 1275
    .local v4, "um":Landroid/os/UserManager;
    const-string v5, "no_config_credentials"

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1276
    const-string v5, "credentials_management"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1280
    :cond_2
    # getter for: Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I
    invoke-static {}, Lcom/android/settings_ex/SecuritySettings;->access$400()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1281
    const-string v5, "trust_agent"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1282
    const-string v5, "manage_trust_agents"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1285
    :cond_3
    return-object v0
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1185
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1186
    .local v11, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/search/SearchIndexableRaw;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1188
    .local v9, "res":Landroid/content/res/Resources;
    const v15, 0x7f0c0178

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1190
    .local v12, "screenTitle":Ljava/lang/String;
    new-instance v3, Lcom/android/settings_ex/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1191
    .local v3, "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    iput-object v12, v3, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1192
    iput-object v12, v3, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1193
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1195
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings_ex/SecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    if-nez v15, :cond_0

    .line 1196
    invoke-static/range {p1 .. p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v15

    if-eqz v15, :cond_2

    const v10, 0x7f0c0174

    .line 1199
    .local v10, "resId":I
    :goto_0
    new-instance v3, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v3    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1200
    .restart local v3    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v3, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1201
    iput-object v12, v3, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1202
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1222
    .end local v10    # "resId":I
    :cond_0
    const-string v15, "user"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/UserManager;

    .line 1224
    .local v14, "um":Landroid/os/UserManager;
    const-string v15, "no_config_credentials"

    invoke-virtual {v14, v15}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 1225
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v7

    .line 1227
    .local v7, "keyStore":Landroid/security/KeyStore;
    if-eqz v7, :cond_1

    .line 1229
    :try_start_0
    invoke-virtual {v7}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v15

    if-eqz v15, :cond_3

    const v13, 0x7f0c0783

    .line 1233
    .local v13, "storageSummaryRes":I
    :goto_1
    new-instance v4, Lcom/android/settings_ex/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1234
    .end local v3    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    .local v4, "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    :try_start_1
    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v4, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1235
    iput-object v12, v4, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1236
    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 1244
    .end local v4    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    .end local v7    # "keyStore":Landroid/security/KeyStore;
    .end local v13    # "storageSummaryRes":I
    .restart local v3    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    :cond_1
    :goto_2
    new-instance v8, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1245
    .local v8, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    # getter for: Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I
    invoke-static {}, Lcom/android/settings_ex/SecuritySettings;->access$400()I

    move-result v15

    invoke-virtual {v8, v15}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 1246
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    const-class v15, Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, v16

    # invokes: Lcom/android/settings_ex/SecuritySettings;->getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;
    invoke-static {v0, v8, v15}, Lcom/android/settings_ex/SecuritySettings;->access$600(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1249
    .local v2, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v6, v15, :cond_4

    .line 1250
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;

    .line 1251
    .local v1, "agent":Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;
    new-instance v3, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v3    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1252
    .restart local v3    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    iget-object v15, v1, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    iput-object v15, v3, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1253
    iput-object v12, v3, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1254
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1249
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1196
    .end local v1    # "agent":Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;
    .end local v2    # "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;>;"
    .end local v6    # "i":I
    .end local v8    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v14    # "um":Landroid/os/UserManager;
    :cond_2
    const v10, 0x7f0c0172

    goto/16 :goto_0

    .line 1229
    .restart local v7    # "keyStore":Landroid/security/KeyStore;
    .restart local v14    # "um":Landroid/os/UserManager;
    :cond_3
    const v13, 0x7f0c0784

    goto :goto_1

    .line 1237
    :catch_0
    move-exception v5

    .line 1238
    .local v5, "e":Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1257
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v7    # "keyStore":Landroid/security/KeyStore;
    .restart local v8    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_4
    return-object v11

    .line 1237
    .end local v3    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    .end local v8    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v4    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    .restart local v7    # "keyStore":Landroid/security/KeyStore;
    .restart local v13    # "storageSummaryRes":I
    :catch_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    .restart local v3    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    goto :goto_4
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1145
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1147
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableResource;>;"
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1149
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    # invokes: Lcom/android/settings_ex/SecuritySettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I
    invoke-static {p1, v1}, Lcom/android/settings_ex/SecuritySettings;->access$500(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v2

    .line 1151
    .local v2, "resId":I
    new-instance v4, Landroid/provider/SearchIndexableResource;

    invoke-direct {v4, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 1152
    .local v4, "sir":Landroid/provider/SearchIndexableResource;
    iput v2, v4, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 1153
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1155
    iget-boolean v5, p0, Lcom/android/settings_ex/SecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    if-eqz v5, :cond_0

    .line 1156
    const-string v5, "device_policy"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1159
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1170
    :goto_0
    :pswitch_0
    new-instance v4, Landroid/provider/SearchIndexableResource;

    .end local v4    # "sir":Landroid/provider/SearchIndexableResource;
    invoke-direct {v4, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 1171
    .restart local v4    # "sir":Landroid/provider/SearchIndexableResource;
    iput v2, v4, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 1172
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1176
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_0
    new-instance v4, Landroid/provider/SearchIndexableResource;

    .end local v4    # "sir":Landroid/provider/SearchIndexableResource;
    invoke-direct {v4, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 1177
    .restart local v4    # "sir":Landroid/provider/SearchIndexableResource;
    const v5, 0x7f080060

    iput v5, v4, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 1178
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1180
    return-object v3

    .line 1162
    .restart local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :pswitch_1
    const v2, 0x7f08005d

    .line 1163
    goto :goto_0

    .line 1166
    :pswitch_2
    const v2, 0x7f080065

    goto :goto_0

    .line 1159
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
