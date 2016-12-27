.class public Lcom/android/settings_ex/DeviceInfoSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "DeviceInfoSettings.java"

# interfaces
.implements Lcom/android/settings_ex/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;


# instance fields
.field private final MENU_SYSTEM_UPDATE:I

.field private dismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field mDevHitCountdown:I

.field mDevHitToast:Landroid/widget/Toast;

.field mHits:[J

.field private mIsNubiaVersion:Z

.field private mMemInfoReader:Lcom/android/internal/util/MemInfoReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 645
    new-instance v0, Lcom/android/settings_ex/DeviceInfoSettings$2;

    invoke-direct {v0}, Lcom/android/settings_ex/DeviceInfoSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings_ex/DeviceInfoSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 128
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mHits:[J

    .line 132
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings_ex/DeviceInfoSettings;->MENU_SYSTEM_UPDATE:I

    .line 134
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    .line 450
    new-instance v0, Lcom/android/settings_ex/DeviceInfoSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DeviceInfoSettings$1;-><init>(Lcom/android/settings_ex/DeviceInfoSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/DeviceInfoSettings;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/DeviceInfoSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DeviceInfoSettings;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->setDeviceName()V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 88
    invoke-static {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ciActionOnSysUpdate(Landroid/os/PersistableBundle;)V
    .locals 7
    .param p1, "b"    # Landroid/os/PersistableBundle;

    .prologue
    .line 461
    const-string v4, "ci_action_on_sys_update_intent_string"

    invoke-virtual {p1, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 463
    .local v3, "intentStr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 464
    const-string v4, "ci_action_on_sys_update_extra_string"

    invoke-virtual {p1, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, "extra":Ljava/lang/String;
    const-string v4, "ci_action_on_sys_update_extra_val_string"

    invoke-virtual {p1, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 469
    .local v1, "extraVal":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 470
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 471
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 473
    :cond_0
    const-string v4, "DeviceInfoSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ciActionOnSysUpdate: broadcasting intent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with extra "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 477
    .end local v0    # "extra":Ljava/lang/String;
    .end local v1    # "extraVal":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public static formatKernelVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "rawKernelVersion"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x4

    .line 564
    const-string v0, "Linux version (\\S+) \\((\\S+?)\\) (?:\\(gcc.+? \\)) (#\\d+) (?:.*?)?((Sun|Mon|Tue|Wed|Thu|Fri|Sat).+)"

    .line 572
    .local v0, "PROC_VERSION_REGEX":Ljava/lang/String;
    const-string v2, "Linux version (\\S+) \\((\\S+?)\\) (?:\\(gcc.+? \\)) (#\\d+) (?:.*?)?((Sun|Mon|Tue|Wed|Thu|Fri|Sat).+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 573
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    .line 574
    const-string v2, "DeviceInfoSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Regex did not match on /proc/version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const-string v2, "Unavailable"

    .line 581
    :goto_0
    return-object v2

    .line 576
    :cond_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    if-ge v2, v4, :cond_1

    .line 577
    const-string v2, "DeviceInfoSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Regex match on /proc/version only returned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " groups"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const-string v2, "Unavailable"

    goto :goto_0

    .line 581
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getCpuInfoString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 908
    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 909
    .local v1, "cpuString":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getNumCores()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 910
    .local v0, "cores":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 911
    .local v2, "res":Landroid/content/res/Resources;
    const-string v3, "msm8996"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 912
    const v3, 0x7f0c0e2b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 920
    :goto_0
    return-object v1

    .line 913
    :cond_0
    const-string v3, "msm8994"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 914
    const v3, 0x7f0c0e2d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 915
    :cond_1
    const-string v3, "msm8974"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 916
    const v3, 0x7f0c0e2c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 918
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getNumCores()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 608
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0a56

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 610
    .local v1, "feedbackReporter":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 639
    .end local v1    # "feedbackReporter":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 616
    .restart local v1    # "feedbackReporter":Ljava/lang/String;
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.BUG_REPORT"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 618
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 619
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/16 v7, 0x40

    invoke-virtual {v5, v4, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 621
    .local v6, "resolvedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 622
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_1

    .line 623
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 625
    :try_start_0
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 626
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_1

    .line 628
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    .line 639
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 633
    .restart local v3    # "info":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public static getFormattedKernelVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 547
    :try_start_0
    const-string v1, "/proc/version"

    invoke-static {v1}, Lcom/android/settings_ex/DeviceInfoSettings;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/DeviceInfoSettings;->formatKernelVersion(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 554
    .local v0, "e":Ljava/io/IOException;
    :goto_0
    return-object v1

    .line 549
    .end local v0    # "e":Ljava/io/IOException;
    :catch_0
    move-exception v0

    .line 550
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v1, "DeviceInfoSettings"

    const-string v2, "IO Exception when getting kernel version for Device Info screen"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 554
    const-string v1, "Unavailable"

    goto :goto_0
.end method

.method private getHardwareVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 769
    :try_start_0
    const-string v1, "sys/ztemt_hw_version/version"

    invoke-static {v1}, Lcom/android/settings_ex/DeviceInfoSettings;->readLine(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 771
    :goto_0
    return-object v1

    .line 770
    :catch_0
    move-exception v0

    .line 771
    .local v0, "ioe":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c006b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getMsvSuffix()Ljava/lang/String;
    .locals 6

    .prologue
    .line 594
    :try_start_0
    const-string v1, "/sys/board_properties/soc/msv"

    invoke-static {v1}, Lcom/android/settings_ex/DeviceInfoSettings;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 596
    .local v0, "msv":Ljava/lang/String;
    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 597
    const-string v1, " (ENGINEERING)"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    .end local v0    # "msv":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 601
    :catch_0
    move-exception v1

    .line 604
    :cond_0
    :goto_1
    const-string v1, ""

    goto :goto_0

    .line 599
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private getNumCores()Ljava/lang/String;
    .locals 4

    .prologue
    .line 924
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 925
    .local v2, "res":Landroid/content/res/Resources;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    .line 926
    .local v1, "cpuCount":I
    const/4 v0, 0x0

    .line 927
    .local v0, "cores":Ljava/lang/String;
    const/16 v3, 0x8

    if-ne v1, v3, :cond_0

    .line 928
    const v3, 0x7f0c0e28

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 936
    :goto_0
    return-object v0

    .line 929
    :cond_0
    const/4 v3, 0x6

    if-ne v1, v3, :cond_1

    .line 930
    const v3, 0x7f0c0e29

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 931
    :cond_1
    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    .line 932
    const v3, 0x7f0c0e2a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 934
    :cond_2
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getOperatorName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 760
    :try_start_0
    const-string v1, "sys/ztemt_hw_version/operators"

    invoke-static {v1}, Lcom/android/settings_ex/DeviceInfoSettings;->readLine(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 764
    .local v0, "ioe":Ljava/io/IOException;
    :goto_0
    return-object v1

    .line 761
    .end local v0    # "ioe":Ljava/io/IOException;
    :catch_0
    move-exception v0

    .line 762
    .restart local v0    # "ioe":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 763
    const-string v1, "DeviceInfoSettings"

    const-string v2, "get operator name exception, return null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    const-string v1, ""

    goto :goto_0
.end method

.method private getPhoneStorageDirectory()Ljava/io/File;
    .locals 7

    .prologue
    .line 877
    const/4 v3, 0x0

    .line 878
    .local v3, "result":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 879
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 892
    :goto_0
    return-object v4

    .line 882
    :cond_0
    :try_start_0
    const-string v4, "android.os.Environment"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getSecondaryStorageDirectory"

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 884
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_1

    .line 885
    const/4 v5, 0x0

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/io/File;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_1
    :goto_1
    move-object v4, v3

    .line 892
    goto :goto_0

    .line 888
    :catch_0
    move-exception v1

    .line 889
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private getPhoneStorageState()Ljava/lang/String;
    .locals 7

    .prologue
    .line 856
    const/4 v3, 0x0

    .line 857
    .local v3, "result":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 858
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    .line 872
    :goto_0
    return-object v4

    .line 861
    :cond_0
    :try_start_0
    const-string v4, "android.os.Environment"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getSecondaryStorageState"

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 863
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_1

    .line 864
    const/4 v5, 0x0

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 865
    const-string v4, "shijian"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPhoneStorageState:="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-object v4, v3

    .line 872
    goto :goto_0

    .line 867
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 868
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 869
    const-string v4, "unmounted"

    goto :goto_0
.end method

.method private getProjectName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 776
    :try_start_0
    const-string v1, "sys/ztemt_hw_version/projects"

    invoke-static {v1}, Lcom/android/settings_ex/DeviceInfoSettings;->readLine(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 778
    :goto_0
    return-object v1

    .line 777
    :catch_0
    move-exception v0

    .line 778
    .local v0, "ioe":Ljava/io/IOException;
    const-string v1, ""

    goto :goto_0
.end method

.method private getRamInfoString()Ljava/lang/String;
    .locals 14

    .prologue
    const-wide/16 v12, 0x400

    .line 896
    iget-object v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v3}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 897
    iget-object v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v3}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v4

    .line 898
    .local v4, "totalRam":J
    div-long v8, v4, v12

    div-long/2addr v8, v12

    div-long/2addr v8, v12

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    long-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v2, v8

    .line 899
    .local v2, "ramTotal":I
    const-string v3, "shijian"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ramtotal is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    int-to-long v8, v2

    mul-long/2addr v8, v12

    mul-long/2addr v8, v12

    mul-long v6, v8, v12

    .line 901
    .local v6, "totalsize":J
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    .line 902
    .local v0, "bidiFormatter":Landroid/text/BidiFormatter;
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v6, v7}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 904
    .local v1, "freeSize":Ljava/lang/String;
    return-object v1
.end method

.method private getRealString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 782
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "NX513"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 788
    .end local p1    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 783
    .restart local p1    # "value":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getProjectName()Ljava/lang/String;

    move-result-object v0

    .line 784
    .local v0, "projectName":Ljava/lang/String;
    const-string v1, "DeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Build.MODEL="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";projectName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 788
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getRomInfoString()Ljava/lang/String;
    .locals 16

    .prologue
    .line 831
    const-string v7, "mounted"

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 832
    new-instance v6, Landroid/os/StatFs;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 833
    .local v6, "sf":Landroid/os/StatFs;
    const-string v7, "shijian"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "emmc path:="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v2, v7

    .line 835
    .local v2, "blockSize":J
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCount()I

    move-result v7

    int-to-long v0, v7

    .line 837
    .local v0, "blockCount":J
    mul-long v10, v0, v2

    long-to-double v10, v10

    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    div-double v8, v10, v12

    .line 839
    .local v8, "total":D
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpg-double v7, v8, v10

    if-gez v7, :cond_0

    .line 840
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/high16 v10, 0x4090000000000000L    # 1024.0

    mul-double/2addr v10, v8

    double-to-int v10, v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " MB"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 851
    .end local v0    # "blockCount":J
    .end local v2    # "blockSize":J
    .end local v6    # "sf":Landroid/os/StatFs;
    .end local v8    # "total":D
    :goto_0
    return-object v4

    .line 842
    .restart local v0    # "blockCount":J
    .restart local v2    # "blockSize":J
    .restart local v6    # "sf":Landroid/os/StatFs;
    .restart local v8    # "total":D
    :cond_0
    const/4 v5, 0x0

    .line 844
    .local v5, "n":I
    :goto_1
    const-wide/16 v10, 0x0

    cmpl-double v7, v8, v10

    if-lez v7, :cond_2

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    add-int/lit8 v7, v5, 0x1

    int-to-double v12, v7

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    cmpl-double v7, v8, v10

    if-gez v7, :cond_1

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    int-to-double v12, v5

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    cmpg-double v7, v8, v10

    if-gez v7, :cond_2

    .line 845
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 848
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    add-int/lit8 v12, v5, 0x1

    int-to-double v12, v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-int v10, v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ".0 GB"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 849
    .local v4, "message":Ljava/lang/String;
    goto :goto_0

    .line 851
    .end local v0    # "blockCount":J
    .end local v2    # "blockSize":J
    .end local v4    # "message":Ljava/lang/String;
    .end local v5    # "n":I
    .end local v6    # "sf":Landroid/os/StatFs;
    .end local v8    # "total":D
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static readLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 537
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 539
    .local v0, "reader":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 541
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v1
.end method

.method private removePreferenceIfBoolFalse(Ljava/lang/String;I)V
    .locals 2
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 494
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 495
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 496
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 499
    .end local v0    # "pref":Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "preferenceGroup"    # Landroid/preference/PreferenceGroup;
    .param p2, "preference"    # Ljava/lang/String;
    .param p3, "property"    # Ljava/lang/String;

    .prologue
    .line 481
    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 484
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 485
    :catch_0
    move-exception v0

    .line 486
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "DeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' missing and no \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' preference"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendFeedback()V
    .locals 3

    .prologue
    .line 521
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/DeviceInfoSettings;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 522
    .local v1, "reporterPackage":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 528
    :goto_0
    return-void

    .line 525
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.BUG_REPORT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 526
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 527
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private setDeviceName()V
    .locals 4

    .prologue
    .line 743
    const-string v1, "nubia"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "zte"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 744
    const-string v1, "device_name"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 756
    :cond_0
    :goto_0
    return-void

    .line 747
    :cond_1
    const-string v1, "persist.sys.devicename"

    const-string v2, "ro.config.devicename"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 748
    .local v0, "deviceName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 749
    const-string v1, "DeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MANUFACTURER="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-boolean v1, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mIsNubiaVersion:Z

    if-nez v1, :cond_0

    .line 751
    const-string v1, "device_name"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->getRealString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 754
    :cond_2
    const-string v1, "device_name"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setStringSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 503
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    :goto_0
    return-void

    .line 504
    :catch_0
    move-exception v0

    .line 505
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c006b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setValueSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "property"    # Ljava/lang/String;

    .prologue
    .line 512
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    :goto_0
    return-void

    .line 515
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showDeviceNameCustomerDialog()V
    .locals 2

    .prologue
    .line 442
    new-instance v0, Lcom/android/settings_ex/DeviceNameCustomerDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/DeviceNameCustomerDialog;-><init>(Landroid/content/Context;)V

    .line 443
    .local v0, "mDeviceNameCustomerDialog":Lcom/android/settings_ex/DeviceNameCustomerDialog;
    iget-object v1, p0, Lcom/android/settings_ex/DeviceInfoSettings;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceNameCustomerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 444
    const-string v1, "device_name"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceNameCustomerDialog;->setInitialContent(Ljava/lang/CharSequence;)V

    .line 445
    const v1, 0x7f0c0c91

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceNameCustomerDialog;->setTitle(I)V

    .line 446
    invoke-virtual {v0}, Lcom/android/settings_ex/DeviceNameCustomerDialog;->show()V

    .line 448
    return-void
.end method

.method private startSystemUpdateActivity()V
    .locals 4

    .prologue
    .line 819
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 827
    :goto_0
    return-void

    .line 821
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 822
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "cn.nubia.systemupdate"

    const-string v3, "cn.nubia.systemupdate.SystemUpdateActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 823
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 824
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 825
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 143
    const v0, 0x7f0c094a

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 138
    const/16 v0, 0x28

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 328
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 329
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DeviceInfoSettings;->setHasOptionsMenu(Z)V

    .line 330
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 27
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 148
    invoke-super/range {p0 .. p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 150
    const v24, 0x7f080021

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->addPreferencesFromResource(I)V

    .line 152
    const-string v24, "firmware_version"

    sget-object v25, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v24, "firmware_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 154
    sget-object v18, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    .line 155
    .local v18, "patch":Ljava/lang/String;
    const-string v24, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_a

    .line 157
    :try_start_0
    new-instance v23, Ljava/text/SimpleDateFormat;

    const-string v24, "yyyy-MM-dd"

    invoke-direct/range {v23 .. v24}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 158
    .local v23, "template":Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v19

    .line 159
    .local v19, "patchDate":Ljava/util/Date;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v24

    const-string v25, "dMMMMyyyy"

    invoke-static/range {v24 .. v25}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 160
    .local v9, "format":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-static {v9, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v18

    .line 164
    .end local v9    # "format":Ljava/lang/String;
    .end local v19    # "patchDate":Ljava/util/Date;
    .end local v23    # "template":Ljava/text/SimpleDateFormat;
    :goto_0
    const-string v24, "security_patch"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :goto_1
    const-string v24, "baseband_version"

    const-string v25, "gsm.version.baseband"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v24, "persist.sys.modelnumber"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0c006b

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 172
    .local v15, "modelnumber":Ljava/lang/String;
    const-string v24, "device_model"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getMsvSuffix()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v24, "fcc_equipment_id"

    const-string v25, "ro.ril.fccid"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v24, "device_model"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v15}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v24, "build_number"

    sget-object v25, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v24, "build_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 177
    const-string v24, "kernel_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    invoke-static {}, Lcom/android/settings_ex/DeviceInfoSettings;->getFormattedKernelVersion()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 178
    const-string v24, "zte"

    sget-object v25, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_b

    const/16 v24, 0x1

    :goto_2
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/DeviceInfoSettings;->mIsNubiaVersion:Z

    .line 180
    const-string v24, "device_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 181
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->setDeviceName()V

    .line 183
    const-string v24, "device_model"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/settings_ex/DeviceInfoSettings;->getRealString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v24, "gsm.version.baseband"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0c006b

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 186
    .local v6, "baseBand":Ljava/lang/String;
    const-string v24, "baseband_version"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/settings_ex/DeviceInfoSettings;->getRealString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v24, "build_number"

    sget-object v25, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->getRealString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    sget-object v24, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string v25, "N940St"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 189
    const-string v14, "ZTE N940St"

    .line 190
    .local v14, "modelStnumber":Ljava/lang/String;
    const-string v24, "device_model"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getMsvSuffix()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v24, "device_model"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v14}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v24, "device_model"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DeviceInfoSettings;->getRealString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .end local v14    # "modelStnumber":Ljava/lang/String;
    :goto_3
    const-string v24, "nubia_version"

    const-string v25, "ro.build.rom.id"

    const-string v26, "V4.1.0"

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v24, "nubia_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 207
    const-string v24, "cpu_board_process"

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getCpuInfoString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v24, "ram_process"

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getRamInfoString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v24, "rom_process"

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getRomInfoString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-static {}, Lcom/android/settings_ex/DeviceInfoSettings;->getOperatorName()Ljava/lang/String;

    move-result-object v16

    .line 213
    .local v16, "operatorName":Ljava/lang/String;
    const-string v24, "DeviceInfoSettings"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "onCreate : operatorName "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const-string v24, "CM"

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_e

    .line 216
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    const-string v25, "cn.nubia.ztemt.register"

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 217
    .local v5, "appinfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v5, :cond_0

    .line 218
    const-string v24, "DeviceInfoSettings"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "onCreate try  appinfo  "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const-string v24, "message_regitst_auto"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 230
    .end local v5    # "appinfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_4
    const-string v24, "kernel_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    invoke-static {}, Lcom/android/settings_ex/DeviceInfoSettings;->getFormattedKernelVersion()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 231
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getHardwareVersion()Ljava/lang/String;

    move-result-object v10

    .line 232
    .local v10, "hardwareVersion":Ljava/lang/String;
    const-string v24, "hardware_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    const v25, 0x7f0c006b

    invoke-virtual/range {v24 .. v25}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_1

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 235
    :cond_1
    const-string v24, "hardware_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 238
    :cond_2
    new-instance v24, Ljava/io/File;

    const-string v25, "/system/media/theme/bootup/pictures_info.txt"

    invoke-direct/range {v24 .. v25}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v11

    .line 239
    .local v11, "hasBootupDetailInfomation":Z
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 240
    .local v7, "bootAnimationinfoIntent":Landroid/content/Intent;
    const-string v24, "cn.nubia.bootanimationinfo"

    const-string v25, "cn.nubia.bootanimationinfo.BootAnimationInfoActivity"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v21

    .line 242
    .local v21, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v11, :cond_3

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_4

    .line 243
    :cond_3
    const-string v24, "additional_bootanimation_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 245
    :cond_4
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnabled()Z

    move-result v24

    if-nez v24, :cond_f

    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0c08df

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 247
    .local v22, "status":Ljava/lang/String;
    const-string v24, "selinux_status"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .end local v22    # "status":Ljava/lang/String;
    :cond_5
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    const-string v25, "selinux_status"

    const-string v26, "ro.build.selinux"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    const-string v25, "safetylegal"

    const-string v26, "ro.url.safetylegal"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    const-string v25, "fcc_equipment_id"

    const-string v26, "ro.ril.fccid"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 267
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    const-string v25, "baseband_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 271
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/settings_ex/DeviceInfoSettings;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 272
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    const-string v25, "device_feedback"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 279
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 282
    .local v4, "act":Landroid/app/Activity;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    .line 283
    .local v17, "parentPreference":Landroid/preference/PreferenceGroup;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v24

    if-nez v24, :cond_10

    .line 284
    const-string v24, "system_update_settings"

    const/16 v25, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v4, v0, v1, v2}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 293
    :goto_6
    const-string v24, "additional_system_update_settings"

    const v25, 0x7f100004

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->removePreferenceIfBoolFalse(Ljava/lang/String;I)V

    .line 297
    const-string v24, "manual"

    const v25, 0x7f100006

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->removePreferenceIfBoolFalse(Ljava/lang/String;I)V

    .line 300
    new-instance v12, Landroid/content/Intent;

    const-string v24, "android.settings.SHOW_REGULATORY_INFO"

    move-object/from16 v0, v24

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 301
    .local v12, "intent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v12, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f100007

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v24

    if-nez v24, :cond_9

    .line 303
    :cond_8
    const-string v24, "regulatory_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    .line 304
    .local v20, "pref":Landroid/preference/Preference;
    if-eqz v20, :cond_9

    .line 305
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 308
    .end local v20    # "pref":Landroid/preference/Preference;
    :cond_9
    return-void

    .line 166
    .end local v4    # "act":Landroid/app/Activity;
    .end local v6    # "baseBand":Ljava/lang/String;
    .end local v7    # "bootAnimationinfoIntent":Landroid/content/Intent;
    .end local v10    # "hardwareVersion":Ljava/lang/String;
    .end local v11    # "hasBootupDetailInfomation":Z
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v15    # "modelnumber":Ljava/lang/String;
    .end local v16    # "operatorName":Ljava/lang/String;
    .end local v17    # "parentPreference":Landroid/preference/PreferenceGroup;
    .end local v21    # "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    const-string v25, "security_patch"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 178
    .restart local v15    # "modelnumber":Ljava/lang/String;
    :cond_b
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 193
    .restart local v6    # "baseBand":Ljava/lang/String;
    :cond_c
    sget-object v24, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string v25, "N940Sc"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_d

    .line 194
    const-string v13, "ZTE N940Sc"

    .line 195
    .local v13, "modelScnumber":Ljava/lang/String;
    const-string v24, "device_model"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getMsvSuffix()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v24, "device_model"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v13}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v24, "device_model"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings_ex/DeviceInfoSettings;->getRealString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 199
    .end local v13    # "modelScnumber":Ljava/lang/String;
    :cond_d
    const-string v24, "device_model"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getMsvSuffix()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v24, "device_model"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v15}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v24, "device_model"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/settings_ex/DeviceInfoSettings;->getRealString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 221
    .restart local v16    # "operatorName":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 222
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v24, "DeviceInfoSettings"

    const-string v25, "catch PackageManager.NameNotFoundException "

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const-string v24, "message_regitst_auto"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 227
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_e
    const-string v24, "message_regitst_auto"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 248
    .restart local v7    # "bootAnimationinfoIntent":Landroid/content/Intent;
    .restart local v10    # "hardwareVersion":Ljava/lang/String;
    .restart local v11    # "hasBootupDetailInfomation":Z
    .restart local v21    # "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_f
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v24

    if-nez v24, :cond_5

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0c08e0

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 250
    .restart local v22    # "status":Ljava/lang/String;
    const-string v24, "selinux_status"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 289
    .end local v22    # "status":Ljava/lang/String;
    .restart local v4    # "act":Landroid/app/Activity;
    .restart local v17    # "parentPreference":Landroid/preference/PreferenceGroup;
    :cond_10
    const-string v24, "system_update_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 161
    .end local v4    # "act":Landroid/app/Activity;
    .end local v6    # "baseBand":Ljava/lang/String;
    .end local v7    # "bootAnimationinfoIntent":Landroid/content/Intent;
    .end local v10    # "hardwareVersion":Ljava/lang/String;
    .end local v11    # "hasBootupDetailInfomation":Z
    .end local v15    # "modelnumber":Ljava/lang/String;
    .end local v16    # "operatorName":Ljava/lang/String;
    .end local v17    # "parentPreference":Landroid/preference/PreferenceGroup;
    .end local v21    # "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_1
    move-exception v24

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x2

    .line 334
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 335
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    .line 337
    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x7f0c039f

    invoke-interface {p1, v0, v3, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200f4

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 341
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 345
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 350
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 347
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->startSystemUpdateActivity()V

    .line 348
    const/4 v0, 0x1

    goto :goto_0

    .line 345
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 13
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 355
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "firmware_version"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 356
    iget-object v6, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mHits:[J

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mHits:[J

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mHits:[J

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 357
    iget-object v6, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mHits:[J

    iget-object v7, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mHits:[J

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 358
    iget-object v6, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mHits:[J

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x1f4

    sub-long/2addr v8, v10

    cmp-long v6, v6, v8

    if-ltz v6, :cond_1

    .line 359
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "user"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    .line 360
    .local v5, "um":Landroid/os/UserManager;
    const-string v6, "no_fun"

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 361
    const-string v6, "DeviceInfoSettings"

    const-string v7, "Sorry, no fun for you!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const/4 v6, 0x0

    .line 438
    .end local v5    # "um":Landroid/os/UserManager;
    :goto_0
    return v6

    .line 365
    .restart local v5    # "um":Landroid/os/UserManager;
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 366
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "android"

    const-class v7, Lcom/android/internal/app/PlatLogoActivity;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "um":Landroid/os/UserManager;
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    goto :goto_0

    .line 370
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v5    # "um":Landroid/os/UserManager;
    :catch_0
    move-exception v2

    .line 371
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "DeviceInfoSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to start activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 374
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "um":Landroid/os/UserManager;
    :cond_2
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "nubia_version"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 375
    new-instance v4, Landroid/content/ComponentName;

    const-string v6, "cn.nubia.PlatLogo"

    const-string v7, "cn.nubia.PlatLogo.PlatLogoActivity"

    invoke-direct {v4, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    .local v4, "platLogoCn":Landroid/content/ComponentName;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 377
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 379
    :try_start_1
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 380
    :catch_1
    move-exception v2

    .line 381
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v6, "DeviceInfoSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to start activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 383
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "platLogoCn":Landroid/content/ComponentName;
    :cond_3
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "build_number"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 385
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    goto/16 :goto_0

    .line 387
    :cond_4
    const-string v6, "user"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/DeviceInfoSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    .line 388
    .restart local v5    # "um":Landroid/os/UserManager;
    const-string v6, "no_debugging_features"

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    goto/16 :goto_0

    .line 390
    :cond_5
    iget v6, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    if-lez v6, :cond_9

    .line 391
    iget v6, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    .line 392
    iget v6, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    if-nez v6, :cond_7

    .line 393
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "development"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "show"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 396
    iget-object v6, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v6, :cond_6

    .line 397
    iget-object v6, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->cancel()V

    .line 399
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0c006c

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 401
    iget-object v6, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 403
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings_ex/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/Index;

    move-result-object v6

    const-class v7, Lcom/android/settings_ex/DevelopmentSettings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/settings_ex/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 407
    :cond_7
    iget v6, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    if-lez v6, :cond_1

    iget v6, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    const/4 v7, 0x5

    if-ge v6, v7, :cond_1

    .line 409
    iget-object v6, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v6, :cond_8

    .line 410
    iget-object v6, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->cancel()V

    .line 412
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x7f130000

    iget v9, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 415
    iget-object v6, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 417
    :cond_9
    iget v6, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    if-gez v6, :cond_1

    .line 418
    iget-object v6, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v6, :cond_a

    .line 419
    iget-object v6, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->cancel()V

    .line 421
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0c006d

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 423
    iget-object v6, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 425
    .end local v5    # "um":Landroid/os/UserManager;
    :cond_b
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "device_feedback"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 426
    invoke-direct {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->sendFeedback()V

    goto/16 :goto_1

    .line 427
    :cond_c
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "system_update_settings"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 428
    const-string v6, "carrier_config"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/DeviceInfoSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 430
    .local v1, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v1}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 431
    .local v0, "b":Landroid/os/PersistableBundle;
    const-string v6, "ci_action_on_sys_update_bool"

    invoke-virtual {v0, v6}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 432
    invoke-direct {p0, v0}, Lcom/android/settings_ex/DeviceInfoSettings;->ciActionOnSysUpdate(Landroid/os/PersistableBundle;)V

    goto/16 :goto_1

    .line 435
    .end local v0    # "b":Landroid/os/PersistableBundle;
    .end local v1    # "configManager":Landroid/telephony/CarrierConfigManager;
    :cond_d
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "device_name"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 436
    invoke-direct {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->showDeviceNameCustomerDialog()V

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 312
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 313
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "development"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "show"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 317
    return-void

    .line 313
    :cond_0
    const/4 v0, 0x7

    goto :goto_0
.end method
