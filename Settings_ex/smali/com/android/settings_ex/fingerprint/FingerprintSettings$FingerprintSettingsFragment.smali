.class public Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "FingerprintSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fingerprint/FingerprintSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FingerprintSettingsFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog;,
        Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;,
        Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FactoryResetProtectionWarningDialog;
    }
.end annotation


# static fields
.field private static FEATURE_NAME:Ljava/lang/String;

.field private static final splitPackageName:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private applockPreference:Landroid/preference/Preference;

.field private fingerprintCount:I

.field private fingersManagerCategory:Landroid/preference/PreferenceCategory;

.field private isNeedResume:Z

.field private mAuthCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

.field private mFingerprintCancel:Landroid/os/CancellationSignal;

.field private final mFingerprintLockoutReset:Ljava/lang/Runnable;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private final mHandler:Landroid/os/Handler;

.field private mHighlightDrawable:Landroid/graphics/drawable/Drawable;

.field private mInFingerprintLockout:Z

.field private mLaunchedConfirm:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

.field private mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

.field private mToken:[B

.field private needAddFinger:Z

.field private needChangeUnlockSwitch:Z

.field private supersnapPreference:Landroid/preference/Preference;

.field private switchManagerCategory:Landroid/preference/PreferenceCategory;

.field private toApplockListpage:Z

.field private unlockPreference:Landroid/preference/nubia/CheckBoxPreference;

.field private wakeupPreference:Landroid/preference/nubia/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 152
    const-string v0, "cn.nubia.fingerprintsupersnap"

    sput-object v0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->FEATURE_NAME:Ljava/lang/String;

    .line 619
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$8;

    invoke-direct {v0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$8;-><init>()V

    sput-object v0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->splitPackageName:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->isNeedResume:Z

    .line 192
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$1;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAuthCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    .line 219
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$2;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    .line 240
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$3;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHandler:Landroid/os/Handler;

    .line 926
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$11;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$11;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    .line 983
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$12;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$12;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintLockoutReset:Ljava/lang/Runnable;

    .line 1103
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updateFingerAcount()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->needAddFinger:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->toApplockListpage:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->toApplockListpage:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->removeAllFingerprintTemplates()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->chooseLockSettings()V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mInFingerprintLockout:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->renameFingerPrint(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    .prologue
    .line 143
    iget v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->fingerprintCount:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
    .param p1, "x1"    # Landroid/hardware/fingerprint/Fingerprint;

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->deleteFingerPrint(Landroid/hardware/fingerprint/Fingerprint;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updateSwitch()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->retryFingerprint()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
    .param p1, "x1"    # Landroid/os/CancellationSignal;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->highlightFingerprintItem(I)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->needChangeUnlockSwitch:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->chooseLockWhenAddFinger()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->onClickUnlockpreference(Z)Z

    move-result v0

    return v0
.end method

.method private addFingerpage()V
    .locals 4

    .prologue
    .line 688
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 689
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-class v2, Lcom/android/settings_ex/fingerprint/FingerprintIdentifyActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 691
    const-string v1, "hw_auth_token"

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 693
    const-string v1, "FingerprintSettingsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addFingerpage needChangeUnlockSwitch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->needChangeUnlockSwitch:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->needChangeUnlockSwitch:Z

    if-eqz v1, :cond_0

    .line 695
    const-string v1, "add_finger_for"

    const-string v2, "only"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 696
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->needChangeUnlockSwitch:Z

    .line 698
    :cond_0
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 699
    return-void
.end method

.method private addFingerprintItemPreferences()V
    .locals 6

    .prologue
    .line 557
    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->fingersManagerCategory:Landroid/preference/PreferenceCategory;

    .line 558
    .local v4, "root":Landroid/preference/PreferenceGroup;
    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 559
    iget-object v5, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v5}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v2

    .line 561
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    iput v5, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->fingerprintCount:I

    .line 562
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v5, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->fingerprintCount:I

    if-ge v0, v5, :cond_0

    .line 563
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    .line 564
    .local v1, "item":Landroid/hardware/fingerprint/Fingerprint;
    new-instance v3, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;-><init>(Landroid/content/Context;)V

    .line 566
    .local v3, "pref":Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;
    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v5

    invoke-static {v5}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->genKey(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;->setKey(Ljava/lang/String;)V

    .line 567
    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 568
    invoke-virtual {v3, v1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;->setFingerprint(Landroid/hardware/fingerprint/Fingerprint;)V

    .line 569
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;->setPersistent(Z)V

    .line 570
    invoke-virtual {v4, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 571
    invoke-virtual {v3, p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 562
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 573
    .end local v1    # "item":Landroid/hardware/fingerprint/Fingerprint;
    .end local v3    # "pref":Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;
    :cond_0
    return-void
.end method

.method private checkRenameSuccessed(ILjava/lang/String;)V
    .locals 8
    .param p1, "fingerId"    # I
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    .line 974
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->fingersManagerCategory:Landroid/preference/PreferenceCategory;

    invoke-static {p1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->genKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;

    .line 975
    .local v7, "pref":Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 976
    invoke-virtual {v7, p2}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 977
    invoke-virtual {v7}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;->getFingerprint()Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v6

    .line 978
    .local v6, "finger":Landroid/hardware/fingerprint/Fingerprint;
    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v6}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v2

    invoke-virtual {v6}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v3

    invoke-virtual {v6}, Landroid/hardware/fingerprint/Fingerprint;->getDeviceId()J

    move-result-wide v4

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 979
    .local v0, "newFinger":Landroid/hardware/fingerprint/Fingerprint;
    invoke-virtual {v7, v0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;->setFingerprint(Landroid/hardware/fingerprint/Fingerprint;)V

    .line 981
    .end local v0    # "newFinger":Landroid/hardware/fingerprint/Fingerprint;
    .end local v6    # "finger":Landroid/hardware/fingerprint/Fingerprint;
    :cond_0
    return-void
.end method

.method private chooseLockSettings()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 944
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v0

    .line 945
    .local v0, "challenge":J
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 946
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.android.settings"

    const-class v4, Lcom/android/settings_ex/ChooseLockGeneric;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 948
    const-string v3, "minimum_quality"

    const/high16 v4, 0x10000

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 951
    const-string v3, "hide_disabled_prefs"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 954
    const-string v3, "has_challenge"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 956
    const-string v3, "for_fingerprint_title"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 958
    const-string v3, "challenge"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 960
    const/16 v3, 0x66

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 961
    return-void
.end method

.method private chooseLockWhenAddFinger()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 403
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->hasSecureLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->addFingerpage()V

    .line 412
    :goto_0
    return-void

    .line 405
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->fingerprintCount:I

    if-nez v0, :cond_1

    .line 406
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->chooseLockSettings()V

    .line 407
    iput-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->needAddFinger:Z

    goto :goto_0

    .line 409
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->showFactoryResetProtectionWarningDialog()V

    .line 410
    iput-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->needAddFinger:Z

    goto :goto_0
.end method

.method private createPreferenceHierarchy()V
    .locals 0

    .prologue
    .line 434
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->addFingerprintItemPreferences()V

    .line 435
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updateSwitch()V

    .line 436
    return-void
.end method

.method private deleteFingerPrint(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 2
    .param p1, "fingerPrint"    # Landroid/hardware/fingerprint/Fingerprint;

    .prologue
    .line 964
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    invoke-virtual {v0, p1, v1}, Landroid/hardware/fingerprint/FingerprintManager;->remove(Landroid/hardware/fingerprint/Fingerprint;Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    .line 965
    return-void
.end method

.method private static genKey(I)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_fingerprint_item_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHighlightDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 817
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 818
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 819
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 820
    const v1, 0x7f02030c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    .line 824
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    return-object v1
.end method

.method private hasSecureLock()Z
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    return v0
.end method

.method private hidePageIfDiffTask()V
    .locals 11

    .prologue
    .line 629
    :try_start_0
    const-string v8, "activity"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 630
    .local v3, "manager":Landroid/app/ActivityManager;
    const/16 v8, 0xa

    invoke-virtual {v3, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    .line 631
    .local v5, "runningTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v5, :cond_0

    .line 632
    const/4 v8, 0x0

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 633
    .local v6, "task":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v0, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 634
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 635
    .local v4, "runningPack":Ljava/lang/String;
    iget v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 636
    .local v7, "taskId":I
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getTaskId()I

    move-result v1

    .line 637
    .local v1, "currentTaskId":I
    const-string v8, "FingerprintSettingsFragment"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "currentTaskId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " runningPack = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": taskId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    sget-object v8, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->splitPackageName:Ljava/util/HashSet;

    invoke-virtual {v8, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    if-eq v1, v7, :cond_0

    .line 643
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->finish()V

    .line 644
    const-string v8, "FingerprintSettingsFragment"

    const-string v9, "hidePageIfDiffTask close finger page!"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "currentTaskId":I
    .end local v3    # "manager":Landroid/app/ActivityManager;
    .end local v4    # "runningPack":Ljava/lang/String;
    .end local v5    # "runningTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v6    # "task":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v7    # "taskId":I
    :cond_0
    :goto_0
    return-void

    .line 647
    :catch_0
    move-exception v2

    .line 648
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "FingerprintSettingsFragment"

    const-string v9, "Exception"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private highlightFingerprintItem(I)V
    .locals 10
    .param p1, "fpId"    # I

    .prologue
    .line 828
    invoke-static {p1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->genKey(I)Ljava/lang/String;

    move-result-object v4

    .line 829
    .local v4, "prefName":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;

    .line 830
    .local v2, "fpref":Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;
    if-nez v2, :cond_1

    .line 850
    :cond_0
    :goto_0
    return-void

    .line 832
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getHighlightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 833
    .local v3, "highlight":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 834
    invoke-virtual {v2}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;->getView()Landroid/view/View;

    move-result-object v5

    .line 835
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 837
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v0, v6, 0x2

    .line 838
    .local v0, "centerX":I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v1, v6, 0x2

    .line 839
    .local v1, "centerY":I
    int-to-float v6, v0

    int-to-float v7, v1

    invoke-virtual {v3, v6, v7}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 840
    invoke-virtual {v5, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 841
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setPressed(Z)V

    .line 842
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setPressed(Z)V

    .line 843
    iget-object v6, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$10;

    invoke-direct {v7, p0, v5}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$10;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Landroid/view/View;)V

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private launchChooseOrConfirmLock()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 853
    const-string v0, "FingerprintSettingsFragment"

    const-string v2, "pre preEnroll challenge  "

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v6

    .line 855
    .local v6, "challenge":J
    const-string v0, "FingerprintSettingsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after preEnroll challenge : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    new-instance v1, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 859
    .local v1, "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    const/16 v2, 0x65

    const v0, 0x7f0c017c

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v1 .. v7}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 865
    :cond_0
    return-void
.end method

.method private onClickUnlockpreference(Z)Z
    .locals 4
    .param p1, "isOn"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 532
    if-eqz p1, :cond_2

    .line 533
    iget v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->fingerprintCount:I

    if-nez v2, :cond_0

    .line 534
    iput-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->needChangeUnlockSwitch:Z

    .line 535
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->chooseLockWhenAddFinger()V

    .line 554
    :goto_0
    return v0

    .line 538
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->hasSecureLock()Z

    move-result v2

    if-nez v2, :cond_1

    .line 539
    iput-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->needChangeUnlockSwitch:Z

    .line 540
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->showFactoryResetProtectionWarningDialog()V

    goto :goto_0

    .line 543
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->wakeupPreference:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings_ex/fingerprint/FingerprintUtil;->setSupprotFingerPrintWakeup(ZLandroid/content/Context;)V

    .line 546
    invoke-direct {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updateWakeupPreference(Z)V

    .line 547
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintUtil;->setUnlockSwitch(Landroid/content/Context;Z)V

    :goto_1
    move v0, v1

    .line 554
    goto :goto_0

    .line 550
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintUtil;->setUnlockSwitch(Landroid/content/Context;Z)V

    .line 552
    invoke-direct {p0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updateWakeupPreference(Z)V

    goto :goto_1
.end method

.method private removeAllFingerprintTemplates()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 921
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 923
    iget-object v6, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    invoke-virtual {v6, v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->remove(Landroid/hardware/fingerprint/Fingerprint;Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    .line 925
    :cond_0
    return-void
.end method

.method private renameFingerPrint(ILjava/lang/String;)V
    .locals 1
    .param p1, "fingerId"    # I
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    .line 968
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->rename(ILjava/lang/String;)V

    .line 969
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updatePreferences()V

    .line 970
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->checkRenameSuccessed(ILjava/lang/String;)V

    .line 971
    return-void
.end method

.method private retryFingerprint()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 309
    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mInFingerprintLockout:Z

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->resetTimeout([B)V

    .line 311
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    .line 312
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAuthCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V

    .line 315
    :cond_0
    return-void
.end method

.method private runOnOtherThread()V
    .locals 1

    .prologue
    .line 801
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$9;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$9;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    invoke-virtual {v0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$9;->start()V

    .line 814
    return-void
.end method

.method private showFactoryResetProtectionWarningDialog()V
    .locals 3

    .prologue
    .line 867
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FactoryResetProtectionWarningDialog;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FactoryResetProtectionWarningDialog;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    .line 868
    .local v0, "dialog":Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FactoryResetProtectionWarningDialog;
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "renote"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FactoryResetProtectionWarningDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 869
    return-void
.end method

.method private showItemClickDialog(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 4
    .param p1, "fp"    # Landroid/hardware/fingerprint/Fingerprint;

    .prologue
    .line 991
    new-instance v1, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog;

    invoke-direct {v1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog;-><init>()V

    .line 992
    .local v1, "itemDialog":Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 993
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "fingerprint"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 994
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog;->setArguments(Landroid/os/Bundle;)V

    .line 995
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 996
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-class v3, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ItemClickialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 999
    return-void
.end method

.method private stopFingerprint()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 277
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    .line 278
    return-void
.end method

.method private toAppLockListPage()V
    .locals 3

    .prologue
    .line 682
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 683
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "IntentFrom"

    const-string v2, "finger_manager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 684
    const-string v1, "cn.nubia.applockmanager"

    const-string v2, "cn.nubia.applockmanager.AppLockSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 685
    const/16 v1, 0x67

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 686
    return-void
.end method

.method private updateFingerAcount()V
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->fingerprintCount:I

    .line 578
    return-void
.end method

.method private updatePreferences()V
    .locals 0

    .prologue
    .line 598
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->createPreferenceHierarchy()V

    .line 599
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->retryFingerprint()V

    .line 600
    return-void
.end method

.method private updateSwitch()V
    .locals 6

    .prologue
    const v5, 0x7f0c0d81

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 449
    iget v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->fingerprintCount:I

    if-nez v1, :cond_1

    .line 450
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->unlockPreference:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/nubia/CheckBoxPreference;->setSummary(I)V

    .line 451
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/android/settings_ex/fingerprint/FingerprintUtil;->setUnlockSwitch(Landroid/content/Context;Z)V

    .line 456
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerprintUtil;->isUnlockSwitchOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 457
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->unlockPreference:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 458
    invoke-direct {p0, v3}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updateWakeupPreference(Z)V

    .line 459
    invoke-static {}, Lcom/android/settings_ex/fingerprint/FingerprintUtil;->isSupprotFingerPrintWakeup()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 460
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->wakeupPreference:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 469
    :goto_1
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->switchManagerCategory:Landroid/preference/PreferenceCategory;

    const-string v2, "finger_photo_preference"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/nubia/CheckBoxPreference;

    .line 471
    .local v0, "photo":Landroid/preference/nubia/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerprintUtil;->isFingerPhotoOpen(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 472
    invoke-virtual {v0, v4}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 477
    :goto_2
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->applockPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 478
    iget v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->fingerprintCount:I

    if-nez v1, :cond_5

    .line 479
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->applockPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setSummary(I)V

    .line 481
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/settings_ex/fingerprint/FingerprintUtil;->updateFingerAppLockSwitch(ZLandroid/content/Context;)V

    .line 494
    :cond_0
    :goto_3
    new-instance v1, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$5;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$5;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 505
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->wakeupPreference:Landroid/preference/nubia/CheckBoxPreference;

    new-instance v2, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$6;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$6;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/nubia/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 519
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->unlockPreference:Landroid/preference/nubia/CheckBoxPreference;

    new-instance v2, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$7;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$7;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/nubia/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 530
    return-void

    .line 453
    .end local v0    # "photo":Landroid/preference/nubia/CheckBoxPreference;
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->unlockPreference:Landroid/preference/nubia/CheckBoxPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/preference/nubia/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 462
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->wakeupPreference:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 465
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->unlockPreference:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 466
    invoke-direct {p0, v4}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updateWakeupPreference(Z)V

    goto :goto_1

    .line 474
    .restart local v0    # "photo":Landroid/preference/nubia/CheckBoxPreference;
    :cond_4
    invoke-virtual {v0, v3}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2

    .line 484
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerprintUtil;->isFingerAppLockOpen(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 485
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->applockPreference:Landroid/preference/Preference;

    const v2, 0x7f0c0d80

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_3

    .line 488
    :cond_6
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->applockPreference:Landroid/preference/Preference;

    const v2, 0x7f0c0d7f

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_3
.end method

.method private updateWakeupPreference(Z)V
    .locals 4
    .param p1, "remove"    # Z

    .prologue
    .line 439
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->switchManagerCategory:Landroid/preference/PreferenceCategory;

    const-string v2, "mobile_wakeup_preference"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 440
    .local v0, "has":Z
    :goto_0
    const-string v1, "FingerprintSettingsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 442
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->switchManagerCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->wakeupPreference:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 446
    :cond_0
    :goto_1
    return-void

    .line 439
    .end local v0    # "has":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 443
    .restart local v0    # "has":Z
    :cond_2
    if-nez p1, :cond_0

    if-nez v0, :cond_0

    .line 444
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->switchManagerCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->wakeupPreference:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 715
    const v0, 0x7f0c095c

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 319
    const/16 v0, 0x31

    return v0
.end method

.method protected handleError(ILjava/lang/CharSequence;)V
    .locals 6
    .param p1, "errMsgId"    # I
    .param p2, "msg"    # Ljava/lang/CharSequence;

    .prologue
    .line 284
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    .line 285
    packed-switch p1, :pswitch_data_0

    .line 299
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 300
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 301
    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 305
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->retryFingerprint()V

    .line 306
    .end local v0    # "activity":Landroid/app/Activity;
    :pswitch_1
    return-void

    .line 290
    :pswitch_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mInFingerprintLockout:Z

    .line 292
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintLockoutReset:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintLockoutReset:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7530

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 721
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 722
    sparse-switch p1, :sswitch_data_0

    .line 790
    :cond_0
    :goto_0
    return-void

    .line 724
    :sswitch_0
    if-eq p2, v2, :cond_1

    if-ne p2, v0, :cond_2

    .line 726
    :cond_1
    if-eqz p3, :cond_2

    .line 727
    const-string v0, "hw_auth_token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    .line 732
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    if-eqz v0, :cond_4

    .line 733
    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->needAddFinger:Z

    if-eqz v0, :cond_3

    .line 734
    iput-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->needAddFinger:Z

    .line 735
    iput-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->isNeedResume:Z

    .line 736
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->addFingerpage()V

    goto :goto_0

    .line 737
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->needChangeUnlockSwitch:Z

    if-eqz v0, :cond_0

    .line 738
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/settings_ex/fingerprint/FingerprintUtil;->setUnlockSwitch(Landroid/content/Context;Z)V

    goto :goto_0

    .line 741
    :cond_4
    iput-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->needChangeUnlockSwitch:Z

    .line 742
    iput-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->needAddFinger:Z

    .line 743
    iput-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->toApplockListpage:Z

    goto :goto_0

    .line 747
    :sswitch_1
    if-eq p2, v2, :cond_5

    if-ne p2, v0, :cond_7

    .line 749
    :cond_5
    if-eqz p3, :cond_6

    .line 750
    const-string v0, "hw_auth_token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    .line 758
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    if-nez v0, :cond_8

    .line 759
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 753
    :cond_6
    iput-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    goto :goto_1

    .line 756
    :cond_7
    iput-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    goto :goto_1

    .line 761
    :cond_8
    iput-boolean v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->isNeedResume:Z

    goto :goto_0

    .line 765
    :sswitch_2
    iput-boolean v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->isNeedResume:Z

    .line 766
    const/4 v0, 0x3

    if-ne p2, v0, :cond_9

    .line 767
    iput-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->needChangeUnlockSwitch:Z

    .line 768
    iput-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->needAddFinger:Z

    .line 769
    iput-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->toApplockListpage:Z

    .line 770
    iput-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->needAddFinger:Z

    .line 771
    iput-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->isNeedResume:Z

    .line 773
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->launchChooseOrConfirmLock()V

    goto :goto_0

    .line 774
    :cond_9
    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->toApplockListpage:Z

    if-eqz v0, :cond_0

    .line 775
    iput-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->toApplockListpage:Z

    .line 776
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->fingerprintCount:I

    .line 778
    iget v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->fingerprintCount:I

    if-lez v0, :cond_0

    .line 779
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->toAppLockListPage()V

    goto/16 :goto_0

    .line 784
    :sswitch_3
    if-eqz p3, :cond_0

    .line 785
    const-string v0, "hw_auth_token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    goto/16 :goto_0

    .line 722
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0x65 -> :sswitch_1
        0x66 -> :sswitch_0
        0x67 -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 326
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 327
    if-eqz p1, :cond_0

    .line 328
    const-string v2, "hw_auth_token"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    .line 330
    const-string v2, "launched_confirm"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mLaunchedConfirm:Z

    .line 334
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 335
    .local v0, "activity":Landroid/app/Activity;
    const-string v2, "fingerprint"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 337
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 340
    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mLaunchedConfirm:Z

    if-nez v2, :cond_1

    .line 341
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mLaunchedConfirm:Z

    .line 342
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->launchChooseOrConfirmLock()V

    .line 345
    :cond_1
    const v2, 0x7f08005e

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->addPreferencesFromResource(I)V

    .line 346
    const-string v2, "fingerprints_manager_category"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->fingersManagerCategory:Landroid/preference/PreferenceCategory;

    .line 347
    const-string v2, "switch_manager_category"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->switchManagerCategory:Landroid/preference/PreferenceCategory;

    .line 348
    const-string v2, "mobile_unlock_preference"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->unlockPreference:Landroid/preference/nubia/CheckBoxPreference;

    .line 349
    const-string v2, "mobile_wakeup_preference"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->wakeupPreference:Landroid/preference/nubia/CheckBoxPreference;

    .line 350
    const-string v2, "super_snap_preference"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->supersnapPreference:Landroid/preference/Preference;

    .line 351
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 352
    .local v1, "pm":Landroid/content/pm/PackageManager;
    sget-object v2, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->FEATURE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 353
    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->switchManagerCategory:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->supersnapPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 355
    :cond_2
    const-string v2, "app_lock_screen"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->applockPreference:Landroid/preference/Preference;

    .line 356
    invoke-static {}, Lcom/android/settings_ex/Utils;->isAppLockEnable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 357
    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->applockPreference:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 362
    :goto_0
    return-void

    .line 359
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->switchManagerCategory:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->applockPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 360
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->applockPreference:Landroid/preference/Preference;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 368
    const v5, 0x7f0400a8

    invoke-virtual {p1, v5, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 369
    .local v4, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0099

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 373
    .local v2, "max":I
    iget-object v5, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v5}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iput v5, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->fingerprintCount:I

    .line 376
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0c01a8

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 379
    .local v3, "maxSummary":Ljava/lang/CharSequence;
    const v5, 0x102000a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 380
    .local v1, "list":Landroid/widget/ListView;
    invoke-static {p2, v4, v1, v10}, Lcom/android/settings_ex/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 381
    const v5, 0x7f1201ab

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 382
    .local v0, "addFinger":Landroid/widget/Button;
    new-instance v5, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$4;

    invoke-direct {v5, p0, v2, v3}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$4;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    return-object v4
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 794
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 795
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 796
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->runOnOtherThread()V

    .line 798
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 604
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 605
    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->isNeedResume:Z

    if-nez v0, :cond_0

    .line 606
    const-string v0, "FingerprintSettingsFragment"

    const-string v1, "to other page, didnot need pause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :goto_0
    return-void

    .line 609
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->stopFingerprint()V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 703
    const/4 v1, 0x1

    .line 704
    .local v1, "result":Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 705
    .local v0, "key":Ljava/lang/String;
    const-string v2, "fingerprint_enable_keyguard_toggle"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 710
    :goto_0
    return v1

    .line 708
    :cond_0
    const-string v2, "FingerprintSettingsFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    const/4 v9, 0x1

    .line 661
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    .line 662
    .local v8, "key":Ljava/lang/String;
    instance-of v0, p2, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;

    if-eqz v0, :cond_0

    move-object v7, p2

    .line 663
    check-cast v7, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;

    .line 664
    .local v7, "fpref":Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;
    invoke-virtual {v7}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;->getFingerprint()Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v6

    .line 665
    .local v6, "fp":Landroid/hardware/fingerprint/Fingerprint;
    invoke-direct {p0, v6}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->showItemClickDialog(Landroid/hardware/fingerprint/Fingerprint;)V

    .line 666
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    .line 679
    .end local v6    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    .end local v7    # "fpref":Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;
    :goto_0
    return v0

    .line 667
    :cond_0
    const-string v0, "app_lock_screen"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 668
    const-string v0, "FingerprintSettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fingerprintCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->fingerprintCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->fingerprintCount:I

    if-lez v0, :cond_2

    .line 670
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->toAppLockListPage()V

    :cond_1
    :goto_1
    move v0, v9

    .line 679
    goto :goto_0

    .line 672
    :cond_2
    iput-boolean v9, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->toApplockListpage:Z

    .line 673
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->chooseLockWhenAddFinger()V

    goto :goto_1

    .line 675
    :cond_3
    const-string v0, "super_snap_preference"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 676
    const-string v2, "com.android.settings.supersnap.SuperSnapSettingsFragment"

    const v3, 0x7f0c0e4b

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 586
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 587
    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->isNeedResume:Z

    if-nez v0, :cond_0

    .line 588
    const-string v0, "FingerprintSettingsFragment"

    const-string v1, "to other page, didnot need resume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :goto_0
    return-void

    .line 594
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updatePreferences()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 653
    const-string v0, "hw_auth_token"

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 655
    const-string v0, "launched_confirm"

    iget-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mLaunchedConfirm:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 656
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 615
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStop()V

    .line 616
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->hidePageIfDiffTask()V

    .line 617
    return-void
.end method

.method protected removeFingerprintPreference(I)V
    .locals 5
    .param p1, "fingerprintId"    # I

    .prologue
    .line 414
    invoke-static {p1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->genKey(I)Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 416
    .local v1, "prefToRemove":Landroid/preference/Preference;
    if-eqz v1, :cond_1

    .line 417
    const-string v2, "fingerprints_manager_category"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 419
    const-string v2, "FingerprintSettingsFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to remove preference with key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    const-string v2, "FingerprintSettingsFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find preference to remove: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
