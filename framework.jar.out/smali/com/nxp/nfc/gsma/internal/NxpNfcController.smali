.class public Lcom/nxp/nfc/gsma/internal/NxpNfcController;
.super Ljava/lang/Object;
.source "NxpNfcController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nxp/nfc/gsma/internal/NxpNfcController$Callbacks;,
        Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;
    }
.end annotation


# static fields
.field public static final BATTERY_ALL_STATES:I = 0x2

.field public static final BATTERY_OPERATIONAL_STATE:I = 0x1

.field private static final MW_PROTOCOL_MASK_ISO_DEP:I = 0x8

.field public static final PROTOCOL_ISO_DEP:I = 0x10

.field public static final SCREEN_ALL_MODES:I = 0x2

.field public static final SCREEN_ON_AND_LOCKED_MODE:I = 0x1

.field static final TAG:Ljava/lang/String; = "NxpNfcController"

.field public static final TECHNOLOGY_NFC_A:I = 0x1

.field public static final TECHNOLOGY_NFC_B:I = 0x2

.field public static final TECHNOLOGY_NFC_F:I = 0x4


# instance fields
.field private mCallBack:Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;

.field private mContext:Landroid/content/Context;

.field private mDialogBoxFlag:Z

.field private mEnable:Z

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

.field private mNxpNfcAdapter:Lcom/nxp/nfc/NxpNfcAdapter;

.field private final mOwnerReceiver:Landroid/content/BroadcastReceiver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSeNameApduService:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Z

.field private seExtension:Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 73
    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNxpNfcAdapter:Lcom/nxp/nfc/NxpNfcAdapter;

    .line 74
    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    .line 76
    iput-boolean v1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mEnable:Z

    .line 77
    iput-boolean v1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mState:Z

    .line 78
    iput-boolean v1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mDialogBoxFlag:Z

    .line 79
    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mCallBack:Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mSeNameApduService:Ljava/util/HashMap;

    .line 104
    new-instance v0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$1;

    invoke-direct {v0, p0}, Lcom/nxp/nfc/gsma/internal/NxpNfcController$1;-><init>(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)V

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    .line 121
    new-instance v0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$2;

    invoke-direct {v0, p0}, Lcom/nxp/nfc/gsma/internal/NxpNfcController$2;-><init>(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)V

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 73
    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNxpNfcAdapter:Lcom/nxp/nfc/NxpNfcAdapter;

    .line 74
    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    .line 76
    iput-boolean v1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mEnable:Z

    .line 77
    iput-boolean v1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mState:Z

    .line 78
    iput-boolean v1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mDialogBoxFlag:Z

    .line 79
    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mCallBack:Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mSeNameApduService:Ljava/util/HashMap;

    .line 104
    new-instance v0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$1;

    invoke-direct {v0, p0}, Lcom/nxp/nfc/gsma/internal/NxpNfcController$1;-><init>(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)V

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    .line 121
    new-instance v0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$2;

    invoke-direct {v0, p0}, Lcom/nxp/nfc/gsma/internal/NxpNfcController$2;-><init>(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)V

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 141
    iput-object p1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mContext:Landroid/content/Context;

    .line 142
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNxpNfcAdapter:Lcom/nxp/nfc/NxpNfcAdapter;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-static {v0}, Lcom/nxp/nfc/NxpNfcAdapter;->getNxpNfcAdapter(Landroid/nfc/NfcAdapter;)Lcom/nxp/nfc/NxpNfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNxpNfcAdapter:Lcom/nxp/nfc/NxpNfcAdapter;

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    if-nez v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNxpNfcAdapter:Lcom/nxp/nfc/NxpNfcAdapter;

    invoke-virtual {v0}, Lcom/nxp/nfc/NxpNfcAdapter;->getNxpNfcControllerInterface()Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    move-result-object v0

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    .line 150
    :cond_2
    return-void
.end method

.method private ConvertApduServiceToOffHostService(Landroid/content/pm/PackageManager;Landroid/nfc/cardemulation/ApduServiceInfo;)Lcom/nxp/nfc/gsma/internal/NxpOffHostService;
    .locals 14
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "apduService"    # Landroid/nfc/cardemulation/ApduServiceInfo;

    .prologue
    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getSEInfo()Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    move-result-object v12

    .line 194
    .local v12, "mEseInfo":Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v13

    .line 195
    .local v13, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, "description":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;->getSeId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, "sEname":Ljava/lang/String;
    const/4 v8, 0x0

    .line 198
    .local v8, "banner":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p2 .. p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getModifiable()Z

    move-result v6

    .line 199
    .local v6, "modifiable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getBannerId()I

    move-result v9

    .line 200
    .local v9, "bannerId":I
    invoke-virtual/range {p2 .. p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getUid()I

    move-result v1

    .line 201
    .local v1, "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAids()Ljava/util/ArrayList;

    move-result-object v7

    .line 202
    .local v7, "ApduAids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;

    iget-object v4, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 204
    .local v0, "mService":Lcom/nxp/nfc/gsma/internal/NxpOffHostService;
    if-eqz v6, :cond_0

    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDynamicAidGroups()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/nfc/cardemulation/AidGroup;

    .line 206
    .local v10, "group":Landroid/nfc/cardemulation/AidGroup;
    iget-object v4, v0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mAidGroupList:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 209
    .end local v10    # "group":Landroid/nfc/cardemulation/AidGroup;
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getStaticAidGroups()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/nfc/cardemulation/AidGroup;

    .line 210
    .restart local v10    # "group":Landroid/nfc/cardemulation/AidGroup;
    iget-object v4, v0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mAidGroupList:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 214
    .end local v10    # "group":Landroid/nfc/cardemulation/AidGroup;
    :cond_1
    iget-object v4, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->setContext(Landroid/content/Context;)V

    .line 215
    invoke-virtual {v0, v9}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->setBannerId(I)V

    .line 216
    invoke-virtual {v0, p0}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->setNxpNfcController(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)V

    .line 217
    return-object v0
.end method

.method private ConvertOffhostServiceToApduService(Lcom/nxp/nfc/gsma/internal/NxpOffHostService;ILjava/lang/String;)Landroid/nfc/cardemulation/ApduServiceInfo;
    .locals 18
    .param p1, "mService"    # Lcom/nxp/nfc/gsma/internal/NxpOffHostService;
    .param p2, "userId"    # I
    .param p3, "pkg"    # Ljava/lang/String;

    .prologue
    .line 225
    const/4 v1, 0x0

    .line 226
    .local v1, "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    const/4 v3, 0x0

    .line 227
    .local v3, "onHost":Z
    invoke-virtual/range {p1 .. p1}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->getDescription()Ljava/lang/String;

    move-result-object v4

    .line 228
    .local v4, "description":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->getModifiable()Z

    move-result v14

    .line 229
    .local v14, "modifiable":Z
    const/4 v5, 0x0

    .line 230
    .local v5, "staticAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v6, "dynamicAidGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mAidGroupList:Ljava/util/List;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 232
    const/4 v7, 0x0

    .line 233
    .local v7, "requiresUnlock":Z
    const/4 v13, 0x0

    .line 234
    .local v13, "DrawableResource":Landroid/graphics/drawable/Drawable;
    const/16 v16, 0x0

    .line 235
    .local v16, "seId":I
    invoke-virtual/range {p1 .. p1}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->getLocation()Ljava/lang/String;

    move-result-object v17

    .line 236
    .local v17, "seName":Ljava/lang/String;
    const/4 v15, -0x1

    .line 237
    .local v15, "powerstate":I
    move-object/from16 v0, p1

    iget v8, v0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mBannerId:I

    .line 239
    .local v8, "bannerId":I
    new-instance v2, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 240
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v9, Landroid/content/pm/ServiceInfo;

    invoke-direct {v9}, Landroid/content/pm/ServiceInfo;-><init>()V

    iput-object v9, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 241
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    new-instance v10, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v10}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v10, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 242
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v0, p3

    iput-object v0, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 243
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->getServiceName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 245
    const-string v9, "com.nxp.uicc.ID"

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 246
    const/16 v16, 0x2

    .line 254
    :goto_0
    new-instance v11, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    move/from16 v0, v16

    invoke-direct {v11, v0, v15}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;-><init>(II)V

    .line 255
    .local v11, "mEseInfo":Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    new-instance v1, Landroid/nfc/cardemulation/ApduServiceInfo;

    .end local v1    # "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    const-string v10, "Fixme: NXP:<Activity Name>"

    const/4 v12, 0x0

    move/from16 v9, p2

    invoke-direct/range {v1 .. v14}, Landroid/nfc/cardemulation/ApduServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIILjava/lang/String;Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;Ljava/util/ArrayList;Landroid/graphics/drawable/Drawable;Z)V

    .line 257
    .restart local v1    # "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    return-object v1

    .line 247
    .end local v11    # "mEseInfo":Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    :cond_0
    const-string v9, "com.nxp.smart_mx.ID"

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 248
    const/16 v16, 0x1

    goto :goto_0

    .line 249
    :cond_1
    const-string v9, "com.nxp.host.ID"

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 250
    const/16 v16, 0x0

    goto :goto_0

    .line 252
    :cond_2
    const-string v9, "NxpNfcController"

    const-string v10, "wrong Se name"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mState:Z

    return v0
.end method

.method static synthetic access$002(Lcom/nxp/nfc/gsma/internal/NxpNfcController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nxp/nfc/gsma/internal/NxpNfcController;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mState:Z

    return p1
.end method

.method static synthetic access$100(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mDialogBoxFlag:Z

    return v0
.end method

.method static synthetic access$102(Lcom/nxp/nfc/gsma/internal/NxpNfcController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nxp/nfc/gsma/internal/NxpNfcController;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mDialogBoxFlag:Z

    return p1
.end method

.method static synthetic access$202(Lcom/nxp/nfc/gsma/internal/NxpNfcController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nxp/nfc/gsma/internal/NxpNfcController;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mEnable:Z

    return p1
.end method

.method static synthetic access$300(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mCallBack:Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method


# virtual methods
.method public commitOffHostService(ILjava/lang/String;Lcom/nxp/nfc/gsma/internal/NxpOffHostService;)Z
    .locals 7
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "service"    # Lcom/nxp/nfc/gsma/internal/NxpOffHostService;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 327
    const/4 v2, 0x0

    .line 329
    .local v2, "result":Z
    invoke-virtual {p3}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->getServiceName()Ljava/lang/String;

    move-result-object v3

    .line 330
    .local v3, "serviceName":Ljava/lang/String;
    invoke-direct {p0, p3, p1, p2}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->ConvertOffhostServiceToApduService(Lcom/nxp/nfc/gsma/internal/NxpOffHostService;ILjava/lang/String;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v1

    .line 332
    .local v1, "newService":Landroid/nfc/cardemulation/ApduServiceInfo;
    :try_start_0
    iget-object v6, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    if-eqz v6, :cond_0

    .line 333
    iget-object v6, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    invoke-interface {v6, p1, p2, v3, v1}, Lcom/nxp/nfc/gsma/internal/INxpNfcController;->commitOffHostService(ILjava/lang/String;Ljava/lang/String;Landroid/nfc/cardemulation/ApduServiceInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 339
    :cond_0
    if-eq v2, v5, :cond_1

    .line 340
    const-string v5, "NxpNfcController"

    const-string v6, "GSMA: commitOffHostService Failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :goto_0
    return v4

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "NxpNfcController"

    const-string v6, "Exception:commitOffHostService failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    move v4, v5

    .line 343
    goto :goto_0
.end method

.method public commitOffHostService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/util/List;)Z
    .locals 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "seName"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "bannerResId"    # I
    .param p5, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 356
    .local p6, "aidGroupDescriptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "aidGroups":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/AidGroup;>;"
    const/16 v18, 0x0

    .line 357
    .local v18, "result":Z
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    .line 358
    .local v10, "userId":I
    const/16 v21, 0x0

    .line 359
    .local v21, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    const/4 v4, 0x0

    .line 360
    .local v4, "onHost":Z
    const/4 v6, 0x0

    .line 361
    .local v6, "staticAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 362
    .local v7, "dynamicAidGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    move-object/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 363
    const/4 v8, 0x0

    .line 364
    .local v8, "requiresUnlock":Z
    const/4 v14, 0x0

    .line 365
    .local v14, "DrawableResource":Landroid/graphics/drawable/Drawable;
    const/16 v19, 0x0

    .line 366
    .local v19, "seId":I
    const/16 v17, -0x1

    .line 367
    .local v17, "powerstate":I
    const/4 v15, 0x1

    .line 370
    .local v15, "modifiable":Z
    new-instance v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 371
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v5, Landroid/content/pm/ServiceInfo;

    invoke-direct {v5}, Landroid/content/pm/ServiceInfo;-><init>()V

    iput-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 372
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    new-instance v9, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v9}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v9, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 373
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v0, p1

    iput-object v0, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 374
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v0, p2

    iput-object v0, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 377
    const/16 v20, 0x0

    .line 378
    .local v20, "secureElement":Ljava/lang/String;
    const-string v5, "SIM"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 379
    const-string v20, "com.nxp.uicc.ID"

    .line 384
    :goto_0
    const-string v5, "com.nxp.uicc.ID"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 385
    const/16 v19, 0x2

    .line 394
    :goto_1
    new-instance v12, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    move/from16 v0, v19

    move/from16 v1, v17

    invoke-direct {v12, v0, v1}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;-><init>(II)V

    .line 395
    .local v12, "mEseInfo":Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    new-instance v2, Landroid/nfc/cardemulation/ApduServiceInfo;

    const-string v11, "Fixme: NXP:<Activity Name>"

    const/4 v13, 0x0

    move-object/from16 v5, p3

    move/from16 v9, p4

    invoke-direct/range {v2 .. v15}, Landroid/nfc/cardemulation/ApduServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIILjava/lang/String;Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;Ljava/util/ArrayList;Landroid/graphics/drawable/Drawable;Z)V

    .line 399
    .local v2, "newService":Landroid/nfc/cardemulation/ApduServiceInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mSeNameApduService:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    if-eqz v5, :cond_0

    .line 403
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v5, v10, v0, v1, v2}, Lcom/nxp/nfc/gsma/internal/INxpNfcController;->commitOffHostService(ILjava/lang/String;Ljava/lang/String;Landroid/nfc/cardemulation/ApduServiceInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    .line 409
    :cond_0
    const/4 v5, 0x1

    move/from16 v0, v18

    if-eq v0, v5, :cond_5

    .line 410
    const-string v5, "NxpNfcController"

    const-string v9, "GSMA: commitOffHostService Failed"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const/4 v5, 0x0

    .line 413
    :goto_2
    return v5

    .line 381
    .end local v2    # "newService":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v12    # "mEseInfo":Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    :cond_1
    const-string v20, "com.nxp.uicc.ID"

    goto :goto_0

    .line 386
    :cond_2
    const-string v5, "com.nxp.smart_mx.ID"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 387
    const/16 v19, 0x1

    goto :goto_1

    .line 388
    :cond_3
    const-string v5, "com.nxp.host.ID"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 389
    const/16 v19, 0x0

    goto :goto_1

    .line 391
    :cond_4
    const-string v5, "NxpNfcController"

    const-string v9, "wrong Se name"

    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 405
    .restart local v2    # "newService":Landroid/nfc/cardemulation/ApduServiceInfo;
    .restart local v12    # "mEseInfo":Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    :catch_0
    move-exception v16

    .line 406
    .local v16, "e":Landroid/os/RemoteException;
    const-string v5, "NxpNfcController"

    const-string v9, "Exception:commitOffHostService failed"

    move-object/from16 v0, v16

    invoke-static {v5, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 407
    const/4 v5, 0x0

    goto :goto_2

    .line 413
    .end local v16    # "e":Landroid/os/RemoteException;
    :cond_5
    const/4 v5, 0x1

    goto :goto_2
.end method

.method public deleteOffHostService(ILjava/lang/String;Lcom/nxp/nfc/gsma/internal/NxpOffHostService;)Z
    .locals 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "service"    # Lcom/nxp/nfc/gsma/internal/NxpOffHostService;

    .prologue
    const/4 v3, 0x1

    .line 265
    const/4 v2, 0x0

    .line 267
    .local v2, "result":Z
    invoke-direct {p0, p3, p1, p2}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->ConvertOffhostServiceToApduService(Lcom/nxp/nfc/gsma/internal/NxpOffHostService;ILjava/lang/String;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v0

    .line 269
    .local v0, "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    :try_start_0
    iget-object v4, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    invoke-interface {v4, p1, p2, v0}, Lcom/nxp/nfc/gsma/internal/INxpNfcController;->deleteOffHostService(ILjava/lang/String;Landroid/nfc/cardemulation/ApduServiceInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 273
    :goto_0
    if-eq v2, v3, :cond_0

    .line 274
    const-string v3, "NxpNfcController"

    const-string v4, "GSMA: deleteOffHostService failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/4 v3, 0x0

    .line 277
    :cond_0
    return v3

    .line 270
    :catch_0
    move-exception v1

    .line 271
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "NxpNfcController"

    const-string v5, "Exception:deleteOffHostService failed"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public deleteOffHostService(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "seName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 422
    const/4 v1, 0x0

    .line 423
    .local v1, "result":Z
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 426
    .local v2, "userId":I
    :try_start_0
    iget-object v5, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    iget-object v3, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mSeNameApduService:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-interface {v5, v2, p1, v3}, Lcom/nxp/nfc/gsma/internal/INxpNfcController;->deleteOffHostService(ILjava/lang/String;Landroid/nfc/cardemulation/ApduServiceInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 430
    :goto_0
    if-eq v1, v4, :cond_0

    .line 431
    const-string v3, "NxpNfcController"

    const-string v4, "GSMA: deleteOffHostService failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const/4 v3, 0x0

    .line 434
    :goto_1
    return v3

    .line 427
    :catch_0
    move-exception v0

    .line 428
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "NxpNfcController"

    const-string v5, "Exception:deleteOffHostService failed"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    move v3, v4

    .line 434
    goto :goto_1
.end method

.method public enableMultiReception(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "seName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 521
    :try_start_0
    iget-object v1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    invoke-interface {v1, p2, p1}, Lcom/nxp/nfc/gsma/internal/INxpNfcController;->enableMultiReception(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    :goto_0
    return-void

    .line 522
    :catch_0
    move-exception v0

    .line 523
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NxpNfcController"

    const-string v2, "enableMultiReception failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enableNxpNfcController(Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;)V
    .locals 5
    .param p1, "cb"    # Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mCallBack:Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;

    .line 167
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 168
    .local v2, "ownerFilter":Landroid/content/IntentFilter;
    const-string v3, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    iget-object v3, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 171
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 172
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "com.gsma.services.nfc.action.ENABLE_NFC_SET_FALG"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    iget-object v3, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 176
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 177
    .local v0, "enableNfc":Landroid/content/Intent;
    const-string v3, "com.gsma.services.nfc.action.ENABLE_NFC"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    iget-object v3, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 179
    return-void
.end method

.method public getDefaultOffHostService(ILjava/lang/String;)Lcom/nxp/nfc/gsma/internal/NxpOffHostService;
    .locals 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 307
    iget-object v4, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 309
    .local v3, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v4, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    invoke-interface {v4, p1, p2}, Lcom/nxp/nfc/gsma/internal/INxpNfcController;->getDefaultOffHostService(ILjava/lang/String;)Landroid/nfc/cardemulation/ApduServiceInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 314
    .local v0, "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v0, :cond_0

    .line 315
    invoke-direct {p0, v3, v0}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->ConvertApduServiceToOffHostService(Landroid/content/pm/PackageManager;Landroid/nfc/cardemulation/ApduServiceInfo;)Lcom/nxp/nfc/gsma/internal/NxpOffHostService;

    move-result-object v2

    .line 319
    .end local v0    # "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    :goto_0
    return-object v2

    .line 310
    :catch_0
    move-exception v1

    .line 311
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "NxpNfcController"

    const-string v5, "getDefaultOffHostService failed"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 318
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_0
    const-string v4, "NxpNfcController"

    const-string v5, "getDefaultOffHostService: Service is NULL"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDefaultOffHostService(Ljava/lang/String;Lcom/nxp/nfc/gsma/internal/NxpNfcController$Callbacks;)Z
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callbacks"    # Lcom/nxp/nfc/gsma/internal/NxpNfcController$Callbacks;

    .prologue
    .line 485
    const-string v0, "NxpNfcController"

    const-string v2, "getDefaultOffHostService: Enter"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const/4 v1, 0x1

    .line 489
    .local v1, "isLast":Z
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    .line 490
    .local v11, "userId":I
    const/4 v3, 0x0

    .line 492
    .local v3, "seName":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    invoke-interface {v0, v11, p1}, Lcom/nxp/nfc/gsma/internal/INxpNfcController;->getDefaultOffHostService(ILjava/lang/String;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v8

    .line 493
    .local v8, "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    const/4 v0, 0x2

    invoke-virtual {v8}, Landroid/nfc/cardemulation/ApduServiceInfo;->getSEInfo()Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;->getSeId()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 494
    const-string v3, "com.nxp.uicc.ID"

    .line 496
    :cond_0
    const-string v0, "NxpNfcController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultOffHostService: seName = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 498
    .local v5, "groupDescription":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v8}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/nfc/cardemulation/AidGroup;

    .line 499
    .local v7, "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v7}, Landroid/nfc/cardemulation/AidGroup;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 505
    .end local v5    # "groupDescription":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    .end local v8    # "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v10    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v9

    .line 506
    .local v9, "e":Landroid/os/RemoteException;
    const-string v0, "NxpNfcController"

    const-string v2, "getDefaultOffHostService failed"

    invoke-static {v0, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 507
    const/4 v0, 0x0

    .line 511
    .end local v9    # "e":Landroid/os/RemoteException;
    :goto_1
    return v0

    .line 502
    .restart local v5    # "groupDescription":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-virtual {v8}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Landroid/nfc/cardemulation/ApduServiceInfo;->getBannerId()I

    move-result v4

    invoke-virtual {v8}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    move-result-object v6

    move-object v0, p2

    invoke-interface/range {v0 .. v6}, Lcom/nxp/nfc/gsma/internal/NxpNfcController$Callbacks;->onGetOffHostService(ZLjava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 510
    const-string v0, "NxpNfcController"

    const-string v2, "getDefaultOffHostService: End"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public getOffHostServices(ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nxp/nfc/gsma/internal/NxpOffHostService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v0, "apduServices":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v3, "mService":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nxp/nfc/gsma/internal/NxpOffHostService;>;"
    iget-object v6, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 289
    .local v4, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v6, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    invoke-interface {v6, p1, p2}, Lcom/nxp/nfc/gsma/internal/INxpNfcController;->getOffHostServices(ILjava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 294
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 295
    .local v5, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-direct {p0, v4, v5}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->ConvertApduServiceToOffHostService(Landroid/content/pm/PackageManager;Landroid/nfc/cardemulation/ApduServiceInfo;)Lcom/nxp/nfc/gsma/internal/NxpOffHostService;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 290
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :catch_0
    move-exception v1

    .line 291
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "NxpNfcController"

    const-string v7, "getOffHostServices failed"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    const/4 v3, 0x0

    .line 297
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "mService":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nxp/nfc/gsma/internal/NxpOffHostService;>;"
    :cond_0
    return-object v3
.end method

.method public getOffHostServices(Ljava/lang/String;Lcom/nxp/nfc/gsma/internal/NxpNfcController$Callbacks;)Z
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callbacks"    # Lcom/nxp/nfc/gsma/internal/NxpNfcController$Callbacks;

    .prologue
    .line 443
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    .line 444
    .local v12, "userId":I
    const/4 v1, 0x0

    .line 445
    .local v1, "isLast":Z
    const/4 v3, 0x0

    .line 447
    .local v3, "seName":Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 449
    .local v8, "apduServices":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    :try_start_0
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    invoke-interface {v0, v12, p1}, Lcom/nxp/nfc/gsma/internal/INxpNfcController;->getOffHostServices(ILjava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 451
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_3

    .line 453
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v10, v0, :cond_0

    .line 454
    const/4 v1, 0x1

    .line 457
    :cond_0
    const/4 v2, 0x2

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getSEInfo()Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;->getSeId()I

    move-result v0

    if-ne v2, v0, :cond_1

    .line 458
    const-string v3, "com.nxp.uicc.ID"

    .line 461
    :cond_1
    const-string v0, "NxpNfcController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOffHostServices: seName = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 463
    .local v5, "groupDescription":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/nfc/cardemulation/AidGroup;

    .line 464
    .local v7, "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v7}, Landroid/nfc/cardemulation/AidGroup;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 471
    .end local v5    # "groupDescription":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    .end local v10    # "i":I
    .end local v11    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v9

    .line 472
    .local v9, "e":Landroid/os/RemoteException;
    const-string v0, "NxpNfcController"

    const-string v2, "getOffHostServices failed"

    invoke-static {v0, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 473
    const/4 v0, 0x0

    .line 476
    .end local v9    # "e":Landroid/os/RemoteException;
    :goto_2
    return v0

    .line 467
    .restart local v5    # "groupDescription":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "i":I
    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getBannerId()I

    move-result v4

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    move-result-object v6

    move-object v0, p2

    invoke-interface/range {v0 .. v6}, Lcom/nxp/nfc/gsma/internal/NxpNfcController$Callbacks;->onGetOffHostService(ZLjava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 451
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 476
    .end local v5    # "groupDescription":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_3
    const/4 v0, 0x1

    goto :goto_2
.end method

.method public isNxpNfcEnabled()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    return v0
.end method
