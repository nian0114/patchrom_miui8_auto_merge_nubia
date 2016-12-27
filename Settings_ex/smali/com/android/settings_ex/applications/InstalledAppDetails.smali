.class public Lcom/android/settings_ex/applications/InstalledAppDetails;
.super Landroid/app/Fragment;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settings_ex/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/InstalledAppDetails$DisableChanger;,
        Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;,
        Lcom/android/settings_ex/applications/InstalledAppDetails$PremiumSmsSelectionListener;,
        Lcom/android/settings_ex/applications/InstalledAppDetails$PackageMoveObserver;,
        Lcom/android/settings_ex/applications/InstalledAppDetails$ClearCacheObserver;,
        Lcom/android/settings_ex/applications/InstalledAppDetails$ClearUserDataObserver;
    }
.end annotation


# instance fields
.field private mActivitiesButton:Landroid/widget/Button;

.field private mAppControlRestricted:Z

.field private mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

.field private mAppSize:Landroid/widget/TextView;

.field private mAppVersion:Landroid/widget/TextView;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAskCompatibilityCB:Landroid/widget/CheckBox;

.field private mButtonDefaultBg:Landroid/graphics/drawable/Drawable;

.field private mCacheSize:Landroid/widget/TextView;

.field private mCanBeOnSdCardChecker:Lcom/android/settings_ex/applications/CanBeOnSdCardChecker;

.field private mCanClearData:Z

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private mClearCacheButton:Landroid/widget/Button;

.field private mClearCacheObserver:Lcom/android/settings_ex/applications/InstalledAppDetails$ClearCacheObserver;

.field private mClearDataButton:Landroid/widget/Button;

.field private mClearDataObserver:Lcom/android/settings_ex/applications/InstalledAppDetails$ClearUserDataObserver;

.field private mComputingStr:Ljava/lang/CharSequence;

.field private mDataSize:Landroid/widget/TextView;

.field private mDisableAfterUninstall:Z

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mEnableCompatibilityCB:Landroid/widget/CheckBox;

.field private mExternalCodeSize:Landroid/widget/TextView;

.field private mExternalDataSize:Landroid/widget/TextView;

.field private mForceStopButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mHaveSizes:Z

.field private final mHomePackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialized:Z

.field private mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mLastCacheSize:J

.field private mLastCodeSize:J

.field private mLastDataSize:J

.field private mLastExternalCodeSize:J

.field private mLastExternalDataSize:J

.field private mLastTotalSize:J

.field private mMoreControlButtons:Landroid/view/View;

.field private mMoveAppButton:Landroid/widget/Button;

.field private mMoveClearSpace:Landroid/view/View;

.field private mMoveInProgress:Z

.field private mNotificationSwitch:Landroid/widget/CompoundButton;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPackageMoveObserver:Lcom/android/settings_ex/applications/InstalledAppDetails$PackageMoveObserver;

.field private final mPermissionCallback:Lcom/android/settings_ex/applications/PermissionsSummaryHelper$PermissionsResultCallback;

.field private mPermissionReceiver:Landroid/content/BroadcastReceiver;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRootView:Landroid/view/View;

.field private mScreenCompatSection:Landroid/view/View;

.field private mSession:Lcom/android/settings_ex/applications/ApplicationsState$Session;

.field private mShowUninstalled:Z

.field private mSmsManager:Lcom/android/internal/telephony/ISms;

.field private mSpecialDisableButton:Landroid/widget/Button;

.field private mState:Lcom/android/settings_ex/applications/ApplicationsState;

.field private mTotalSize:Landroid/widget/TextView;

.field private mUninstallButton:Landroid/widget/Button;

.field private mUpdatedSysApp:Z

.field private mUsbManager:Landroid/hardware/usb/IUsbManager;

.field private mUserManager:Landroid/os/UserManager;

.field private permissionsSummary:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    .line 105
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 130
    iput-boolean v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 131
    iput-boolean v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mCanClearData:Z

    .line 137
    iput-boolean v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppControlRestricted:Z

    .line 158
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    .line 162
    iput-boolean v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mHaveSizes:Z

    .line 163
    iput-wide v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 164
    iput-wide v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLastDataSize:J

    .line 165
    iput-wide v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    .line 166
    iput-wide v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLastExternalDataSize:J

    .line 167
    iput-wide v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLastCacheSize:J

    .line 168
    iput-wide v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLastTotalSize:J

    .line 206
    new-instance v0, Lcom/android/settings_ex/applications/InstalledAppDetails$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$1;-><init>(Lcom/android/settings_ex/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    .line 1414
    new-instance v0, Lcom/android/settings_ex/applications/InstalledAppDetails$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$3;-><init>(Lcom/android/settings_ex/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    .line 1639
    new-instance v0, Lcom/android/settings_ex/applications/InstalledAppDetails$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$4;-><init>(Lcom/android/settings_ex/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPermissionCallback:Lcom/android/settings_ex/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/applications/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/InstalledAppDetails;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->processClearMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/applications/InstalledAppDetails;)Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/InstalledAppDetails;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/applications/InstalledAppDetails;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/InstalledAppDetails;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->forceStopPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/applications/InstalledAppDetails;I)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/InstalledAppDetails;
    .param p1, "x1"    # I

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getMoveErrMsg(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/applications/InstalledAppDetails;)Landroid/widget/CompoundButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/InstalledAppDetails;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/applications/InstalledAppDetails;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/InstalledAppDetails;
    .param p1, "x1"    # Z

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->setNotificationsEnabled(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/applications/InstalledAppDetails;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/InstalledAppDetails;
    .param p1, "x1"    # Z

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/applications/InstalledAppDetails;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/InstalledAppDetails;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/settings_ex/applications/InstalledAppDetails;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/InstalledAppDetails;
    .param p1, "x1"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPermissionReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/settings_ex/applications/InstalledAppDetails;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/InstalledAppDetails;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->permissionsSummary:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/applications/InstalledAppDetails;)Lcom/android/settings_ex/applications/ApplicationsState;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/InstalledAppDetails;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mState:Lcom/android/settings_ex/applications/ApplicationsState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/applications/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/InstalledAppDetails;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->processMoveMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/applications/InstalledAppDetails;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/InstalledAppDetails;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/applications/InstalledAppDetails;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/InstalledAppDetails;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->startManagePermissionsActivity()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/applications/InstalledAppDetails;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/InstalledAppDetails;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->initiateClearUserData()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings_ex/applications/InstalledAppDetails;Ljava/lang/String;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/InstalledAppDetails;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings_ex/applications/InstalledAppDetails;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/InstalledAppDetails;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings_ex/applications/InstalledAppDetails;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/InstalledAppDetails;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    return-object v0
.end method

.method private checkForceStop()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 1431
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1433
    invoke-direct {p0, v6}, Lcom/android/settings_ex/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    .line 1450
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings_ex/applications/ApplicationInfoWhite;->mAppPkg:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1453
    sget-object v0, Lcom/android/settings_ex/applications/ApplicationInfoWhite;->mAppPkg:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 1455
    .local v9, "forceStopKey":Ljava/lang/Integer;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    .line 1456
    invoke-direct {p0, v6}, Lcom/android/settings_ex/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    .line 1459
    .end local v9    # "forceStopKey":Ljava/lang/Integer;
    :cond_0
    return-void

    .line 1434
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x200000

    and-int/2addr v0, v2

    if-nez v0, :cond_2

    .line 1437
    invoke-direct {p0, v5}, Lcom/android/settings_ex/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    goto :goto_0

    .line 1439
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v2, "package"

    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v4, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1441
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "android.intent.extra.PACKAGES"

    new-array v2, v5, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v4, v2, v6

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1443
    const-string v0, "android.intent.extra.UID"

    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1444
    const-string v0, "android.intent.extra.user_handle"

    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1446
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/app/Activity;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method private forceStopPackage(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1400
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1401
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 1412
    :goto_0
    return-void

    .line 1403
    :cond_0
    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1405
    .local v1, "am":Landroid/app/ActivityManager;
    invoke-virtual {v1, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 1406
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mState:Lcom/android/settings_ex/applications/ApplicationsState;

    invoke-virtual {v3, p1}, Lcom/android/settings_ex/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;)V

    .line 1407
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mState:Lcom/android/settings_ex/applications/ApplicationsState;

    invoke-virtual {v3, p1}, Lcom/android/settings_ex/applications/ApplicationsState;->getEntry(Ljava/lang/String;)Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    move-result-object v2

    .line 1408
    .local v2, "newEnt":Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    if-eqz v2, :cond_1

    .line 1409
    iput-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    .line 1411
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->checkForceStop()V

    goto :goto_0
.end method

.method private getMoveErrMsg(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "errCode"    # I

    .prologue
    .line 298
    packed-switch p1, :pswitch_data_0

    .line 312
    const-string v0, ""

    :goto_0
    return-object v0

    .line 300
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0565

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 302
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0566

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 304
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0567

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 306
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0568

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 308
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0569

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 310
    :pswitch_5
    const-string v0, ""

    goto :goto_0

    .line 298
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 3
    .param p1, "size"    # J

    .prologue
    .line 266
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mInvalidSizeStr:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleDisableable(Landroid/widget/Button;)Z
    .locals 5
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    const v4, 0x7f0c0526

    .line 365
    const/4 v0, 0x0

    .line 369
    .local v0, "disableable":Z
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v2, v3}, Lcom/android/settings_ex/Utils;->isSystemPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 372
    :cond_0
    invoke-virtual {p1, v4}, Landroid/widget/Button;->setText(I)V

    .line 380
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/settings_ex/applications/ApplicationInfoWhite;->mAppPkg:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 383
    sget-object v2, Lcom/android/settings_ex/applications/ApplicationInfoWhite;->mAppPkg:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 385
    .local v1, "moveAppKey":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_1

    .line 386
    const/4 v0, 0x0

    .line 389
    .end local v1    # "moveAppKey":Ljava/lang/Integer;
    :cond_1
    return v0

    .line 373
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_3

    .line 374
    invoke-virtual {p1, v4}, Landroid/widget/Button;->setText(I)V

    .line 375
    const/4 v0, 0x1

    goto :goto_0

    .line 377
    :cond_3
    const v2, 0x7f0c0527

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(I)V

    .line 378
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initDataButtons()V
    .locals 4

    .prologue
    const v3, 0x7f0c0528

    const/4 v2, 0x0

    .line 277
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x41

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 281
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 282
    iput-boolean v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mCanClearData:Z

    .line 292
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 295
    :cond_1
    return-void

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 285
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v1, 0x7f0c053b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 289
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 287
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method

.method private initMoveButton()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 323
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mMoveClearSpace:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 326
    return-void
.end method

.method private initNotificationButton()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 469
    const-string v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 472
    .local v1, "nm":Landroid/app/INotificationManager;
    const/4 v0, 0x1

    .line 474
    .local v0, "enabled":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v1, v2, v3}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 479
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 480
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v2, v3}, Lcom/android/settings_ex/Utils;->isSystemPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 481
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 489
    :goto_1
    return-void

    .line 482
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-nez v2, :cond_1

    .line 484
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    goto :goto_1

    .line 486
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 487
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v2, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1

    .line 476
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private initUninstallButtons()V
    .locals 10

    .prologue
    const v9, 0x7f0c0523

    const/16 v8, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 393
    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_6

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 394
    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_7

    move v3, v6

    .line 395
    .local v3, "isBundled":Z
    :goto_1
    const/4 v1, 0x1

    .line 396
    .local v1, "enabled":Z
    iget-boolean v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v5, :cond_9

    .line 397
    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v9, 0x7f0c0529

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setText(I)V

    .line 398
    const/4 v4, 0x0

    .line 399
    .local v4, "showSpecialDisable":Z
    if-eqz v3, :cond_0

    .line 400
    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    invoke-direct {p0, v5}, Lcom/android/settings_ex/applications/InstalledAppDetails;->handleDisableable(Landroid/widget/Button;)Z

    move-result v4

    .line 401
    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    :cond_0
    iget-boolean v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-eqz v5, :cond_1

    .line 404
    const/4 v4, 0x0

    .line 406
    :cond_1
    iget-object v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    if-eqz v4, :cond_8

    move v5, v7

    :goto_2
    invoke-virtual {v9, v5}, Landroid/view/View;->setVisibility(I)V

    .line 424
    .end local v4    # "showSpecialDisable":Z
    :goto_3
    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v8, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 425
    const/4 v1, 0x0

    .line 436
    :cond_2
    if-eqz v1, :cond_3

    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    iget-object v8, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 437
    if-eqz v3, :cond_c

    .line 438
    const/4 v1, 0x0

    .line 457
    :cond_3
    :goto_4
    iget-boolean v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-eqz v5, :cond_4

    .line 458
    const/4 v1, 0x0

    .line 461
    :cond_4
    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 462
    if-eqz v1, :cond_5

    .line 464
    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 466
    :cond_5
    return-void

    .end local v1    # "enabled":Z
    .end local v3    # "isBundled":Z
    :cond_6
    move v5, v7

    .line 393
    goto :goto_0

    :cond_7
    move v3, v7

    .line 394
    goto :goto_1

    .restart local v1    # "enabled":Z
    .restart local v3    # "isBundled":Z
    .restart local v4    # "showSpecialDisable":Z
    :cond_8
    move v5, v8

    .line 406
    goto :goto_2

    .line 409
    .end local v4    # "showSpecialDisable":Z
    :cond_9
    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 410
    if-eqz v3, :cond_a

    .line 411
    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-direct {p0, v5}, Lcom/android/settings_ex/applications/InstalledAppDetails;->handleDisableable(Landroid/widget/Button;)Z

    move-result v1

    goto :goto_3

    .line 412
    :cond_a
    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x800000

    and-int/2addr v5, v8

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v8, 0x2

    if-lt v5, v8, :cond_b

    .line 416
    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setText(I)V

    .line 417
    const/4 v1, 0x0

    goto :goto_3

    .line 419
    :cond_b
    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setText(I)V

    goto :goto_3

    .line 440
    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 441
    .local v2, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v2}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    .line 443
    .local v0, "currentDefaultHome":Landroid/content/ComponentName;
    if-nez v0, :cond_e

    .line 446
    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    if-le v5, v6, :cond_d

    move v1, v6

    :goto_5
    goto :goto_4

    :cond_d
    move v1, v7

    goto :goto_5

    .line 451
    :cond_e
    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    move v1, v6

    :goto_6
    goto :goto_4

    :cond_f
    move v1, v7

    goto :goto_6
.end method

.method private initiateClearUserData()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1153
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1155
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1156
    .local v1, "packageName":Ljava/lang/String;
    const-string v3, "InstalledAppDetails"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clearing user data for package : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/settings_ex/applications/InstalledAppDetails$ClearUserDataObserver;

    if-nez v3, :cond_0

    .line 1158
    new-instance v3, Lcom/android/settings_ex/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$ClearUserDataObserver;-><init>(Lcom/android/settings_ex/applications/InstalledAppDetails;)V

    iput-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/settings_ex/applications/InstalledAppDetails$ClearUserDataObserver;

    .line 1160
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1162
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/settings_ex/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-virtual {v0, v1, v3}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v2

    .line 1164
    .local v2, "res":Z
    if-nez v2, :cond_1

    .line 1167
    const-string v3, "InstalledAppDetails"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldnt clear application user data for package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    const/4 v3, 0x4

    invoke-direct {p0, v3, v6}, Lcom/android/settings_ex/applications/InstalledAppDetails;->showDialogInner(II)V

    .line 1173
    :goto_0
    return-void

    .line 1171
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v4, 0x7f0c0549

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private processClearMsg(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 1107
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1108
    .local v1, "result":I
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1109
    .local v0, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v3, 0x7f0c0528

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 1110
    if-ne v1, v4, :cond_0

    .line 1111
    const-string v2, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleared user data for package : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mState:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 1116
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->checkForceStop()V

    .line 1117
    return-void

    .line 1114
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private processMoveMsg(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1134
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1135
    .local v1, "result":I
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1137
    .local v0, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 1138
    const/16 v2, -0x64

    if-ne v1, v2, :cond_0

    .line 1139
    const-string v2, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moved resources for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mState:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 1145
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->refreshUi()Z

    .line 1146
    return-void

    .line 1143
    :cond_0
    const/4 v2, 0x6

    invoke-direct {p0, v2, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0
.end method

.method private refreshButtons()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1120
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mMoveInProgress:Z

    if-nez v0, :cond_0

    .line 1121
    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->initUninstallButtons()V

    .line 1122
    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->initDataButtons()V

    .line 1123
    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->initMoveButton()V

    .line 1124
    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->initNotificationButton()V

    .line 1131
    :goto_0
    return-void

    .line 1126
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v1, 0x7f0c0564

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1127
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1128
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1129
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private refreshSizeInfo()V
    .locals 12

    .prologue
    .line 1020
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-wide v8, v3, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v10, -0x2

    cmp-long v3, v8, v10

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-wide v8, v3, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v10, -0x1

    cmp-long v3, v8, v10

    if-nez v3, :cond_4

    .line 1022
    :cond_0
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLastTotalSize:J

    iput-wide v8, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLastCacheSize:J

    iput-wide v8, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLastDataSize:J

    iput-wide v8, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 1023
    iget-boolean v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mHaveSizes:Z

    if-nez v3, :cond_1

    .line 1024
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1025
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1026
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1027
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1029
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1030
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1087
    :goto_0
    iget-boolean v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-eqz v3, :cond_2

    .line 1088
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1089
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1091
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/settings_ex/applications/ApplicationInfoWhite;->mAppPkg:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1094
    sget-object v3, Lcom/android/settings_ex/applications/ApplicationInfoWhite;->mAppPkg:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1096
    .local v2, "clearDataKey":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_3

    .line 1097
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1100
    .end local v2    # "clearDataKey":Ljava/lang/Integer;
    :cond_3
    return-void

    .line 1033
    :cond_4
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mHaveSizes:Z

    .line 1034
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-wide v4, v3, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->codeSize:J

    .line 1035
    .local v4, "codeSize":J
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-wide v6, v3, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->dataSize:J

    .line 1036
    .local v6, "dataSize":J
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "mounted"

    invoke-static {}, Landroid/os/Environment;->getSecondaryStorageState()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 1039
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-wide v8, v3, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    add-long/2addr v4, v8

    .line 1040
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-wide v8, v3, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->externalDataSize:J

    add-long/2addr v6, v8

    .line 1053
    :cond_5
    :goto_1
    iget-wide v8, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLastCodeSize:J

    cmp-long v3, v8, v4

    if-eqz v3, :cond_6

    .line 1054
    iput-wide v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 1055
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    if-eqz v3, :cond_6

    .line 1056
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1059
    :cond_6
    iget-wide v8, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLastDataSize:J

    cmp-long v3, v8, v6

    if-eqz v3, :cond_7

    .line 1060
    iput-wide v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLastDataSize:J

    .line 1061
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    invoke-direct {p0, v6, v7}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1063
    :cond_7
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-wide v8, v3, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->cacheSize:J

    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-wide v10, v3, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->externalCacheSize:J

    add-long v0, v8, v10

    .line 1064
    .local v0, "cacheSize":J
    iget-wide v8, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLastCacheSize:J

    cmp-long v3, v8, v0

    if-eqz v3, :cond_8

    .line 1065
    iput-wide v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLastCacheSize:J

    .line 1066
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1068
    :cond_8
    iget-wide v8, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLastTotalSize:J

    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-wide v10, v3, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v3, v8, v10

    if-eqz v3, :cond_9

    .line 1069
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-wide v8, v3, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->size:J

    iput-wide v8, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLastTotalSize:J

    .line 1070
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->size:J

    invoke-direct {p0, v8, v9}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1073
    :cond_9
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-wide v8, v3, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->dataSize:J

    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-wide v10, v3, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->externalDataSize:J

    add-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-lez v3, :cond_a

    iget-boolean v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mCanClearData:Z

    if-nez v3, :cond_d

    .line 1075
    :cond_a
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1080
    :goto_2
    const-wide/16 v8, 0x0

    cmp-long v3, v0, v8

    if-gtz v3, :cond_e

    .line 1081
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1042
    .end local v0    # "cacheSize":J
    :cond_b
    iget-wide v8, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-wide v10, v3, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    cmp-long v3, v8, v10

    if-eqz v3, :cond_c

    .line 1043
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-wide v8, v3, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    iput-wide v8, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    .line 1044
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    invoke-direct {p0, v8, v9}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1047
    :cond_c
    iget-wide v8, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLastExternalDataSize:J

    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-wide v10, v3, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->externalDataSize:J

    cmp-long v3, v8, v10

    if-eqz v3, :cond_5

    .line 1048
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-wide v8, v3, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->externalDataSize:J

    iput-wide v8, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLastExternalDataSize:J

    .line 1049
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->externalDataSize:J

    invoke-direct {p0, v8, v9}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1077
    .restart local v0    # "cacheSize":J
    :cond_d
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1078
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 1083
    :cond_e
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1084
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private refreshUi()Z
    .locals 33

    .prologue
    .line 808
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mMoveInProgress:Z

    move/from16 v29, v0

    if-eqz v29, :cond_0

    .line 809
    const/16 v29, 0x1

    .line 962
    :goto_0
    return v29

    .line 811
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->retrieveAppEntry()Ljava/lang/String;

    move-result-object v23

    .line 813
    .local v23, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    move-object/from16 v29, v0

    if-nez v29, :cond_1

    .line 814
    const/16 v29, 0x0

    goto :goto_0

    .line 817
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v29, v0

    if-nez v29, :cond_2

    .line 818
    const/16 v29, 0x0

    goto :goto_0

    .line 822
    :cond_2
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 823
    .local v18, "homeActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/HashSet;->clear()V

    .line 825
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v29

    move/from16 v0, v19

    move/from16 v1, v29

    if-ge v0, v1, :cond_4

    .line 826
    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/pm/ResolveInfo;

    .line 827
    .local v25, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 828
    .local v5, "activityPkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 831
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v22, v0

    .line 832
    .local v22, "metadata":Landroid/os/Bundle;
    if-eqz v22, :cond_3

    .line 833
    const-string v29, "android.app.home.alternate"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 835
    .local v21, "metaPkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5}, Lcom/android/settings_ex/applications/InstalledAppDetails;->signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 825
    .end local v21    # "metaPkg":Ljava/lang/String;
    :cond_3
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 842
    .end local v5    # "activityPkg":Ljava/lang/String;
    .end local v22    # "metadata":Landroid/os/Bundle;
    .end local v25    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_4
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 845
    .local v24, "prefActList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 846
    .local v20, "intentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    move-object/from16 v2, v24

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 850
    const/16 v17, 0x0

    .line 852
    .local v17, "hasUsbDefaults":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    move-object/from16 v29, v0

    if-eqz v29, :cond_5

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    move-object/from16 v29, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v30

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/hardware/usb/IUsbManager;->hasDefaults(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    .line 859
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v16

    .line 862
    .local v16, "hasBindAppWidgetPermission":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    move-object/from16 v29, v0

    const v30, 0x7f1201d3

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 864
    .local v11, "autoLaunchTitleView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    move-object/from16 v29, v0

    const v30, 0x7f1200c6

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 866
    .local v12, "autoLaunchView":Landroid/widget/TextView;
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v29

    if-gtz v29, :cond_6

    if-eqz v17, :cond_9

    :cond_6
    const/4 v10, 0x1

    .line 867
    .local v10, "autoLaunchEnabled":Z
    :goto_3
    if-nez v10, :cond_a

    if-nez v16, :cond_a

    .line 868
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/android/settings_ex/applications/InstalledAppDetails;->resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 909
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "activity"

    invoke-virtual/range {v29 .. v30}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager;

    .line 911
    .local v8, "am":Landroid/app/ActivityManager;
    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/app/ActivityManager;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v14

    .line 923
    .local v14, "compatMode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mScreenCompatSection:Landroid/view/View;

    move-object/from16 v29, v0

    const/16 v30, 0x8

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->setVisibility(I)V

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPermissionReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v29, v0

    if-eqz v29, :cond_7

    .line 927
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPermissionReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 929
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPermissionCallback:Lcom/android/settings_ex/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/applications/PermissionsSummaryHelper;->getPermissionSummary(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings_ex/applications/PermissionsSummaryHelper$PermissionsResultCallback;)Landroid/content/BroadcastReceiver;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPermissionReceiver:Landroid/content/BroadcastReceiver;

    .line 932
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->checkForceStop()V

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V

    .line 934
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->refreshButtons()V

    .line 935
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->refreshSizeInfo()V

    .line 937
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mInitialized:Z

    move/from16 v29, v0

    if-nez v29, :cond_14

    .line 939
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/applications/InstalledAppDetails;->mInitialized:Z

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v29, v0

    const/high16 v30, 0x800000

    and-int v29, v29, v30

    if-nez v29, :cond_13

    const/16 v29, 0x1

    :goto_5
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/applications/InstalledAppDetails;->mShowUninstalled:Z

    .line 962
    :cond_8
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 856
    .end local v8    # "am":Landroid/app/ActivityManager;
    .end local v10    # "autoLaunchEnabled":Z
    .end local v11    # "autoLaunchTitleView":Landroid/widget/TextView;
    .end local v12    # "autoLaunchView":Landroid/widget/TextView;
    .end local v14    # "compatMode":I
    .end local v16    # "hasBindAppWidgetPermission":Z
    :catch_0
    move-exception v15

    .line 857
    .local v15, "e":Landroid/os/RemoteException;
    const-string v29, "InstalledAppDetails"

    const-string v30, "mUsbManager.hasDefaults"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 866
    .end local v15    # "e":Landroid/os/RemoteException;
    .restart local v11    # "autoLaunchTitleView":Landroid/widget/TextView;
    .restart local v12    # "autoLaunchView":Landroid/widget/TextView;
    .restart local v16    # "hasBindAppWidgetPermission":Z
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 870
    .restart local v10    # "autoLaunchEnabled":Z
    :cond_a
    if-eqz v16, :cond_f

    if-eqz v10, :cond_f

    const/16 v28, 0x1

    .line 873
    .local v28, "useBullets":Z
    :goto_6
    if-eqz v16, :cond_10

    .line 874
    const v29, 0x7f0c0516

    move/from16 v0, v29

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(I)V

    .line 879
    :goto_7
    const/16 v27, 0x0

    .line 880
    .local v27, "text":Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f0b003d

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 882
    .local v13, "bulletIndent":I
    if-eqz v10, :cond_c

    .line 883
    const v29, 0x7f0c052a

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 884
    .local v9, "autoLaunchEnableText":Ljava/lang/CharSequence;
    new-instance v26, Landroid/text/SpannableString;

    move-object/from16 v0, v26

    invoke-direct {v0, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 885
    .local v26, "s":Landroid/text/SpannableString;
    if-eqz v28, :cond_b

    .line 886
    new-instance v29, Landroid/text/style/BulletSpan;

    move-object/from16 v0, v29

    invoke-direct {v0, v13}, Landroid/text/style/BulletSpan;-><init>(I)V

    const/16 v30, 0x0

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v31

    const/16 v32, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 889
    :cond_b
    if-nez v27, :cond_11

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v26, v29, v30

    const/16 v30, 0x1

    const-string v31, "\n"

    aput-object v31, v29, v30

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v27

    .line 892
    .end local v9    # "autoLaunchEnableText":Ljava/lang/CharSequence;
    .end local v26    # "s":Landroid/text/SpannableString;
    :cond_c
    :goto_8
    if-eqz v16, :cond_e

    .line 893
    const v29, 0x7f0c052b

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 894
    .local v7, "alwaysAllowBindAppWidgetsText":Ljava/lang/CharSequence;
    new-instance v26, Landroid/text/SpannableString;

    move-object/from16 v0, v26

    invoke-direct {v0, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 896
    .restart local v26    # "s":Landroid/text/SpannableString;
    if-eqz v28, :cond_d

    .line 897
    new-instance v29, Landroid/text/style/BulletSpan;

    move-object/from16 v0, v29

    invoke-direct {v0, v13}, Landroid/text/style/BulletSpan;-><init>(I)V

    const/16 v30, 0x0

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v31

    const/16 v32, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 900
    :cond_d
    if-nez v27, :cond_12

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v26, v29, v30

    const/16 v30, 0x1

    const-string v31, "\n"

    aput-object v31, v29, v30

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v27

    .line 903
    .end local v7    # "alwaysAllowBindAppWidgetsText":Ljava/lang/CharSequence;
    .end local v26    # "s":Landroid/text/SpannableString;
    :cond_e
    :goto_9
    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/widget/Button;->setEnabled(Z)V

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 870
    .end local v13    # "bulletIndent":I
    .end local v27    # "text":Ljava/lang/CharSequence;
    .end local v28    # "useBullets":Z
    :cond_f
    const/16 v28, 0x0

    goto/16 :goto_6

    .line 876
    .restart local v28    # "useBullets":Z
    :cond_10
    const v29, 0x7f0c0515

    move/from16 v0, v29

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_7

    .line 889
    .restart local v9    # "autoLaunchEnableText":Ljava/lang/CharSequence;
    .restart local v13    # "bulletIndent":I
    .restart local v26    # "s":Landroid/text/SpannableString;
    .restart local v27    # "text":Ljava/lang/CharSequence;
    :cond_11
    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v27, v29, v30

    const/16 v30, 0x1

    const-string v31, "\n"

    aput-object v31, v29, v30

    const/16 v30, 0x2

    aput-object v26, v29, v30

    const/16 v30, 0x3

    const-string v31, "\n"

    aput-object v31, v29, v30

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v27

    goto/16 :goto_8

    .line 900
    .end local v9    # "autoLaunchEnableText":Ljava/lang/CharSequence;
    .restart local v7    # "alwaysAllowBindAppWidgetsText":Ljava/lang/CharSequence;
    :cond_12
    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v27, v29, v30

    const/16 v30, 0x1

    const-string v31, "\n"

    aput-object v31, v29, v30

    const/16 v30, 0x2

    aput-object v26, v29, v30

    const/16 v30, 0x3

    const-string v31, "\n"

    aput-object v31, v29, v30

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v27

    goto :goto_9

    .line 940
    .end local v7    # "alwaysAllowBindAppWidgetsText":Ljava/lang/CharSequence;
    .end local v13    # "bulletIndent":I
    .end local v26    # "s":Landroid/text/SpannableString;
    .end local v27    # "text":Ljava/lang/CharSequence;
    .end local v28    # "useBullets":Z
    .restart local v8    # "am":Landroid/app/ActivityManager;
    .restart local v14    # "compatMode":I
    :cond_13
    const/16 v29, 0x0

    goto/16 :goto_5

    .line 945
    :cond_14
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x2200

    invoke-virtual/range {v29 .. v31}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 951
    .local v6, "ainfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mShowUninstalled:Z

    move/from16 v29, v0

    if-nez v29, :cond_8

    .line 955
    iget v0, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v29, v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    const/high16 v30, 0x800000

    and-int v29, v29, v30

    if-eqz v29, :cond_15

    const/16 v29, 0x1

    goto/16 :goto_0

    :cond_15
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 957
    .end local v6    # "ainfo":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v15

    .line 958
    .local v15, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v29, 0x0

    goto/16 :goto_0
.end method

.method private resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2
    .param p1, "title"    # Landroid/widget/TextView;
    .param p2, "autoLaunchView"    # Landroid/widget/TextView;

    .prologue
    .line 1004
    const v0, 0x7f0c0515

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1005
    const v0, 0x7f0c052c

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1007
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1008
    return-void
.end method

.method private retrieveAppEntry()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 761
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 762
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const-string v4, "package"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 764
    .local v3, "packageName":Ljava/lang/String;
    :goto_0
    if-nez v3, :cond_0

    .line 765
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 767
    .local v2, "intent":Landroid/content/Intent;
    :goto_1
    if-eqz v2, :cond_0

    .line 768
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 771
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mState:Lcom/android/settings_ex/applications/ApplicationsState;

    invoke-virtual {v4, v3}, Lcom/android/settings_ex/applications/ApplicationsState;->getEntry(Ljava/lang/String;)Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    .line 772
    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    if-eqz v4, :cond_3

    .line 776
    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v6, 0x2240

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    :goto_2
    return-object v3

    .end local v3    # "packageName":Ljava/lang/String;
    :cond_1
    move-object v3, v5

    .line 762
    goto :goto_0

    .line 765
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_2
    const-string v4, "intent"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    move-object v2, v4

    goto :goto_1

    .line 780
    :catch_0
    move-exception v1

    .line 781
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "InstalledAppDetails"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception when retrieving package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 785
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    const-string v4, "InstalledAppDetails"

    const-string v6, "Missing AppEntry; maybe reinstalling?"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    iput-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    goto :goto_2
.end method

.method private setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V
    .locals 9
    .param p1, "pkgInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v8, 0x0

    .line 682
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v4, 0x7f1200b8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 683
    .local v0, "appSnippet":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v8, v3, v8, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 686
    const v3, 0x7f1200b3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 687
    .local v1, "icon":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mState:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/applications/ApplicationsState;->ensureIcon(Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;)V

    .line 688
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 690
    const v3, 0x7f1200b4

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 691
    .local v2, "label":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 693
    const v3, 0x7f12020a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    .line 695
    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 696
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 697
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0c0560

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 702
    :goto_0
    return-void

    .line 700
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setIntentAndFinish(ZZ)V
    .locals 3
    .param p1, "finish"    # Z
    .param p2, "appChanged"    # Z

    .prologue
    .line 1013
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1014
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "chg"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1015
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/SettingsActivity;

    .line 1016
    .local v1, "sa":Lcom/android/settings_ex/SettingsActivity;
    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2, v0}, Lcom/android/settings_ex/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 1017
    return-void
.end method

.method private setNotificationsEnabled(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    .line 1493
    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1494
    .local v3, "packageName":Ljava/lang/String;
    const-string v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v2

    .line 1498
    .local v2, "nm":Landroid/app/INotificationManager;
    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 1499
    .local v0, "enable":Z
    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v2, v3, v4, p1}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1504
    .end local v0    # "enable":Z
    :goto_0
    return-void

    .line 1501
    :catch_0
    move-exception v1

    .line 1502
    .local v1, "ex":Landroid/os/RemoteException;
    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    if-nez p1, :cond_0

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private showDialogInner(II)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "moveErrorCode"    # I

    .prologue
    .line 1177
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;->newInstance(II)Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;

    move-result-object v1

    .line 1179
    .local v1, "newFragment":Landroid/app/DialogFragment;
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1180
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dialog "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1185
    .end local v1    # "newFragment":Landroid/app/DialogFragment;
    :goto_0
    return-void

    .line 1181
    :catch_0
    move-exception v0

    .line 1182
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "InstalledAppDetails"

    const-string v3, "showDialogInner error"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg1"    # Ljava/lang/String;
    .param p2, "pkg2"    # Ljava/lang/String;

    .prologue
    .line 793
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 795
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 796
    .local v0, "match":I
    if-ltz v0, :cond_0

    .line 797
    const/4 v1, 0x1

    .line 804
    .end local v0    # "match":I
    :goto_0
    return v1

    .line 799
    :catch_0
    move-exception v1

    .line 804
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private startManagePermissionsActivity()V
    .locals 4

    .prologue
    .line 1462
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1463
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.PACKAGE_NAME"

    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1464
    const-string v2, "hideInfoButton"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1466
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1470
    :goto_0
    return-void

    .line 1467
    :catch_0
    move-exception v0

    .line 1468
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "InstalledAppDetails"

    const-string v3, "No app can handle android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private uninstallPkg(Ljava/lang/String;ZZ)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "allUsers"    # Z
    .param p3, "andDisable"    # Z

    .prologue
    .line 1388
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1389
    .local v0, "packageURI":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1391
    .local v1, "uninstallIntent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1393
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1396
    :goto_0
    iput-boolean p3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    .line 1397
    return-void

    .line 1394
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private updateForceStopButton(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1422
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-eqz v0, :cond_0

    .line 1423
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1428
    :goto_0
    return-void

    .line 1425
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1426
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 653
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 654
    if-ne p1, v5, :cond_1

    .line 655
    iget-boolean v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    if-eqz v1, :cond_0

    .line 656
    iput-boolean v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    .line 658
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x2200

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 664
    .local v0, "ainfo":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_0

    .line 665
    new-instance v2, Lcom/android/settings_ex/applications/InstalledAppDetails$DisableChanger;

    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v1, v3}, Lcom/android/settings_ex/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/settings_ex/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 674
    .end local v0    # "ainfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->refreshUi()Z

    move-result v1

    if-nez v1, :cond_1

    .line 675
    invoke-direct {p0, v5, v5}, Lcom/android/settings_ex/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 678
    :cond_1
    return-void

    .line 671
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onAllSizesComputed()V
    .locals 0

    .prologue
    .line 734
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1621
    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1622
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1624
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAskCompatibilityCB:Landroid/widget/CheckBox;

    if-ne p1, v4, :cond_1

    .line 1625
    invoke-virtual {v0, v1, p2}, Landroid/app/ActivityManager;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 1637
    :cond_0
    :goto_0
    return-void

    .line 1626
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mEnableCompatibilityCB:Landroid/widget/CheckBox;

    if-ne p1, v4, :cond_3

    .line 1627
    if-eqz p2, :cond_2

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    .line 1630
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    if-ne p1, v4, :cond_0

    .line 1631
    if-nez p2, :cond_4

    .line 1632
    const/16 v2, 0x8

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 1634
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/settings_ex/applications/InstalledAppDetails;->setNotificationsEnabled(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v11, 0x0

    .line 1523
    const-string v7, ""

    .line 1525
    .local v7, "packageName":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    if-nez v9, :cond_1

    .line 1617
    :cond_0
    :goto_0
    return-void

    .line 1529
    :cond_1
    iget-object v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v9, v9, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v9, :cond_2

    .line 1530
    iget-object v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v9, v9, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1532
    :cond_2
    iget-object v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    if-ne p1, v9, :cond_7

    .line 1533
    iget-boolean v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v9, :cond_3

    .line 1534
    invoke-direct {p0, v6, v11}, Lcom/android/settings_ex/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 1536
    :cond_3
    iget-object v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v9, v9, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_5

    .line 1537
    iget-object v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v9, v9, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v9, v9, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v9, :cond_4

    .line 1538
    const/4 v8, 0x7

    invoke-direct {p0, v8, v11}, Lcom/android/settings_ex/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 1540
    :cond_4
    new-instance v9, Lcom/android/settings_ex/applications/InstalledAppDetails$DisableChanger;

    iget-object v10, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v10, v10, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v9, p0, v10, v11}, Lcom/android/settings_ex/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/settings_ex/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    new-array v10, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    check-cast v8, Ljava/lang/Object;

    aput-object v8, v10, v11

    invoke-virtual {v9, v10}, Lcom/android/settings_ex/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1544
    :cond_5
    iget-object v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v9, v9, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v10, 0x800000

    and-int/2addr v9, v10

    if-nez v9, :cond_6

    .line 1545
    invoke-direct {p0, v7, v8, v11}, Lcom/android/settings_ex/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 1547
    :cond_6
    invoke-direct {p0, v7, v11, v11}, Lcom/android/settings_ex/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 1550
    :cond_7
    iget-object v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    if-ne p1, v9, :cond_8

    .line 1551
    const/16 v8, 0x9

    invoke-direct {p0, v8, v11}, Lcom/android/settings_ex/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 1552
    :cond_8
    iget-object v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    if-ne p1, v9, :cond_b

    .line 1553
    iget-object v8, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    if-eqz v8, :cond_0

    .line 1554
    iget-object v8, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v7}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 1555
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    sget-object v8, Lcom/android/settings_ex/applications/DefaultAppManager;->SYSTEM_APP_TYPE:[Ljava/lang/String;

    array-length v8, v8

    if-ge v4, v8, :cond_a

    .line 1556
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/android/settings_ex/applications/DefaultAppManager;->SYSTEM_APP_TYPE:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1557
    .local v2, "defaultPkgName":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1558
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/android/settings_ex/applications/DefaultAppManager;->SYSTEM_APP_TYPE:[Ljava/lang/String;

    aget-object v9, v9, v4

    const-string v10, ""

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1555
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1562
    .end local v2    # "defaultPkgName":Ljava/lang/String;
    :cond_a
    :try_start_0
    iget-object v8, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-interface {v8, v7, v9}, Landroid/hardware/usb/IUsbManager;->clearDefaults(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1567
    :goto_2
    iget-object v8, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v8, v7, v11}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    .line 1569
    iget-object v8, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v9, 0x7f1201d3

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1571
    .local v0, "autoLaunchTitleView":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v9, 0x7f1200c6

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1573
    .local v1, "autoLaunchView":Landroid/widget/TextView;
    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto/16 :goto_0

    .line 1564
    .end local v0    # "autoLaunchTitleView":Landroid/widget/TextView;
    .end local v1    # "autoLaunchView":Landroid/widget/TextView;
    :catch_0
    move-exception v3

    .line 1565
    .local v3, "e":Landroid/os/RemoteException;
    const-string v8, "InstalledAppDetails"

    const-string v9, "mUsbManager.clearDefaults"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1575
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "i":I
    :cond_b
    iget-object v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    if-ne p1, v9, :cond_d

    .line 1576
    iget-object v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v9, v9, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v9, :cond_c

    .line 1577
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1578
    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1579
    .local v5, "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v8, v8, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v9, v9, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1582
    const/4 v8, 0x2

    :try_start_1
    invoke-virtual {p0, v5, v8}, Lcom/android/settings_ex/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1583
    :catch_1
    move-exception v8

    goto/16 :goto_0

    .line 1587
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_c
    invoke-direct {p0, v8, v11}, Lcom/android/settings_ex/applications/InstalledAppDetails;->showDialogInner(II)V

    goto/16 :goto_0

    .line 1589
    :cond_d
    iget-object v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    if-ne p1, v9, :cond_f

    .line 1591
    iget-object v8, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/settings_ex/applications/InstalledAppDetails$ClearCacheObserver;

    if-nez v8, :cond_e

    .line 1592
    new-instance v8, Lcom/android/settings_ex/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-direct {v8, p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$ClearCacheObserver;-><init>(Lcom/android/settings_ex/applications/InstalledAppDetails;)V

    iput-object v8, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/settings_ex/applications/InstalledAppDetails$ClearCacheObserver;

    .line 1594
    :cond_e
    iget-object v8, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/settings_ex/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-virtual {v8, v7, v9}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    goto/16 :goto_0

    .line 1595
    :cond_f
    iget-object v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    if-ne p1, v9, :cond_10

    .line 1596
    const/4 v8, 0x5

    invoke-direct {p0, v8, v11}, Lcom/android/settings_ex/applications/InstalledAppDetails;->showDialogInner(II)V

    goto/16 :goto_0

    .line 1598
    :cond_10
    iget-object v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    if-ne p1, v9, :cond_0

    .line 1599
    iget-object v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/settings_ex/applications/InstalledAppDetails$PackageMoveObserver;

    if-nez v9, :cond_11

    .line 1600
    new-instance v9, Lcom/android/settings_ex/applications/InstalledAppDetails$PackageMoveObserver;

    invoke-direct {v9, p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$PackageMoveObserver;-><init>(Lcom/android/settings_ex/applications/InstalledAppDetails;)V

    iput-object v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/settings_ex/applications/InstalledAppDetails$PackageMoveObserver;

    .line 1602
    :cond_11
    iget-object v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v9, v9, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v10, 0x40000

    and-int/2addr v9, v10

    if-eqz v9, :cond_12

    move v6, v8

    .line 1604
    .local v6, "moveFlags":I
    :cond_12
    iput-boolean v8, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 1614
    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->refreshButtons()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 494
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 496
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settings_ex/applications/ApplicationsState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mState:Lcom/android/settings_ex/applications/ApplicationsState;

    .line 497
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mState:Lcom/android/settings_ex/applications/ApplicationsState;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/applications/ApplicationsState;->newSession(Lcom/android/settings_ex/applications/ApplicationsState$Callbacks;)Lcom/android/settings_ex/applications/ApplicationsState$Session;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mSession:Lcom/android/settings_ex/applications/ApplicationsState$Session;

    .line 498
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    .line 499
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    .line 501
    const-string v1, "usb"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 502
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    .line 503
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 504
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 506
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    .line 508
    new-instance v1, Lcom/android/settings_ex/applications/CanBeOnSdCardChecker;

    invoke-direct {v1}, Lcom/android/settings_ex/applications/CanBeOnSdCardChecker;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/settings_ex/applications/CanBeOnSdCardChecker;

    .line 511
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mSession:Lcom/android/settings_ex/applications/ApplicationsState$Session;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/ApplicationsState$Session;->resume()V

    .line 513
    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->retrieveAppEntry()Ljava/lang/String;

    .line 515
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->setHasOptionsMenu(Z)V

    .line 516
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->getDafultButtonBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mButtonDefaultBg:Landroid/graphics/drawable/Drawable;

    .line 517
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 616
    const v0, 0x7f0c0524

    invoke-interface {p1, v1, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 619
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x0

    const v9, 0x7f1201c2

    const v8, 0x7f1201c1

    const/16 v7, 0x8

    .line 522
    const v5, 0x7f0400b3

    invoke-virtual {p1, v5, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 525
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f1200ae

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 527
    .local v0, "allDetails":Landroid/view/ViewGroup;
    const/4 v5, 0x1

    invoke-static {v0, v5}, Lcom/android/settings_ex/Utils;->forceCustomPadding(Landroid/view/View;Z)V

    .line 529
    iput-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    .line 530
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0c055d

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    .line 533
    const v5, 0x7f1201c6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    .line 534
    const v5, 0x7f1201c8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    .line 535
    const v5, 0x7f1201cc

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    .line 536
    const v5, 0x7f1201ca

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    .line 538
    const v5, 0x7f1201ce

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    .line 547
    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 548
    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 552
    const v5, 0x7f1201c0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 553
    .local v1, "btnPanel":Landroid/view/View;
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    .line 554
    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const v6, 0x7f0c051d

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 555
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    .line 556
    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 559
    const v5, 0x7f1201c3

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    .line 561
    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 563
    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    const v6, 0x7f1201d0

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 566
    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    .line 568
    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mButtonDefaultBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 570
    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 573
    const v5, 0x7f1201cf

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 574
    .local v2, "data_buttons_panel":Landroid/view/View;
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    .line 576
    const v5, 0x7f1201d0

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mMoveClearSpace:Landroid/view/View;

    .line 578
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    .line 582
    const v5, 0x7f1200b0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    .line 583
    const v5, 0x7f1200b1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    .line 585
    const v5, 0x7f1200c7

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    .line 589
    const v5, 0x7f1201d4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mScreenCompatSection:Landroid/view/View;

    .line 591
    const v5, 0x7f1201d5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAskCompatibilityCB:Landroid/widget/CheckBox;

    .line 593
    const v5, 0x7f1201d6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mEnableCompatibilityCB:Landroid/widget/CheckBox;

    .line 596
    const v5, 0x7f1201c4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CompoundButton;

    iput-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    .line 599
    const v5, 0x7f1201d8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 601
    .local v3, "permissionsGroup":Landroid/view/View;
    new-instance v5, Lcom/android/settings_ex/applications/InstalledAppDetails$2;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$2;-><init>(Lcom/android/settings_ex/applications/InstalledAppDetails;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 609
    const v5, 0x7f1201d9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->permissionsSummary:Landroid/widget/TextView;

    .line 611
    return-object v4
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 724
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 725
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mSession:Lcom/android/settings_ex/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/ApplicationsState$Session;->release()V

    .line 726
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPermissionReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 727
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPermissionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 728
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPermissionReceiver:Landroid/content/BroadcastReceiver;

    .line 730
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 643
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 644
    .local v0, "menuId":I
    if-ne v0, v1, :cond_0

    .line 645
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3, v1, v2}, Lcom/android/settings_ex/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    .line 648
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 738
    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .prologue
    .line 742
    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->refreshUi()Z

    .line 743
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 751
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->refreshSizeInfo()V

    .line 754
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 718
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 719
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mSession:Lcom/android/settings_ex/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/ApplicationsState$Session;->pause()V

    .line 720
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 623
    const/4 v0, 0x1

    .line 624
    .local v0, "showIt":Z
    iget-boolean v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v1, :cond_1

    .line 625
    const/4 v0, 0x0

    .line 638
    :cond_0
    :goto_0
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 639
    return-void

    .line 626
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    if-nez v1, :cond_2

    .line 627
    const/4 v0, 0x0

    goto :goto_0

    .line 628
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 629
    const/4 v0, 0x0

    goto :goto_0

    .line 630
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 632
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 633
    :cond_5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_6

    .line 634
    const/4 v0, 0x0

    goto :goto_0

    .line 635
    :cond_6
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 636
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 747
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;>;"
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 706
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 708
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_control_apps"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppControlRestricted:Z

    .line 710
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mSession:Lcom/android/settings_ex/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/ApplicationsState$Session;->resume()V

    .line 711
    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 712
    invoke-direct {p0, v2, v2}, Lcom/android/settings_ex/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 714
    :cond_0
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0
    .param p1, "running"    # Z

    .prologue
    .line 758
    return-void
.end method
