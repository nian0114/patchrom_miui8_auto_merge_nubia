.class public Lcom/android/settings_ex/applications/DefaultAppBootUpReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DefaultAppBootUpReceiver.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "DefaultAppBootUpReceiver"

    sput-object v0, Lcom/android/settings_ex/applications/DefaultAppBootUpReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/applications/DefaultAppBootUpReceiver;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/DefaultAppBootUpReceiver;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/DefaultAppBootUpReceiver;->setSystemAppAsDefault(Landroid/content/Context;)V

    return-void
.end method

.method private setSystemAppAsDefault(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    sget-object v2, Lcom/android/settings_ex/applications/DefaultAppBootUpReceiver;->TAG:Ljava/lang/String;

    const-string v3, "setSystemAppAsDefault"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    new-instance v1, Lcom/android/settings_ex/applications/DefaultAppManager;

    invoke-static {}, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->values()[Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-direct {v1, p1, v2}, Lcom/android/settings_ex/applications/DefaultAppManager;-><init>(Landroid/content/Context;Lcom/android/settings_ex/applications/DefaultAppManager$AppType;)V

    .line 40
    .local v1, "manager":Lcom/android/settings_ex/applications/DefaultAppManager;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->values()[Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 41
    invoke-static {}, Lcom/android/settings_ex/applications/DefaultAppUtils;->isThreadInterrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    :cond_0
    return-void

    .line 44
    :cond_1
    invoke-static {}, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->values()[Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/applications/DefaultAppManager;->setType(Lcom/android/settings_ex/applications/DefaultAppManager$AppType;)V

    .line 45
    invoke-virtual {v1}, Lcom/android/settings_ex/applications/DefaultAppManager;->resetToDefault()V

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 14
    sget-object v6, Lcom/android/settings_ex/applications/DefaultAppBootUpReceiver;->TAG:Ljava/lang/String;

    const-string v7, "onReceive"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    move-object v2, p1

    .line 16
    .local v2, "mContext":Landroid/content/Context;
    new-instance v3, Lcom/android/settings_ex/applications/DefaultAppManager;

    invoke-static {}, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->values()[Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-direct {v3, v2, v6}, Lcom/android/settings_ex/applications/DefaultAppManager;-><init>(Landroid/content/Context;Lcom/android/settings_ex/applications/DefaultAppManager$AppType;)V

    .line 17
    .local v3, "manager":Lcom/android/settings_ex/applications/DefaultAppManager;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {}, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->values()[Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    move-result-object v6

    array-length v6, v6

    if-ge v1, v6, :cond_0

    .line 18
    invoke-static {}, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->values()[Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v3, v6}, Lcom/android/settings_ex/applications/DefaultAppManager;->setType(Lcom/android/settings_ex/applications/DefaultAppManager$AppType;)V

    .line 19
    invoke-virtual {v3}, Lcom/android/settings_ex/applications/DefaultAppManager;->writeSystemDefaultToDB()V

    .line 17
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppBootUpReceiver$1;

    invoke-direct {v0, p0, v2}, Lcom/android/settings_ex/applications/DefaultAppBootUpReceiver$1;-><init>(Lcom/android/settings_ex/applications/DefaultAppBootUpReceiver;Landroid/content/Context;)V

    .line 31
    .local v0, "callback":Lcom/android/settings_ex/applications/DefaultAppUtils$HandleDefaultCallback;
    invoke-static {v0}, Lcom/android/settings_ex/applications/DefaultAppUtils;->startThread(Lcom/android/settings_ex/applications/DefaultAppUtils$HandleDefaultCallback;)V

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 33
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/ComponentName;

    const-class v6, Lcom/android/settings_ex/applications/DefaultAppBootUpReceiver;

    invoke-direct {v4, p1, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    .local v4, "name":Landroid/content/ComponentName;
    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-virtual {v5, v4, v6, v7}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 35
    return-void
.end method
