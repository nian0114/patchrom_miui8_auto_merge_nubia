.class public Lcom/android/providers/settings/SettingsProvider;
.super Landroid/content/ContentProvider;
.source "SettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;,
        Lcom/android/providers/settings/SettingsProvider$Arguments;
    }
.end annotation


# static fields
.field private static final ALL_COLUMNS:[Ljava/lang/String;

.field private static final DROP_DATABASE_ON_MIGRATION:Z

.field private static final NULL_SETTING:Landroid/os/Bundle;

.field private static final REMOVED_LEGACY_TABLES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final sGlobalMovedToSecureSettings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSecureCloneToCloneBoxSettings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSecureCloneToManagedSettings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final sSecureMovedToGlobalSettings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSettingToUserRestrictionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSystemCloneToCloneBoxSettings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSystemCloneToManagedSettings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final sSystemMovedToGlobalSettings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final sSystemMovedToSecureSettings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private volatile mPackageManager:Landroid/content/pm/PackageManager;

.field private mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private volatile mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 124
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/providers/settings/SettingsProvider;->DROP_DATABASE_ON_MIGRATION:Z

    .line 145
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->REMOVED_LEGACY_TABLES:Ljava/util/Set;

    .line 147
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->REMOVED_LEGACY_TABLES:Ljava/util/Set;

    const-string v3, "favorites"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 148
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->REMOVED_LEGACY_TABLES:Ljava/util/Set;

    const-string v3, "old_favorites"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 149
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->REMOVED_LEGACY_TABLES:Ljava/util/Set;

    const-string v3, "bluetooth_devices"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 150
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->REMOVED_LEGACY_TABLES:Ljava/util/Set;

    const-string v3, "bookmarks"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->REMOVED_LEGACY_TABLES:Ljava/util/Set;

    const-string v3, "android_metadata"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->ALL_COLUMNS:[Ljava/lang/String;

    .line 164
    const-string v0, "value"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->NULL_SETTING:Landroid/os/Bundle;

    .line 167
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSettingToUserRestrictionMap:Ljava/util/Map;

    .line 169
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSettingToUserRestrictionMap:Ljava/util/Map;

    const-string v1, "location_mode"

    const-string v2, "no_share_location"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSettingToUserRestrictionMap:Ljava/util/Map;

    const-string v1, "location_providers_allowed"

    const-string v2, "no_share_location"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSettingToUserRestrictionMap:Ljava/util/Map;

    const-string v1, "install_non_market_apps"

    const-string v2, "no_install_unknown_sources"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSettingToUserRestrictionMap:Ljava/util/Map;

    const-string v1, "adb_enabled"

    const-string v2, "no_debugging_features"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSettingToUserRestrictionMap:Ljava/util/Map;

    const-string v1, "package_verifier_enable"

    const-string v2, "ensure_verify_apps"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSettingToUserRestrictionMap:Ljava/util/Map;

    const-string v1, "preferred_network_mode"

    const-string v2, "no_config_mobile_networks"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSecureMovedToGlobalSettings:Ljava/util/Set;

    .line 186
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSecureMovedToGlobalSettings:Ljava/util/Set;

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getMovedToGlobalSettings(Ljava/util/Set;)V

    .line 190
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemMovedToGlobalSettings:Ljava/util/Set;

    .line 192
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemMovedToGlobalSettings:Ljava/util/Set;

    invoke-static {v0}, Landroid/provider/Settings$System;->getMovedToGlobalSettings(Ljava/util/Set;)V

    .line 196
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemMovedToSecureSettings:Ljava/util/Set;

    .line 198
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemMovedToSecureSettings:Ljava/util/Set;

    invoke-static {v0}, Landroid/provider/Settings$System;->getMovedToSecureSettings(Ljava/util/Set;)V

    .line 202
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sGlobalMovedToSecureSettings:Ljava/util/Set;

    .line 204
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sGlobalMovedToSecureSettings:Ljava/util/Set;

    invoke-static {v0}, Landroid/provider/Settings$Global;->getMovedToSecureSettings(Ljava/util/Set;)V

    .line 208
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSecureCloneToManagedSettings:Ljava/util/Set;

    .line 210
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSecureCloneToManagedSettings:Ljava/util/Set;

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getCloneToManagedProfileSettings(Ljava/util/Set;)V

    .line 214
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemCloneToManagedSettings:Ljava/util/Set;

    .line 216
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemCloneToManagedSettings:Ljava/util/Set;

    invoke-static {v0}, Landroid/provider/Settings$System;->getCloneToManagedProfileSettings(Ljava/util/Set;)V

    .line 220
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemCloneToCloneBoxSettings:Ljava/util/Set;

    .line 222
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemCloneToCloneBoxSettings:Ljava/util/Set;

    invoke-static {v0}, Landroid/provider/Settings$System;->getCloneToCloneBoxSettings(Ljava/util/Set;)V

    .line 224
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSecureCloneToCloneBoxSettings:Ljava/util/Set;

    .line 226
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSecureCloneToCloneBoxSettings:Ljava/util/Set;

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getCloneToCloneBoxSettings(Ljava/util/Set;)V

    .line 227
    return-void

    :cond_0
    move v0, v2

    .line 124
    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 230
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    .line 1416
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/settings/SettingsProvider;)Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/settings/SettingsProvider;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/providers/settings/SettingsProvider;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/settings/SettingsProvider;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/util/Set;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemCloneToCloneBoxSettings:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1100()Ljava/util/Set;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemCloneToManagedSettings:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/Uri;

    .prologue
    .line 121
    invoke-static {p0}, Lcom/android/providers/settings/SettingsProvider;->getValidTableOrThrow(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/providers/settings/SettingsProvider;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/settings/SettingsProvider;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 121
    sget-boolean v0, Lcom/android/providers/settings/SettingsProvider;->DROP_DATABASE_ON_MIGRATION:Z

    return v0
.end method

.method static synthetic access$600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->ALL_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/providers/settings/SettingsProvider;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/settings/SettingsProvider;
    .param p1, "x1"    # I

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->isVirtualBox(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800()Ljava/util/Set;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSecureCloneToCloneBoxSettings:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$900()Ljava/util/Set;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSecureCloneToManagedSettings:Ljava/util/Set;

    return-object v0
.end method

.method private static appendSettingToCursor(Landroid/database/MatrixCursor;Lcom/android/providers/settings/SettingsState$Setting;)V
    .locals 6
    .param p0, "cursor"    # Landroid/database/MatrixCursor;
    .param p1, "setting"    # Lcom/android/providers/settings/SettingsState$Setting;

    .prologue
    .line 1298
    invoke-virtual {p0}, Landroid/database/MatrixCursor;->getColumnCount()I

    move-result v1

    .line 1300
    .local v1, "columnCount":I
    new-array v3, v1, [Ljava/lang/String;

    .line 1302
    .local v3, "values":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1303
    invoke-virtual {p0, v2}, Landroid/database/MatrixCursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    .line 1305
    .local v0, "column":Ljava/lang/String;
    const/4 v4, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 1302
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1305
    :sswitch_0
    const-string v5, "_id"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :sswitch_1
    const-string v5, "name"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_2
    const-string v5, "value"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x2

    goto :goto_1

    .line 1307
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/providers/settings/SettingsState$Setting;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    goto :goto_2

    .line 1311
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/providers/settings/SettingsState$Setting;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    goto :goto_2

    .line 1315
    :pswitch_2
    invoke-virtual {p1}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    goto :goto_2

    .line 1320
    .end local v0    # "column":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1321
    return-void

    .line 1305
    :sswitch_data_0
    .sparse-switch
        0x171ba -> :sswitch_0
        0x337a8b -> :sswitch_1
        0x6ac9171 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private deleteGlobalSetting(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "requestingUserId"    # I

    .prologue
    .line 665
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/providers/settings/SettingsProvider;->mutateGlobalSetting(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private deleteSecureSetting(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "requestingUserId"    # I

    .prologue
    .line 781
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/providers/settings/SettingsProvider;->mutateSecureSetting(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private deleteSystemSetting(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "requestingUserId"    # I

    .prologue
    .line 910
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/providers/settings/SettingsProvider;->mutateSystemSetting(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private dumpForUser(ILjava/io/PrintWriter;)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 527
    if-nez p1, :cond_0

    .line 528
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GLOBAL SETTINGS (user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 529
    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->ALL_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/providers/settings/SettingsProvider;->getAllGlobalSettings([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 530
    .local v0, "globalCursor":Landroid/database/Cursor;
    invoke-direct {p0, v0, p2}, Lcom/android/providers/settings/SettingsProvider;->dumpSettings(Landroid/database/Cursor;Ljava/io/PrintWriter;)V

    .line 531
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 534
    .end local v0    # "globalCursor":Landroid/database/Cursor;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SECURE SETTINGS (user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 535
    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->ALL_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/android/providers/settings/SettingsProvider;->getAllSecureSettings(I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 536
    .local v1, "secureCursor":Landroid/database/Cursor;
    invoke-direct {p0, v1, p2}, Lcom/android/providers/settings/SettingsProvider;->dumpSettings(Landroid/database/Cursor;Ljava/io/PrintWriter;)V

    .line 537
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 539
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SYSTEM SETTINGS (user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 540
    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->ALL_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/android/providers/settings/SettingsProvider;->getAllSystemSettings(I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 541
    .local v2, "systemCursor":Landroid/database/Cursor;
    invoke-direct {p0, v2, p2}, Lcom/android/providers/settings/SettingsProvider;->dumpSettings(Landroid/database/Cursor;Ljava/io/PrintWriter;)V

    .line 542
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 543
    return-void
.end method

.method private dumpSettings(Landroid/database/Cursor;Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 546
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_1

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 550
    :cond_1
    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 551
    .local v0, "idColumnIdx":I
    const-string v3, "name"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 552
    .local v1, "nameColumnIdx":I
    const-string v3, "value"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 555
    .local v2, "valueColumnIdx":I
    :cond_2
    const-string v3, "_id:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/providers/settings/SettingsProvider;->toDumpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 556
    const-string v3, " name:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/providers/settings/SettingsProvider;->toDumpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 557
    const-string v3, " value:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/providers/settings/SettingsProvider;->toDumpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 558
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 559
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0
.end method

.method private enforceRestrictedSystemSettingsMutationForCallingPackage(ILjava/lang/String;)V
    .locals 4
    .param p1, "operation"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1060
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1061
    .local v0, "callingUid":I
    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_0

    const/16 v2, 0x7d0

    if-eq v0, v2, :cond_0

    if-nez v0, :cond_1

    .line 1108
    :cond_0
    :goto_0
    return-void

    .line 1067
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1071
    :pswitch_0
    sget-object v2, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1076
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackageInfoOrThrow()Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1079
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    invoke-static {v1, p2}, Landroid/provider/MiuiSettings$System;->isMiuiPublicSettings(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1084
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v2, p2}, Lcom/android/providers/settings/SettingsProvider;->warnOrThrowForUndesiredSecureSettingsMutationForTargetSdk(ILjava/lang/String;)V

    goto :goto_0

    .line 1089
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :pswitch_1
    sget-object v2, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1091
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "You cannot delete system defined secure settings."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1096
    :cond_3
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackageInfoOrThrow()Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1099
    .restart local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    invoke-static {v1, p2}, Landroid/provider/MiuiSettings$System;->isMiuiPublicSettings(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1104
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v2, p2}, Lcom/android/providers/settings/SettingsProvider;->warnOrThrowForUndesiredSecureSettingsMutationForTargetSdk(ILjava/lang/String;)V

    goto :goto_0

    .line 1067
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private enforceWritePermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 1136
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1138
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission denial: writing to settings requires:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1141
    :cond_0
    return-void
.end method

.method private getAllGlobalSettings([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .param p1, "projection"    # [Ljava/lang/String;

    .prologue
    .line 612
    iget-object v9, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 614
    :try_start_0
    iget-object v8, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;

    move-result-object v7

    .line 617
    .local v7, "settingsState":Lcom/android/providers/settings/SettingsState;
    invoke-virtual {v7}, Lcom/android/providers/settings/SettingsState;->getSettingNamesLocked()Ljava/util/List;

    move-result-object v3

    .line 619
    .local v3, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 621
    .local v2, "nameCount":I
    invoke-static {p1}, Lcom/android/providers/settings/SettingsProvider;->normalizeProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 622
    .local v4, "normalizedProjection":[Ljava/lang/String;
    new-instance v5, Landroid/database/MatrixCursor;

    invoke-direct {v5, v4, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 625
    .local v5, "result":Landroid/database/MatrixCursor;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 626
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 627
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v7, v1}, Lcom/android/providers/settings/SettingsState;->getSettingLocked(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v6

    .line 628
    .local v6, "setting":Lcom/android/providers/settings/SettingsState$Setting;
    invoke-static {v5, v6}, Lcom/android/providers/settings/SettingsProvider;->appendSettingToCursor(Landroid/database/MatrixCursor;Lcom/android/providers/settings/SettingsState$Setting;)V

    .line 625
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 631
    .end local v1    # "name":Ljava/lang/String;
    .end local v6    # "setting":Lcom/android/providers/settings/SettingsState$Setting;
    :cond_0
    monitor-exit v9

    return-object v5

    .line 632
    .end local v0    # "i":I
    .end local v2    # "nameCount":I
    .end local v3    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "normalizedProjection":[Ljava/lang/String;
    .end local v5    # "result":Landroid/database/MatrixCursor;
    .end local v7    # "settingsState":Lcom/android/providers/settings/SettingsState;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method private getAllSecureSettings(I[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .param p1, "userId"    # I
    .param p2, "projection"    # [Ljava/lang/String;

    .prologue
    .line 713
    invoke-static {p1}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v0

    .line 715
    .local v0, "callingUserId":I
    iget-object v10, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 716
    :try_start_0
    iget-object v9, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v11, 0x2

    invoke-virtual {v9, v11, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsNamesLocked(II)Ljava/util/List;

    move-result-object v4

    .line 719
    .local v4, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 721
    .local v3, "nameCount":I
    invoke-static {p2}, Lcom/android/providers/settings/SettingsProvider;->normalizeProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 722
    .local v5, "normalizedProjection":[Ljava/lang/String;
    new-instance v7, Landroid/database/MatrixCursor;

    invoke-direct {v7, v5, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 724
    .local v7, "result":Landroid/database/MatrixCursor;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 725
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 727
    .local v2, "name":Ljava/lang/String;
    invoke-direct {p0, v0, v2}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSecureSettingLocked(ILjava/lang/String;)I

    move-result v6

    .line 731
    .local v6, "owningUserId":I
    invoke-direct {p0, v2, v0, v6}, Lcom/android/providers/settings/SettingsProvider;->isLocationProvidersAllowedRestricted(Ljava/lang/String;II)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 732
    const/4 v7, 0x0

    monitor-exit v10

    .line 740
    .end local v2    # "name":Ljava/lang/String;
    .end local v6    # "owningUserId":I
    .end local v7    # "result":Landroid/database/MatrixCursor;
    :goto_1
    return-object v7

    .line 735
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v6    # "owningUserId":I
    .restart local v7    # "result":Landroid/database/MatrixCursor;
    :cond_0
    iget-object v9, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v11, 0x2

    invoke-virtual {v9, v11, v6, v2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v8

    .line 737
    .local v8, "setting":Lcom/android/providers/settings/SettingsState$Setting;
    invoke-static {v7, v8}, Lcom/android/providers/settings/SettingsProvider;->appendSettingToCursor(Landroid/database/MatrixCursor;Lcom/android/providers/settings/SettingsState$Setting;)V

    .line 724
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 740
    .end local v2    # "name":Ljava/lang/String;
    .end local v6    # "owningUserId":I
    .end local v8    # "setting":Lcom/android/providers/settings/SettingsState$Setting;
    :cond_1
    monitor-exit v10

    goto :goto_1

    .line 741
    .end local v1    # "i":I
    .end local v3    # "nameCount":I
    .end local v4    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "normalizedProjection":[Ljava/lang/String;
    .end local v7    # "result":Landroid/database/MatrixCursor;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9
.end method

.method private getAllSystemSettings(I[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .param p1, "userId"    # I
    .param p2, "projection"    # [Ljava/lang/String;

    .prologue
    .line 851
    invoke-static {p1}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v0

    .line 853
    .local v0, "callingUserId":I
    iget-object v10, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 854
    :try_start_0
    iget-object v9, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v11, 0x1

    invoke-virtual {v9, v11, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsNamesLocked(II)Ljava/util/List;

    move-result-object v4

    .line 857
    .local v4, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 859
    .local v3, "nameCount":I
    invoke-static {p2}, Lcom/android/providers/settings/SettingsProvider;->normalizeProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 860
    .local v5, "normalizedProjection":[Ljava/lang/String;
    new-instance v7, Landroid/database/MatrixCursor;

    invoke-direct {v7, v5, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 862
    .local v7, "result":Landroid/database/MatrixCursor;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 863
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 866
    .local v2, "name":Ljava/lang/String;
    invoke-direct {p0, v0, v2}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSystemSettingLocked(ILjava/lang/String;)I

    move-result v6

    .line 869
    .local v6, "owningUserId":I
    iget-object v9, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v11, 0x1

    invoke-virtual {v9, v11, v6, v2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v8

    .line 871
    .local v8, "setting":Lcom/android/providers/settings/SettingsState$Setting;
    invoke-static {v7, v8}, Lcom/android/providers/settings/SettingsProvider;->appendSettingToCursor(Landroid/database/MatrixCursor;Lcom/android/providers/settings/SettingsState$Setting;)V

    .line 862
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 874
    .end local v2    # "name":Ljava/lang/String;
    .end local v6    # "owningUserId":I
    .end local v8    # "setting":Lcom/android/providers/settings/SettingsState$Setting;
    :cond_0
    monitor-exit v10

    return-object v7

    .line 875
    .end local v1    # "i":I
    .end local v3    # "nameCount":I
    .end local v4    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "normalizedProjection":[Ljava/lang/String;
    .end local v7    # "result":Landroid/database/MatrixCursor;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9
.end method

.method private getCallingPackageInfoOrThrow()Landroid/content/pm/PackageInfo;
    .locals 4

    .prologue
    .line 1112
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1113
    :catch_0
    move-exception v0

    .line 1114
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Calling package doesn\'t exist"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getGlobalSetting(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 641
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 642
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 644
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getGroupParentLocked(I)I
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 1120
    if-nez p1, :cond_0

    .line 1131
    .end local p1    # "userId":I
    :goto_0
    return p1

    .line 1125
    .restart local p1    # "userId":I
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1128
    .local v0, "identity":J
    :try_start_0
    iget-object v3, p0, Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1129
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_1

    iget p1, v2, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1131
    .end local p1    # "userId":I
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local p1    # "userId":I
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private static getRequestingUserId(Landroid/os/Bundle;)I
    .locals 2
    .param p0, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1252
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1253
    .local v0, "callingUserId":I
    if-eqz p0, :cond_0

    const-string v1, "_user"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .end local v0    # "callingUserId":I
    :cond_0
    return v0
.end method

.method private getSecureSetting(Ljava/lang/String;I)Lcom/android/providers/settings/SettingsState$Setting;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "requestingUserId"    # I

    .prologue
    .line 750
    invoke-static {p2}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v0

    .line 753
    .local v0, "callingUserId":I
    invoke-direct {p0, v0, p1}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSecureSettingLocked(ILjava/lang/String;)I

    move-result v1

    .line 756
    .local v1, "owningUserId":I
    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/SettingsProvider;->isLocationProvidersAllowedRestricted(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 757
    const/4 v2, 0x0

    .line 762
    :goto_0
    return-object v2

    .line 761
    :cond_0
    iget-object v3, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 762
    :try_start_0
    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v1, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v2

    monitor-exit v3

    goto :goto_0

    .line 764
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static getSettingValue(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p0, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1258
    if-eqz p0, :cond_0

    const-string v0, "value"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSystemSetting(Ljava/lang/String;I)Lcom/android/providers/settings/SettingsState$Setting;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "requestingUserId"    # I

    .prologue
    .line 884
    invoke-static {p2}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v0

    .line 887
    .local v0, "callingUserId":I
    invoke-direct {p0, v0, p1}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSystemSettingLocked(ILjava/lang/String;)I

    move-result v1

    .line 890
    .local v1, "owningUserId":I
    iget-object v3, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 891
    :try_start_0
    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v1, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v2

    monitor-exit v3

    return-object v2

    .line 893
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static getValidTableOrThrow(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1262
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1263
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1264
    .local v0, "table":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/providers/settings/DatabaseHelper;->isValidTable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1265
    return-object v0

    .line 1267
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad root path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1269
    .end local v0    # "table":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid URI:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private hasWriteSecureSettingsPermission()Z
    .locals 2

    .prologue
    .line 977
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 979
    const/4 v0, 0x1

    .line 982
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private insertGlobalSetting(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "requestingUserId"    # I

    .prologue
    .line 658
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/settings/SettingsProvider;->mutateGlobalSetting(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private insertSecureSetting(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "requestingUserId"    # I

    .prologue
    .line 773
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/settings/SettingsProvider;->mutateSecureSetting(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private insertSystemSetting(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "requestingUserId"    # I

    .prologue
    .line 902
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/settings/SettingsProvider;->mutateSystemSetting(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private isGlobalOrSecureSettingRestrictedForUser(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1008
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sSettingToUserRestrictionMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1009
    .local v0, "restriction":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1010
    const/4 v1, 0x0

    .line 1012
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    goto :goto_0
.end method

.method private static isKeyValid(Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 1324
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/providers/settings/SettingsState;->isBinary(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLocationProvidersAllowedRestricted(Ljava/lang/String;II)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callingUserId"    # I
    .param p3, "owningUserId"    # I

    .prologue
    const/4 v0, 0x0

    .line 996
    if-ne p2, p3, :cond_1

    .line 1004
    :cond_0
    :goto_0
    return v0

    .line 999
    :cond_1
    const-string v1, "location_providers_allowed"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;

    const-string v2, "no_share_location"

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1002
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isVirtualBox(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 1038
    :try_start_0
    invoke-static {}, Lcom/cmx/cmplus/SmartContainerManagerNative;->get()Lcom/cmx/cmplus/ISmartContainerManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cmx/cmplus/ISmartContainerManager;->getContainerInfo(I)Lcom/cmx/cmplus/ContainerInfo;

    move-result-object v0

    .line 1039
    .local v0, "ci":Lcom/cmx/cmplus/ContainerInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmx/cmplus/ContainerInfo;->isVirtualBox()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 1040
    const/4 v2, 0x1

    .line 1045
    .end local v0    # "ci":Lcom/cmx/cmplus/ContainerInfo;
    :goto_0
    return v2

    .line 1042
    :catch_0
    move-exception v1

    .line 1043
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SettingsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Container service error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private mutateGlobalSetting(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "requestingUserId"    # I
    .param p4, "operation"    # I

    .prologue
    const/4 v0, 0x0

    .line 671
    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {p0, v1}, Lcom/android/providers/settings/SettingsProvider;->enforceWritePermission(Ljava/lang/String;)V

    .line 674
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v6

    .line 677
    .local v6, "callingUserId":I
    invoke-direct {p0, p1, v6}, Lcom/android/providers/settings/SettingsProvider;->isGlobalOrSecureSettingRestrictedForUser(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 704
    :goto_0
    return v0

    .line 682
    :cond_0
    iget-object v7, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 683
    packed-switch p4, :pswitch_data_0

    .line 702
    :try_start_0
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 685
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->insertSettingLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    monitor-exit v7

    goto :goto_0

    .line 691
    :pswitch_1
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->deleteSettingLocked(IILjava/lang/String;)Z

    move-result v0

    monitor-exit v7

    goto :goto_0

    .line 697
    :pswitch_2
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->updateSettingLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 683
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private mutateSecureSetting(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "requestingUserId"    # I
    .param p4, "operation"    # I

    .prologue
    const/4 v0, 0x0

    .line 796
    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {p0, v1}, Lcom/android/providers/settings/SettingsProvider;->enforceWritePermission(Ljava/lang/String;)V

    .line 799
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v6

    .line 802
    .local v6, "callingUserId":I
    invoke-direct {p0, p1, v6}, Lcom/android/providers/settings/SettingsProvider;->isGlobalOrSecureSettingRestrictedForUser(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 842
    :cond_0
    :goto_0
    return v0

    .line 807
    :cond_1
    invoke-direct {p0, v6, p1}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSecureSettingLocked(ILjava/lang/String;)I

    move-result v2

    .line 810
    .local v2, "owningUserId":I
    if-ne v2, v6, :cond_0

    .line 815
    const-string v1, "location_providers_allowed"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 816
    invoke-direct {p0, p2, v2}, Lcom/android/providers/settings/SettingsProvider;->updateLocationProvidersAllowedLocked(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    .line 820
    :cond_2
    iget-object v7, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 821
    packed-switch p4, :pswitch_data_0

    .line 840
    :try_start_0
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 823
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->insertSettingLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    monitor-exit v7

    goto :goto_0

    .line 829
    :pswitch_1
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->deleteSettingLocked(IILjava/lang/String;)Z

    move-result v0

    monitor-exit v7

    goto :goto_0

    .line 835
    :pswitch_2
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->updateSettingLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 821
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private mutateSystemSetting(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "runAsUserId"    # I
    .param p4, "operation"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 924
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->hasWriteSecureSettingsPermission()Z

    move-result v1

    if-nez v1, :cond_1

    .line 927
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4, v5}, Landroid/provider/Settings;->checkAndNoteWriteSettingsOperation(Landroid/content/Context;ILjava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 971
    :cond_0
    :goto_0
    return v0

    .line 934
    :cond_1
    invoke-direct {p0, p4, p1}, Lcom/android/providers/settings/SettingsProvider;->enforceRestrictedSystemSettingsMutationForCallingPackage(ILjava/lang/String;)V

    .line 937
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v6

    .line 940
    .local v6, "callingUserId":I
    invoke-direct {p0, v6, p1}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSystemSettingLocked(ILjava/lang/String;)I

    move-result v2

    .line 943
    .local v2, "owningUserId":I
    if-ne v2, v6, :cond_0

    .line 948
    iget-object v7, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 949
    packed-switch p4, :pswitch_data_0

    .line 971
    :try_start_0
    monitor-exit v7

    goto :goto_0

    .line 972
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 951
    :pswitch_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->validateSystemSettingValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->insertSettingLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    monitor-exit v7

    goto :goto_0

    .line 958
    :pswitch_1
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->deleteSettingLocked(IILjava/lang/String;)Z

    move-result v0

    monitor-exit v7

    goto :goto_0

    .line 964
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->validateSystemSettingValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->updateSettingLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 949
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static normalizeProjection([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p0, "projection"    # [Ljava/lang/String;

    .prologue
    .line 1282
    if-nez p0, :cond_1

    .line 1283
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->ALL_COLUMNS:[Ljava/lang/String;

    .line 1294
    .local v1, "columnCount":I
    .local v2, "i":I
    :cond_0
    return-object p0

    .line 1286
    .end local v1    # "columnCount":I
    .end local v2    # "i":I
    :cond_1
    array-length v1, p0

    .line 1287
    .restart local v1    # "columnCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1288
    aget-object v0, p0, v2

    .line 1289
    .local v0, "column":Ljava/lang/String;
    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->ALL_COLUMNS:[Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/hardware/camera2/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1290
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid column: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1287
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static packageSettingForQuery(Lcom/android/providers/settings/SettingsState$Setting;[Ljava/lang/String;)Landroid/database/MatrixCursor;
    .locals 2
    .param p0, "setting"    # Lcom/android/providers/settings/SettingsState$Setting;
    .param p1, "projection"    # [Ljava/lang/String;

    .prologue
    .line 1273
    if-nez p0, :cond_0

    .line 1274
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 1278
    :goto_0
    return-object v0

    .line 1276
    :cond_0
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 1277
    .local v0, "cursor":Landroid/database/MatrixCursor;
    invoke-static {v0, p0}, Lcom/android/providers/settings/SettingsProvider;->appendSettingToCursor(Landroid/database/MatrixCursor;Lcom/android/providers/settings/SettingsState$Setting;)V

    goto :goto_0
.end method

.method private static packageValueForCallResult(Lcom/android/providers/settings/SettingsState$Setting;)Landroid/os/Bundle;
    .locals 2
    .param p0, "setting"    # Lcom/android/providers/settings/SettingsState$Setting;

    .prologue
    .line 1245
    if-nez p0, :cond_0

    .line 1246
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->NULL_SETTING:Landroid/os/Bundle;

    .line 1248
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "value"

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method private registerBroadcastReceivers()V
    .locals 6

    .prologue
    .line 570
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 571
    .local v1, "userFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 572
    const-string v2, "android.intent.action.USER_STOPPED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 574
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/providers/settings/SettingsProvider$1;

    invoke-direct {v3, p0}, Lcom/android/providers/settings/SettingsProvider$1;-><init>(Lcom/android/providers/settings/SettingsProvider;)V

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 592
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$2;

    invoke-direct {v0, p0}, Lcom/android/providers/settings/SettingsProvider$2;-><init>(Lcom/android/providers/settings/SettingsProvider;)V

    .line 603
    .local v0, "monitor":Lcom/android/internal/content/PackageMonitor;
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 605
    return-void
.end method

.method private static resolveCallingUserIdEnforcingPermissionsLocked(I)I
    .locals 7
    .param p0, "requestingUserId"    # I

    .prologue
    .line 1236
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-ne p0, v0, :cond_0

    .line 1239
    .end local p0    # "requestingUserId":I
    :goto_0
    return p0

    .restart local p0    # "requestingUserId":I
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "get/set setting for user"

    const/4 v6, 0x0

    move v2, p0

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p0

    goto :goto_0
.end method

.method private resolveOwningUserIdForSecureSettingLocked(ILjava/lang/String;)I
    .locals 1
    .param p1, "userId"    # I
    .param p2, "setting"    # Ljava/lang/String;

    .prologue
    .line 1017
    sget-boolean v0, Lcom/cmx/cmplus/SmartContainerConfig;->WITH_OUT_VIRTUAL_BOX:Z

    if-nez v0, :cond_0

    .line 1018
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->isVirtualBox(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1019
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSecureCloneToCloneBoxSettings:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdLocked(ILjava/util/Set;Ljava/lang/String;)I

    move-result v0

    .line 1022
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSecureCloneToManagedSettings:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdLocked(ILjava/util/Set;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private resolveOwningUserIdForSystemSettingLocked(ILjava/lang/String;)I
    .locals 1
    .param p1, "userId"    # I
    .param p2, "setting"    # Ljava/lang/String;

    .prologue
    .line 1027
    sget-boolean v0, Lcom/cmx/cmplus/SmartContainerConfig;->WITH_OUT_VIRTUAL_BOX:Z

    if-nez v0, :cond_0

    .line 1028
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->isVirtualBox(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1029
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemCloneToCloneBoxSettings:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdLocked(ILjava/util/Set;Ljava/lang/String;)I

    move-result v0

    .line 1032
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemCloneToManagedSettings:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdLocked(ILjava/util/Set;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private resolveOwningUserIdLocked(ILjava/util/Set;Ljava/lang/String;)I
    .locals 2
    .param p1, "userId"    # I
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1050
    .local p2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->getGroupParentLocked(I)I

    move-result v0

    .line 1051
    .local v0, "parentId":I
    if-eq v0, p1, :cond_0

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1054
    .end local v0    # "parentId":I
    :goto_0
    return v0

    .restart local v0    # "parentId":I
    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method private static toDumpString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 563
    if-eqz p0, :cond_0

    .line 566
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    const-string p0, "{null}"

    goto :goto_0
.end method

.method private updateGlobalSetting(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "requestingUserId"    # I

    .prologue
    .line 651
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/settings/SettingsProvider;->mutateGlobalSetting(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private updateLocationProvidersAllowedLocked(Ljava/lang/String;I)Z
    .locals 11
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "owningUserId"    # I

    .prologue
    const/16 v5, 0x2d

    const/16 v3, 0x2b

    const/16 v2, 0x2c

    const/4 v0, 0x0

    .line 1152
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1209
    :cond_0
    :goto_0
    return v0

    .line 1156
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 1157
    .local v9, "prefix":C
    if-eq v9, v3, :cond_2

    if-ne v9, v5, :cond_0

    .line 1162
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1164
    const-string v1, "location_providers_allowed"

    invoke-direct {p0, v1, p2}, Lcom/android/providers/settings/SettingsProvider;->getSecureSetting(Ljava/lang/String;I)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v10

    .line 1167
    .local v10, "settingValue":Lcom/android/providers/settings/SettingsState$Setting;
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 1169
    .local v8, "oldProviders":Ljava/lang/String;
    :goto_1
    invoke-virtual {v8, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 1170
    .local v7, "index":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int v6, v7, v1

    .line 1173
    .local v6, "end":I
    if-lez v7, :cond_3

    add-int/lit8 v1, v7, -0x1

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_3

    .line 1174
    const/4 v7, -0x1

    .line 1178
    :cond_3
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v6, v1, :cond_4

    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_4

    .line 1179
    const/4 v7, -0x1

    .line 1184
    :cond_4
    if-ne v9, v3, :cond_8

    if-gez v7, :cond_8

    .line 1186
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    .line 1187
    move-object v4, p1

    .line 1209
    .local v4, "newProviders":Ljava/lang/String;
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v1, 0x2

    const-string v3, "location_providers_allowed"

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v5

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->insertSettingLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 1167
    .end local v4    # "newProviders":Ljava/lang/String;
    .end local v6    # "end":I
    .end local v7    # "index":I
    .end local v8    # "oldProviders":Ljava/lang/String;
    :cond_6
    const-string v8, ""

    goto :goto_1

    .line 1189
    .restart local v6    # "end":I
    .restart local v7    # "index":I
    .restart local v8    # "oldProviders":Ljava/lang/String;
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "newProviders":Ljava/lang/String;
    goto :goto_2

    .line 1191
    .end local v4    # "newProviders":Ljava/lang/String;
    :cond_8
    if-ne v9, v5, :cond_0

    if-ltz v7, :cond_0

    .line 1194
    if-lez v7, :cond_a

    .line 1195
    add-int/lit8 v7, v7, -0x1

    .line 1200
    :cond_9
    :goto_3
    invoke-virtual {v8, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1201
    .restart local v4    # "newProviders":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v6, v0, :cond_5

    .line 1202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 1196
    .end local v4    # "newProviders":Ljava/lang/String;
    :cond_a
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v6, v1, :cond_9

    .line 1197
    add-int/lit8 v6, v6, 0x1

    goto :goto_3
.end method

.method private updateSecureSetting(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "requestingUserId"    # I

    .prologue
    .line 790
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/settings/SettingsProvider;->mutateSecureSetting(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private updateSystemSetting(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "requestingUserId"    # I

    .prologue
    .line 919
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/settings/SettingsProvider;->mutateSystemSetting(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private validateSystemSettingValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 986
    sget-object v1, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Settings$System$Validator;

    .line 987
    .local v0, "validator":Landroid/provider/Settings$System$Validator;
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Landroid/provider/Settings$System$Validator;->validate(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 988
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for setting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 991
    :cond_0
    return-void
.end method

.method private static warnOrThrowForUndesiredSecureSettingsMutationForTargetSdk(ILjava/lang/String;)V
    .locals 2
    .param p0, "targetSdkVersion"    # I
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1217
    const/16 v0, 0x16

    if-gt p0, v0, :cond_1

    .line 1218
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1219
    const-string v0, "SettingsProvider"

    const-string v1, "You shouldn\'t not change private system settings. This will soon become an error."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    :goto_0
    return-void

    .line 1222
    :cond_0
    const-string v0, "SettingsProvider"

    const-string v1, "You shouldn\'t keep your settings in the secure settings. This will soon become an error."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1226
    :cond_1
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1227
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot change private secure settings."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1229
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot keep your settings in the secure settings."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "allValues"    # [Landroid/content/ContentValues;

    .prologue
    .line 411
    const/4 v1, 0x0

    .line 412
    .local v1, "insertionCount":I
    array-length v3, p2

    .line 413
    .local v3, "valuesCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 414
    aget-object v2, p2, v0

    .line 415
    .local v2, "values":Landroid/content/ContentValues;
    invoke-virtual {p0, p1, v2}, Lcom/android/providers/settings/SettingsProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 416
    add-int/lit8 v1, v1, 0x1

    .line 413
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 420
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_1
    return v1
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 254
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getRequestingUserId(Landroid/os/Bundle;)I

    move-result v0

    .line 255
    .local v0, "requestingUserId":I
    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 290
    const-string v3, "SettingsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call() with invalid method: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :goto_1
    const/4 v3, 0x0

    :goto_2
    return-object v3

    .line 255
    :sswitch_0
    const-string v4, "GET_global"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :sswitch_1
    const-string v4, "GET_secure"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    const-string v4, "GET_system"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string v4, "PUT_global"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :sswitch_4
    const-string v4, "PUT_secure"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :sswitch_5
    const-string v4, "PUT_system"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    .line 257
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->getGlobalSetting(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v1

    .line 258
    .local v1, "setting":Lcom/android/providers/settings/SettingsState$Setting;
    invoke-static {v1}, Lcom/android/providers/settings/SettingsProvider;->packageValueForCallResult(Lcom/android/providers/settings/SettingsState$Setting;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_2

    .line 262
    .end local v1    # "setting":Lcom/android/providers/settings/SettingsState$Setting;
    :pswitch_1
    invoke-direct {p0, p2, v0}, Lcom/android/providers/settings/SettingsProvider;->getSecureSetting(Ljava/lang/String;I)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v1

    .line 263
    .restart local v1    # "setting":Lcom/android/providers/settings/SettingsState$Setting;
    invoke-static {v1}, Lcom/android/providers/settings/SettingsProvider;->packageValueForCallResult(Lcom/android/providers/settings/SettingsState$Setting;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_2

    .line 267
    .end local v1    # "setting":Lcom/android/providers/settings/SettingsState$Setting;
    :pswitch_2
    invoke-direct {p0, p2, v0}, Lcom/android/providers/settings/SettingsProvider;->getSystemSetting(Ljava/lang/String;I)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v1

    .line 268
    .restart local v1    # "setting":Lcom/android/providers/settings/SettingsState$Setting;
    invoke-static {v1}, Lcom/android/providers/settings/SettingsProvider;->packageValueForCallResult(Lcom/android/providers/settings/SettingsState$Setting;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_2

    .line 272
    .end local v1    # "setting":Lcom/android/providers/settings/SettingsState$Setting;
    :pswitch_3
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingValue(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, "value":Ljava/lang/String;
    invoke-direct {p0, p2, v2, v0}, Lcom/android/providers/settings/SettingsProvider;->insertGlobalSetting(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_1

    .line 278
    .end local v2    # "value":Ljava/lang/String;
    :pswitch_4
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingValue(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 279
    .restart local v2    # "value":Ljava/lang/String;
    invoke-direct {p0, p2, v2, v0}, Lcom/android/providers/settings/SettingsProvider;->insertSecureSetting(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_1

    .line 284
    .end local v2    # "value":Ljava/lang/String;
    :pswitch_5
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingValue(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 285
    .restart local v2    # "value":Ljava/lang/String;
    invoke-direct {p0, p2, v2, v0}, Lcom/android/providers/settings/SettingsProvider;->insertSystemSetting(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_1

    .line 255
    :sswitch_data_0
    .sparse-switch
        -0x118110d -> :sswitch_3
        0x12fa46c7 -> :sswitch_4
        0x141b5d7f -> :sswitch_5
        0x240c04cc -> :sswitch_0
        0x381e5ca0 -> :sswitch_1
        0x393f7358 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 429
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$Arguments;

    invoke-direct {v0, p1, p2, p3, v3}, Lcom/android/providers/settings/SettingsProvider$Arguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 432
    .local v0, "args":Lcom/android/providers/settings/SettingsProvider$Arguments;
    sget-object v4, Lcom/android/providers/settings/SettingsProvider;->REMOVED_LEGACY_TABLES:Ljava/util/Set;

    iget-object v5, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    .line 453
    :cond_0
    :goto_0
    return v2

    .line 436
    :cond_1
    iget-object v4, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/providers/settings/SettingsProvider;->isKeyValid(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    move v2, v3

    .line 437
    goto :goto_0

    .line 440
    :cond_2
    iget-object v5, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_3
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 457
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad Uri path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 440
    :sswitch_0
    const-string v6, "global"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v4, v3

    goto :goto_1

    :sswitch_1
    const-string v6, "secure"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v4, v2

    goto :goto_1

    :sswitch_2
    const-string v6, "system"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v4, 0x2

    goto :goto_1

    .line 442
    :pswitch_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 443
    .local v1, "userId":I
    iget-object v4, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-direct {p0, v4, v1}, Lcom/android/providers/settings/SettingsProvider;->deleteGlobalSetting(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 447
    .end local v1    # "userId":I
    :pswitch_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 448
    .restart local v1    # "userId":I
    iget-object v4, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-direct {p0, v4, v1}, Lcom/android/providers/settings/SettingsProvider;->deleteSecureSetting(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 452
    .end local v1    # "userId":I
    :pswitch_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 453
    .restart local v1    # "userId":I
    iget-object v4, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-direct {p0, v4, v1}, Lcom/android/providers/settings/SettingsProvider;->deleteSystemSetting(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 440
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a16fc5d -> :sswitch_0
        -0x3604a489 -> :sswitch_1
        -0x34e38dd1 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 511
    iget-object v7, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 512
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 514
    .local v2, "identity":J
    :try_start_1
    iget-object v6, p0, Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v5

    .line 515
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 516
    .local v4, "userCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 517
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 518
    .local v1, "user":Landroid/content/pm/UserInfo;
    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v6, p2}, Lcom/android/providers/settings/SettingsProvider;->dumpForUser(ILjava/io/PrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 516
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 521
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 523
    monitor-exit v7

    .line 524
    return-void

    .line 521
    .end local v0    # "i":I
    .end local v4    # "userCount":I
    .end local v5    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 523
    .end local v2    # "identity":J
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 299
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$Arguments;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v2, v2, v1}, Lcom/android/providers/settings/SettingsProvider$Arguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 300
    .local v0, "args":Lcom/android/providers/settings/SettingsProvider$Arguments;
    iget-object v1, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.dir/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 303
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.item/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v3, 0x0

    .line 364
    invoke-static {p1}, Lcom/android/providers/settings/SettingsProvider;->getValidTableOrThrow(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 367
    .local v1, "table":Ljava/lang/String;
    sget-object v4, Lcom/android/providers/settings/SettingsProvider;->REMOVED_LEGACY_TABLES:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-object v3

    .line 371
    :cond_1
    const-string v4, "name"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/providers/settings/SettingsProvider;->isKeyValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 376
    const-string v4, "value"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 378
    .local v2, "value":Ljava/lang/String;
    const/4 v4, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 398
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad Uri path:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 378
    :sswitch_0
    const-string v5, "global"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :sswitch_1
    const-string v5, "secure"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_2
    const-string v5, "system"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x2

    goto :goto_1

    .line 380
    :pswitch_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-direct {p0, v0, v2, v4}, Lcom/android/providers/settings/SettingsProvider;->insertGlobalSetting(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 381
    sget-object v3, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    .line 386
    :pswitch_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-direct {p0, v0, v2, v4}, Lcom/android/providers/settings/SettingsProvider;->insertSecureSetting(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 387
    sget-object v3, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    .line 392
    :pswitch_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-direct {p0, v0, v2, v4}, Lcom/android/providers/settings/SettingsProvider;->insertSystemSetting(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 393
    sget-object v3, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto/16 :goto_0

    .line 378
    :sswitch_data_0
    .sparse-switch
        -0x4a16fc5d -> :sswitch_0
        -0x3604a489 -> :sswitch_1
        -0x34e38dd1 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    .line 243
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 244
    :try_start_0
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "user"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;

    .line 245
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 246
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-direct {v0, p0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;-><init>(Lcom/android/providers/settings/SettingsProvider;)V

    iput-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    .line 247
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->registerBroadcastReceivers()V

    .line 249
    const/4 v0, 0x1

    return v0

    .line 247
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 505
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "Direct file access no longer supported; ringtone playback is available through android.media.Ringtone"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;
    .param p5, "order"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 314
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$Arguments;

    invoke-direct {v0, p1, p3, p4, v6}, Lcom/android/providers/settings/SettingsProvider$Arguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 315
    .local v0, "args":Lcom/android/providers/settings/SettingsProvider$Arguments;
    invoke-static {p2}, Lcom/android/providers/settings/SettingsProvider;->normalizeProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "normalizedProjection":[Ljava/lang/String;
    sget-object v4, Lcom/android/providers/settings/SettingsProvider;->REMOVED_LEGACY_TABLES:Ljava/util/Set;

    iget-object v7, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 319
    new-instance v4, Landroid/database/MatrixCursor;

    invoke-direct {v4, v1, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 348
    :goto_0
    return-object v4

    .line 322
    :cond_0
    iget-object v7, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 353
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid Uri path:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 322
    :sswitch_0
    const-string v6, "global"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v4, v5

    goto :goto_1

    :sswitch_1
    const-string v5, "secure"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v6

    goto :goto_1

    :sswitch_2
    const-string v5, "system"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x2

    goto :goto_1

    .line 324
    :pswitch_0
    iget-object v4, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 325
    iget-object v4, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/providers/settings/SettingsProvider;->getGlobalSetting(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v2

    .line 326
    .local v2, "setting":Lcom/android/providers/settings/SettingsState$Setting;
    invoke-static {v2, v1}, Lcom/android/providers/settings/SettingsProvider;->packageSettingForQuery(Lcom/android/providers/settings/SettingsState$Setting;[Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v4

    goto :goto_0

    .line 328
    .end local v2    # "setting":Lcom/android/providers/settings/SettingsState$Setting;
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->getAllGlobalSettings([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto :goto_0

    .line 333
    :pswitch_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 334
    .local v3, "userId":I
    iget-object v4, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 335
    iget-object v4, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Lcom/android/providers/settings/SettingsProvider;->getSecureSetting(Ljava/lang/String;I)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v2

    .line 336
    .restart local v2    # "setting":Lcom/android/providers/settings/SettingsState$Setting;
    invoke-static {v2, v1}, Lcom/android/providers/settings/SettingsProvider;->packageSettingForQuery(Lcom/android/providers/settings/SettingsState$Setting;[Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v4

    goto :goto_0

    .line 338
    .end local v2    # "setting":Lcom/android/providers/settings/SettingsState$Setting;
    :cond_3
    invoke-direct {p0, v3, p2}, Lcom/android/providers/settings/SettingsProvider;->getAllSecureSettings(I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto :goto_0

    .line 343
    .end local v3    # "userId":I
    :pswitch_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 344
    .restart local v3    # "userId":I
    iget-object v4, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 345
    iget-object v4, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Lcom/android/providers/settings/SettingsProvider;->getSystemSetting(Ljava/lang/String;I)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v2

    .line 346
    .restart local v2    # "setting":Lcom/android/providers/settings/SettingsState$Setting;
    invoke-static {v2, v1}, Lcom/android/providers/settings/SettingsProvider;->packageSettingForQuery(Lcom/android/providers/settings/SettingsState$Setting;[Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v4

    goto/16 :goto_0

    .line 348
    .end local v2    # "setting":Lcom/android/providers/settings/SettingsState$Setting;
    :cond_4
    invoke-direct {p0, v3, p2}, Lcom/android/providers/settings/SettingsProvider;->getAllSystemSettings(I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto/16 :goto_0

    .line 322
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a16fc5d -> :sswitch_0
        -0x3604a489 -> :sswitch_1
        -0x34e38dd1 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 468
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$Arguments;

    invoke-direct {v0, p1, p3, p4, v5}, Lcom/android/providers/settings/SettingsProvider$Arguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 471
    .local v0, "args":Lcom/android/providers/settings/SettingsProvider$Arguments;
    sget-object v6, Lcom/android/providers/settings/SettingsProvider;->REMOVED_LEGACY_TABLES:Ljava/util/Set;

    iget-object v7, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v4, v5

    .line 494
    :cond_0
    :goto_0
    return v4

    .line 475
    :cond_1
    const-string v6, "name"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 476
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/providers/settings/SettingsProvider;->isKeyValid(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    move v4, v5

    .line 477
    goto :goto_0

    .line 479
    :cond_2
    const-string v6, "value"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 481
    .local v3, "value":Ljava/lang/String;
    iget-object v7, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    const/4 v6, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_3
    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 498
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid Uri path:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 481
    :sswitch_0
    const-string v8, "global"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v6, v5

    goto :goto_1

    :sswitch_1
    const-string v8, "secure"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v6, v4

    goto :goto_1

    :sswitch_2
    const-string v8, "system"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v6, 0x2

    goto :goto_1

    .line 483
    :pswitch_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 484
    .local v2, "userId":I
    iget-object v6, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-direct {p0, v6, v3, v2}, Lcom/android/providers/settings/SettingsProvider;->updateGlobalSetting(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_0

    move v4, v5

    goto :goto_0

    .line 488
    .end local v2    # "userId":I
    :pswitch_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 489
    .restart local v2    # "userId":I
    iget-object v6, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-direct {p0, v6, v3, v2}, Lcom/android/providers/settings/SettingsProvider;->updateSecureSetting(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_0

    move v4, v5

    goto :goto_0

    .line 493
    .end local v2    # "userId":I
    :pswitch_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 494
    .restart local v2    # "userId":I
    iget-object v6, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-direct {p0, v6, v3, v2}, Lcom/android/providers/settings/SettingsProvider;->updateSystemSetting(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_0

    move v4, v5

    goto/16 :goto_0

    .line 481
    :sswitch_data_0
    .sparse-switch
        -0x4a16fc5d -> :sswitch_0
        -0x3604a489 -> :sswitch_1
        -0x34e38dd1 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
