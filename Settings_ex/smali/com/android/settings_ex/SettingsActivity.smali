.class public Lcom/android/settings_ex/SettingsActivity;
.super Lcn/nubia/commonui/actionbar/app/ActionBarActivity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;
.implements Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
.implements Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;
.implements Landroid/view/MenuItem$OnActionExpandListener;
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Lcom/android/settings_ex/ButtonBarHandler;


# static fields
.field private static final ENTRY_FRAGMENTS:[Ljava/lang/String;

.field private static final LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

.field private static sShowNoHomeNotice:Z


# instance fields
.field private SETTINGS_FOR_RESTRICTED:[I

.field private isBatteryInfoReceiverRegisted:Z

.field private mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryPresent:Z

.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/dashboard/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mContent:Landroid/view/ViewGroup;

.field private mDevelopmentPreferences:Landroid/content/SharedPreferences;

.field private mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mDisplayHomeAsUpEnabled:Z

.field private mDisplaySearch:Z

.field private mFragmentClass:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHomeActivitiesCount:I

.field private mInitialTitle:Ljava/lang/CharSequence;

.field private mInitialTitleResId:I

.field private mIsShortcut:Z

.field private mIsShowingDashboard:Z

.field private mNeedToRevertToInitialFragment:Z

.field private mNextButton:Landroid/widget/Button;

.field private mResultIntentData:Landroid/content/Intent;

.field private mSearchMenuItem:Landroid/view/MenuItem;

.field private mSearchMenuItemExpanded:Z

.field private mSearchQuery:Ljava/lang/String;

.field private mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

.field titleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 271
    sput-boolean v3, Lcom/android/settings_ex/SettingsActivity;->sShowNoHomeNotice:Z

    .line 313
    const/16 v0, 0x52

    new-array v0, v0, [Ljava/lang/String;

    const-class v1, Lcom/android/settings_ex/WirelessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-class v1, Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-class v2, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/android/settings_ex/msim/NBMsimSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/android/settings_ex/TetherSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/android/settings_ex/vpn2/VpnSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lcom/android/settings_ex/DateTimeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lcom/android/settings_ex/LocalePicker;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-class v2, Lcom/android/settings_ex/inputmethod/UserDictionaryList;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-class v2, Lcom/android/settings_ex/UserDictionarySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-class v2, Lcom/android/settings_ex/HomeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-class v2, Lcom/android/settings_ex/DisplaySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-class v2, Lcom/android/settings_ex/DeviceInfoSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-class v2, Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-class v2, Lcom/android/settings_ex/applications/ManageAssist;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-class v2, Lcom/android/settings_ex/applications/ProcessStatsUi;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-class v2, Lcom/android/settings_ex/notification/NotificationStation;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-class v2, Lcom/android/settings_ex/location/LocationSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-class v2, Lcom/android/settings_ex/SecuritySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-class v2, Lcom/android/settings_ex/applications/UsageAccessDetails;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-class v2, Lcom/android/settings_ex/PrivacySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-class v2, Lcom/android/settings_ex/DeviceAdminSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-class v2, Lcom/android/settings_ex/accessibility/AccessibilitySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-class v2, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-class v2, Lcom/android/settings_ex/accessibility/ToggleDaltonizerPreferenceFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-class v2, Lcom/android/settings_ex/tts/TextToSpeechSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-class v2, Lcom/android/settings_ex/deviceinfo/StorageSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-class v2, Lcom/android/settings_ex/deviceinfo/PrivateVolumeForget;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-class v2, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-class v2, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-class v2, Lcom/android/settings_ex/DevelopmentSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-class v2, Lcom/android/settings_ex/nfc/AndroidBeam;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-class v2, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-class v2, Lcom/android/settings_ex/accounts/AccountSyncSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-class v2, Lcom/android/settings_ex/accounts/AccountSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-class v2, Lcom/android/settings_ex/CryptKeeperSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-class v2, Lcom/android/settings_ex/DataUsageSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-class v2, Lcom/android/settings_ex/DreamSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-class v2, Lcom/android/settings_ex/users/UserSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-class v2, Lcom/android/settings_ex/notification/NotificationAccessSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-class v2, Lcom/android/settings_ex/notification/ZenAccessSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-class v2, Lcom/android/settings_ex/print/PrintSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-class v2, Lcom/android/settings_ex/print/PrintJobSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-class v2, Lcom/android/settings_ex/TrustedCredentialsSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-class v2, Lcom/android/settings_ex/nfc/PaymentSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-class v2, Lcom/android/settings_ex/inputmethod/KeyboardLayoutPickerFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-class v2, Lcom/android/settings_ex/notification/ZenModeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-class v2, Lcom/android/settings_ex/notification/NotificationSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-class v2, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-class v2, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-class v2, Lcom/android/settings_ex/applications/InstalledAppDetails;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-class v2, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-class v2, Lcom/android/settings_ex/notification/AppNotificationSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-class v2, Lcom/android/settings_ex/notification/OtherSoundSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-class v2, Lcom/android/settings_ex/ApnSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-class v2, Lcom/android/settings_ex/WifiCallingSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-class v2, Lcom/android/settings_ex/notification/ZenModePrioritySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-class v2, Lcom/android/settings_ex/notification/ZenModeAutomationSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-class v2, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-class v2, Lcom/android/settings_ex/notification/ZenModeEventRuleSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-class v2, Lcom/android/settings_ex/notification/ZenModeExternalRuleSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-class v2, Lcom/android/settings_ex/applications/ProcessStatsUi;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-class v2, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-class v2, Lcom/android/settings_ex/applications/ProcessStatsSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-class v2, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-class v2, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-class v2, Lcom/android/settings_ex/accounts/NubiaAccountStartFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-class v2, Lcom/android/settings_ex/applications/DrawOverlayDetails;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-class v2, Lcom/android/settings_ex/applications/WriteSettingsDetails;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-class v2, Lcom/android/settings_ex/edge/ShowEdgesFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-class v2, Lcom/android/settings_ex/MoreSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-class v2, Lcom/android/settings_ex/ZMasterClear;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-class v2, Lcom/android/settings_ex/supersnap/SuperSnapSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-class v2, Lcom/android/settings_ex/supersnap/SuperSnapIntroductionFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-class v2, Lcom/android/settings_ex/LauncherSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-class v2, Lcom/android/settings_ex/ZMasterClear;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-class v2, Lcom/android/settings_ex/UsageAccessSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    .line 402
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/settings_ex/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 157
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;-><init>()V

    .line 279
    const/16 v0, 0x1d

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->SETTINGS_FOR_RESTRICTED:[I

    .line 409
    iput-boolean v2, p0, Lcom/android/settings_ex/SettingsActivity;->mBatteryPresent:Z

    .line 410
    new-instance v0, Lcom/android/settings_ex/SettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/SettingsActivity$1;-><init>(Lcom/android/settings_ex/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 443
    iput-boolean v1, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 447
    iput-boolean v1, p0, Lcom/android/settings_ex/SettingsActivity;->isBatteryInfoReceiverRegisted:Z

    .line 450
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    .line 454
    new-instance v0, Lcom/android/settings_ex/SettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/SettingsActivity$2;-><init>(Lcom/android/settings_ex/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mHandler:Landroid/os/Handler;

    .line 468
    iput-boolean v1, p0, Lcom/android/settings_ex/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 469
    iput v2, p0, Lcom/android/settings_ex/SettingsActivity;->mHomeActivitiesCount:I

    return-void

    .line 279
    :array_0
    .array-data 4
        0x7f12049d
        0x7f12049e
        0x7f12049f
        0x7f12000c
        0x7f1204a0
        0x7f1204a2
        0x7f1204a3
        0x7f1204a7
        0x7f1204a5
        0x7f120007
        0x7f1204b1
        0x7f12000a
        0x7f12000d
        0x7f120004
        0x7f1204af
        0x7f120002
        0x7f12000b
        0x7f1204b0
        0x7f1204b2
        0x7f120001
        0x7f1204b4
        0x7f120006
        0x7f120009
        0x7f1204a8
        0x7f1204a4
        0x7f1204aa
        0x7f1204ab
        0x7f1204ac
        0x7f120120
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings_ex/SettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/SettingsActivity;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/android/settings_ex/SettingsActivity;->mBatteryPresent:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/SettingsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/SettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/android/settings_ex/SettingsActivity;->mBatteryPresent:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/SettingsActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/SettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/android/settings_ex/SettingsActivity;->invalidateCategories(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/SettingsActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/SettingsActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/SettingsActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/SettingsActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/android/settings_ex/SettingsActivity;->buildDashboardCategories(Ljava/util/List;)V

    return-void
.end method

.method private addExternalTiles(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/dashboard/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1412
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/dashboard/DashboardCategory;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1414
    .local v0, "addedCache":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/android/settings_ex/dashboard/DashboardTile;>;"
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    .line 1415
    .local v3, "userManager":Landroid/os/UserManager;
    invoke-virtual {v3}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 1416
    .local v2, "user":Landroid/os/UserHandle;
    invoke-direct {p0, p1, v2, v0}, Lcom/android/settings_ex/SettingsActivity;->addExternalTiles(Ljava/util/List;Landroid/os/UserHandle;Ljava/util/Map;)V

    goto :goto_0

    .line 1418
    .end local v2    # "user":Landroid/os/UserHandle;
    :cond_0
    return-void
.end method

.method private addExternalTiles(Ljava/util/List;Landroid/os/UserHandle;Ljava/util/Map;)V
    .locals 15
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/dashboard/DashboardCategory;",
            ">;",
            "Landroid/os/UserHandle;",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settings_ex/dashboard/DashboardTile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1422
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/dashboard/DashboardCategory;>;"
    .local p3, "addedCache":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/android/settings_ex/dashboard/DashboardTile;>;"
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 1423
    .local v8, "pm":Landroid/content/pm/PackageManager;
    new-instance v5, Landroid/content/Intent;

    const-string v12, "com.android.settings.action.EXTRA_SETTINGS"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1424
    .local v5, "intent":Landroid/content/Intent;
    const/16 v12, 0x80

    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v13

    invoke-virtual {v8, v5, v12, v13}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v10

    .line 1426
    .local v10, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 1427
    .local v9, "resolved":Landroid/content/pm/ResolveInfo;
    iget-boolean v12, v9, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v12, :cond_0

    .line 1431
    iget-object v1, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1432
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1433
    .local v7, "metaData":Landroid/os/Bundle;
    if-eqz v7, :cond_1

    const-string v12, "com.android.settings.category"

    invoke-virtual {v7, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 1434
    :cond_1
    const-string v13, "Settings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Found "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v14, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " for action "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "com.android.settings.action.EXTRA_SETTINGS"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " missing metadata "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    if-nez v7, :cond_2

    const-string v12, ""

    :goto_1
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v12, "com.android.settings.category"

    goto :goto_1

    .line 1439
    :cond_3
    const-string v12, "com.android.settings.category"

    invoke-virtual {v7, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1440
    .local v3, "categoryKey":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v3}, Lcom/android/settings_ex/SettingsActivity;->getCategory(Ljava/util/List;Ljava/lang/String;)Lcom/android/settings_ex/dashboard/DashboardCategory;

    move-result-object v2

    .line 1441
    .local v2, "category":Lcom/android/settings_ex/dashboard/DashboardCategory;
    if-nez v2, :cond_4

    .line 1442
    const-string v12, "Settings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Activity "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " has unknown "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "category key "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1446
    :cond_4
    new-instance v6, Landroid/util/Pair;

    iget-object v12, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v13, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v12, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1448
    .local v6, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings_ex/dashboard/DashboardTile;

    .line 1449
    .local v11, "tile":Lcom/android/settings_ex/dashboard/DashboardTile;
    if-nez v11, :cond_5

    .line 1450
    new-instance v11, Lcom/android/settings_ex/dashboard/DashboardTile;

    .end local v11    # "tile":Lcom/android/settings_ex/dashboard/DashboardTile;
    invoke-direct {v11}, Lcom/android/settings_ex/dashboard/DashboardTile;-><init>()V

    .line 1451
    .restart local v11    # "tile":Lcom/android/settings_ex/dashboard/DashboardTile;
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    iget-object v13, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v14, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    iput-object v12, v11, Lcom/android/settings_ex/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    .line 1453
    invoke-static {p0, v11}, Lcom/android/settings_ex/Utils;->updateTileToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Lcom/android/settings_ex/dashboard/DashboardTile;)Z

    .line 1455
    iget v12, v2, Lcom/android/settings_ex/dashboard/DashboardCategory;->externalIndex:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_6

    .line 1458
    invoke-virtual {v2, v11}, Lcom/android/settings_ex/dashboard/DashboardCategory;->addTile(Lcom/android/settings_ex/dashboard/DashboardTile;)V

    .line 1462
    :goto_2
    move-object/from16 v0, p3

    invoke-interface {v0, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1464
    :cond_5
    iget-object v12, v11, Lcom/android/settings_ex/dashboard/DashboardTile;->userHandle:Ljava/util/ArrayList;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1460
    :cond_6
    iget v12, v2, Lcom/android/settings_ex/dashboard/DashboardCategory;->externalIndex:I

    invoke-virtual {v2, v12, v11}, Lcom/android/settings_ex/dashboard/DashboardCategory;->addTile(ILcom/android/settings_ex/dashboard/DashboardTile;)V

    goto :goto_2

    .line 1466
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "category":Lcom/android/settings_ex/dashboard/DashboardCategory;
    .end local v3    # "categoryKey":Ljava/lang/String;
    .end local v6    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "metaData":Landroid/os/Bundle;
    .end local v9    # "resolved":Landroid/content/pm/ResolveInfo;
    .end local v11    # "tile":Lcom/android/settings_ex/dashboard/DashboardTile;
    :cond_7
    return-void
.end method

.method private buildDashboardCategories(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/dashboard/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1127
    .local p1, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/dashboard/DashboardCategory;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1128
    const v0, 0x7f080018

    invoke-static {v0, p1, p0}, Lcom/android/settings_ex/SettingsActivity;->loadCategoriesFromResource(ILjava/util/List;Landroid/content/Context;)V

    .line 1129
    invoke-direct {p0, p1}, Lcom/android/settings_ex/SettingsActivity;->updateTilesList(Ljava/util/List;)V

    .line 1130
    return-void
.end method

.method private getCategory(Ljava/util/List;Ljava/lang/String;)Lcom/android/settings_ex/dashboard/DashboardCategory;
    .locals 3
    .param p2, "categoryKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/dashboard/DashboardCategory;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/settings_ex/dashboard/DashboardCategory;"
        }
    .end annotation

    .prologue
    .line 1469
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/dashboard/DashboardCategory;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/dashboard/DashboardCategory;

    .line 1470
    .local v0, "category":Lcom/android/settings_ex/dashboard/DashboardCategory;
    iget-object v2, v0, Lcom/android/settings_ex/dashboard/DashboardCategory;->key:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1474
    .end local v0    # "category":Lcom/android/settings_ex/dashboard/DashboardCategory;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getHomeActivitiesCount()I
    .locals 3

    .prologue
    .line 774
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 775
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 776
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    return v1
.end method

.method private getMetaData()V
    .locals 5

    .prologue
    .line 1516
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 1518
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_1

    .line 1524
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    return-void

    .line 1519
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_1
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mFragmentClass:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1520
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v1

    .line 1522
    .local v1, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot get Metadata for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 970
    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    .line 982
    :cond_0
    :goto_0
    return-object v0

    .line 972
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 973
    .local v0, "intentClass":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 975
    :cond_2
    const-string v1, "com.android.settings.ManageApplications"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.RunningServices"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.applications.StorageUse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 979
    :cond_3
    const-class v1, Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private invalidateCategories(Z)V
    .locals 3
    .param p1, "forceRefresh"    # Z

    .prologue
    const/4 v2, 0x1

    .line 509
    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 510
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 511
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 512
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "msg_data_force_refresh"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 514
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private static isLikeShortCutIntent(Landroid/content/Intent;)Z
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 537
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 538
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 544
    :cond_0
    :goto_0
    return v2

    .line 541
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v3, Lcom/android/settings_ex/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 542
    sget-object v3, Lcom/android/settings_ex/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    .line 541
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static isShortCutIntent(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 532
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 533
    .local v0, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    const-string v1, "com.android.settings.SHORTCUT"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static loadCategoriesFromResource(ILjava/util/List;Landroid/content/Context;)V
    .locals 22
    .param p0, "resid"    # I
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/dashboard/DashboardCategory;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1141
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/dashboard/DashboardCategory;>;"
    const/4 v12, 0x0

    .line 1143
    .local v12, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v12

    .line 1144
    invoke-static {v12}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 1148
    .local v2, "attrs":Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v16

    .local v16, "type":I
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 1152
    :cond_1
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1153
    .local v10, "nodeName":Ljava/lang/String;
    const-string v17, "dashboard-categories"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 1154
    new-instance v17, Ljava/lang/RuntimeException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "XML document must start with <preference-categories> tag; found"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " at "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1291
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v10    # "nodeName":Ljava/lang/String;
    .end local v16    # "type":I
    :catch_0
    move-exception v5

    .line 1292
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v17, Ljava/lang/RuntimeException;

    const-string v18, "Error parsing categories"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1296
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v17

    if-eqz v12, :cond_2

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    throw v17

    .line 1159
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local v10    # "nodeName":Ljava/lang/String;
    .restart local v16    # "type":I
    :cond_3
    const/4 v4, 0x0

    .line 1161
    .local v4, "curBundle":Landroid/os/Bundle;
    :try_start_2
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    .line 1163
    .local v11, "outerDepth":I
    :cond_4
    :goto_0
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1c

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v11, :cond_1c

    .line 1164
    :cond_5
    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_4

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_4

    .line 1168
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1169
    const-string v17, "dashboard-category"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1b

    .line 1170
    new-instance v3, Lcom/android/settings_ex/dashboard/DashboardCategory;

    invoke-direct {v3}, Lcom/android/settings_ex/dashboard/DashboardCategory;-><init>()V

    .line 1172
    .local v3, "category":Lcom/android/settings_ex/dashboard/DashboardCategory;
    sget-object v17, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 1174
    .local v13, "sa":Landroid/content/res/TypedArray;
    const/16 v17, 0x1

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    iput-wide v0, v3, Lcom/android/settings_ex/dashboard/DashboardCategory;->id:J

    .line 1178
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 1180
    .local v15, "tv":Landroid/util/TypedValue;
    if-eqz v15, :cond_6

    iget v0, v15, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 1181
    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v17, v0

    if-eqz v17, :cond_f

    .line 1182
    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v3, Lcom/android/settings_ex/dashboard/DashboardCategory;->titleRes:I

    .line 1187
    :cond_6
    :goto_1
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 1188
    sget-object v17, Lcom/android/internal/R$styleable;->Preference:[I

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 1190
    const/16 v17, 0x6

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 1192
    if-eqz v15, :cond_7

    iget v0, v15, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 1193
    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v17, v0

    if-eqz v17, :cond_10

    .line 1194
    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v17, v0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v3, Lcom/android/settings_ex/dashboard/DashboardCategory;->key:Ljava/lang/String;

    .line 1199
    :cond_7
    :goto_2
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 1201
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    .line 1203
    .local v6, "innerDepth":I
    :cond_8
    :goto_3
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1a

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_9

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v6, :cond_1a

    .line 1204
    :cond_9
    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_8

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_8

    .line 1208
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1209
    .local v8, "innerNodeName":Ljava/lang/String;
    const-string v17, "dashboard-tile"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_18

    .line 1210
    new-instance v14, Lcom/android/settings_ex/dashboard/DashboardTile;

    invoke-direct {v14}, Lcom/android/settings_ex/dashboard/DashboardTile;-><init>()V

    .line 1212
    .local v14, "tile":Lcom/android/settings_ex/dashboard/DashboardTile;
    sget-object v17, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 1214
    const/16 v17, 0x1

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    iput-wide v0, v14, Lcom/android/settings_ex/dashboard/DashboardTile;->id:J

    .line 1217
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 1219
    if-eqz v15, :cond_a

    iget v0, v15, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 1220
    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v17, v0

    if-eqz v17, :cond_11

    .line 1221
    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v14, Lcom/android/settings_ex/dashboard/DashboardTile;->titleRes:I

    .line 1226
    :cond_a
    :goto_4
    const/16 v17, 0x3

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 1228
    if-eqz v15, :cond_b

    iget v0, v15, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 1229
    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v17, v0

    if-eqz v17, :cond_12

    .line 1230
    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v14, Lcom/android/settings_ex/dashboard/DashboardTile;->summaryRes:I

    .line 1235
    :cond_b
    :goto_5
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v0, v17

    iput v0, v14, Lcom/android/settings_ex/dashboard/DashboardTile;->iconRes:I

    .line 1237
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/settings_ex/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    .line 1239
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 1241
    if-nez v4, :cond_c

    .line 1242
    new-instance v4, Landroid/os/Bundle;

    .end local v4    # "curBundle":Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1245
    .restart local v4    # "curBundle":Landroid/os/Bundle;
    :cond_c
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    .line 1247
    .local v7, "innerDepth2":I
    :cond_d
    :goto_6
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_15

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_e

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v7, :cond_15

    .line 1248
    :cond_e
    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_d

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_d

    .line 1252
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1253
    .local v9, "innerNodeName2":Ljava/lang/String;
    const-string v17, "extra"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    .line 1254
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const-string v18, "extra"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 1256
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    .line 1293
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v3    # "category":Lcom/android/settings_ex/dashboard/DashboardCategory;
    .end local v4    # "curBundle":Landroid/os/Bundle;
    .end local v6    # "innerDepth":I
    .end local v7    # "innerDepth2":I
    .end local v8    # "innerNodeName":Ljava/lang/String;
    .end local v9    # "innerNodeName2":Ljava/lang/String;
    .end local v10    # "nodeName":Ljava/lang/String;
    .end local v11    # "outerDepth":I
    .end local v13    # "sa":Landroid/content/res/TypedArray;
    .end local v14    # "tile":Lcom/android/settings_ex/dashboard/DashboardTile;
    .end local v15    # "tv":Landroid/util/TypedValue;
    .end local v16    # "type":I
    :catch_1
    move-exception v5

    .line 1294
    .local v5, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v17, Ljava/lang/RuntimeException;

    const-string v18, "Error parsing categories"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1184
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local v3    # "category":Lcom/android/settings_ex/dashboard/DashboardCategory;
    .restart local v4    # "curBundle":Landroid/os/Bundle;
    .restart local v10    # "nodeName":Ljava/lang/String;
    .restart local v11    # "outerDepth":I
    .restart local v13    # "sa":Landroid/content/res/TypedArray;
    .restart local v15    # "tv":Landroid/util/TypedValue;
    .restart local v16    # "type":I
    :cond_f
    :try_start_4
    iget-object v0, v15, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v3, Lcom/android/settings_ex/dashboard/DashboardCategory;->title:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 1196
    :cond_10
    iget-object v0, v15, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v3, Lcom/android/settings_ex/dashboard/DashboardCategory;->key:Ljava/lang/String;

    goto/16 :goto_2

    .line 1223
    .restart local v6    # "innerDepth":I
    .restart local v8    # "innerNodeName":Ljava/lang/String;
    .restart local v14    # "tile":Lcom/android/settings_ex/dashboard/DashboardTile;
    :cond_11
    iget-object v0, v15, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/settings_ex/dashboard/DashboardTile;->title:Ljava/lang/CharSequence;

    goto/16 :goto_4

    .line 1232
    :cond_12
    iget-object v0, v15, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/settings_ex/dashboard/DashboardTile;->summary:Ljava/lang/CharSequence;

    goto/16 :goto_5

    .line 1258
    .restart local v7    # "innerDepth2":I
    .restart local v9    # "innerNodeName2":Ljava/lang/String;
    :cond_13
    const-string v17, "intent"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 1259
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v12, v2}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/settings_ex/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    goto/16 :goto_6

    .line 1263
    :cond_14
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 1267
    .end local v9    # "innerNodeName2":Ljava/lang/String;
    :cond_15
    invoke-virtual {v4}, Landroid/os/Bundle;->size()I

    move-result v17

    if-lez v17, :cond_16

    .line 1268
    iput-object v4, v14, Lcom/android/settings_ex/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    .line 1269
    const/4 v4, 0x0

    .line 1274
    :cond_16
    iget-wide v0, v14, Lcom/android/settings_ex/dashboard/DashboardTile;->id:J

    move-wide/from16 v18, v0

    const-wide/32 v20, 0x7f1204a0

    cmp-long v17, v18, v20

    if-nez v17, :cond_17

    invoke-static/range {p2 .. p2}, Lcom/android/settings_ex/Utils;->showSimCardTile(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 1275
    :cond_17
    invoke-virtual {v3, v14}, Lcom/android/settings_ex/dashboard/DashboardCategory;->addTile(Lcom/android/settings_ex/dashboard/DashboardTile;)V

    goto/16 :goto_3

    .line 1278
    .end local v7    # "innerDepth2":I
    .end local v14    # "tile":Lcom/android/settings_ex/dashboard/DashboardTile;
    :cond_18
    const-string v17, "external-tiles"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_19

    .line 1279
    invoke-virtual {v3}, Lcom/android/settings_ex/dashboard/DashboardCategory;->getTilesCount()I

    move-result v17

    move/from16 v0, v17

    iput v0, v3, Lcom/android/settings_ex/dashboard/DashboardCategory;->externalIndex:I

    goto/16 :goto_3

    .line 1281
    :cond_19
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_3

    .line 1285
    .end local v8    # "innerNodeName":Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1287
    .end local v3    # "category":Lcom/android/settings_ex/dashboard/DashboardCategory;
    .end local v6    # "innerDepth":I
    .end local v13    # "sa":Landroid/content/res/TypedArray;
    .end local v15    # "tv":Landroid/util/TypedValue;
    :cond_1b
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1296
    :cond_1c
    if-eqz v12, :cond_1d

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1298
    :cond_1d
    return-void
.end method

.method public static requestHomeNotice()V
    .locals 1

    .prologue
    .line 1541
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings_ex/SettingsActivity;->sShowNoHomeNotice:Z

    .line 1542
    return-void
.end method

.method private revertToInitialFragment()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1604
    iput-boolean v1, p0, Lcom/android/settings_ex/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 1605
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    .line 1606
    iput-boolean v1, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 1607
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, ":settings:prefs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 1609
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1610
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 1612
    :cond_0
    return-void
.end method

.method private setTitleFromBackStack()I
    .locals 4

    .prologue
    .line 818
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 820
    .local v1, "count":I
    if-nez v1, :cond_1

    .line 821
    iget v2, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I

    if-lez v2, :cond_0

    .line 822
    iget v2, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/SettingsActivity;->setTitle(I)V

    .line 826
    :goto_0
    const/4 v1, 0x0

    .line 832
    .end local v1    # "count":I
    :goto_1
    return v1

    .line 824
    .restart local v1    # "count":I
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 829
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v0

    .line 830
    .local v0, "bse":Landroid/app/FragmentManager$BackStackEntry;
    invoke-direct {p0, v0}, Lcom/android/settings_ex/SettingsActivity;->setTitleFromBackStackEntry(Landroid/app/FragmentManager$BackStackEntry;)V

    goto :goto_1
.end method

.method private setTitleFromBackStackEntry(Landroid/app/FragmentManager$BackStackEntry;)V
    .locals 2
    .param p1, "bse"    # Landroid/app/FragmentManager$BackStackEntry;

    .prologue
    .line 837
    invoke-interface {p1}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitleRes()I

    move-result v1

    .line 838
    .local v1, "titleRes":I
    if-lez v1, :cond_1

    .line 839
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/SettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 843
    .local v0, "title":Ljava/lang/CharSequence;
    :goto_0
    if-eqz v0, :cond_0

    .line 844
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 846
    :cond_0
    return-void

    .line 841
    .end local v0    # "title":Ljava/lang/CharSequence;
    :cond_1
    invoke-interface {p1}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "title":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private setTitleFromIntent(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, -0x1

    .line 780
    const-string v5, ":settings:show_fragment_title_resid"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 781
    .local v3, "initialTitleResId":I
    if-lez v3, :cond_1

    .line 782
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 783
    iput v3, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I

    .line 785
    const-string v5, ":settings:show_fragment_title_res_package_name"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 787
    .local v4, "initialTitleResPackageName":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 789
    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/settings_ex/SettingsActivity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 791
    .local v0, "authContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 792
    iget-object v5, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 793
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    .end local v0    # "authContext":Landroid/content/Context;
    .end local v4    # "initialTitleResPackageName":Ljava/lang/String;
    :goto_0
    return-void

    .line 795
    .restart local v4    # "initialTitleResPackageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 796
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "Settings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not find package"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 799
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    iget v5, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/SettingsActivity;->setTitle(I)V

    goto :goto_0

    .line 802
    .end local v4    # "initialTitleResPackageName":Ljava/lang/String;
    :cond_1
    iput v6, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I

    .line 803
    const-string v5, ":settings:show_fragment_title"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 804
    .local v2, "initialTitle":Ljava/lang/String;
    if-eqz v2, :cond_2

    .end local v2    # "initialTitle":Ljava/lang/String;
    :goto_1
    iput-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 805
    iget-object v5, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 804
    .restart local v2    # "initialTitle":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1
.end method

.method private switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;
    .locals 5
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "validate"    # Z
    .param p4, "addToBackStack"    # Z
    .param p5, "titleResId"    # I
    .param p6, "title"    # Ljava/lang/CharSequence;
    .param p7, "withTransition"    # Z

    .prologue
    .line 1098
    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/SettingsActivity;->isValidFragment(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1099
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid fragment for this activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1102
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 1103
    .local v0, "f":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1104
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    const v2, 0x7f1202ab

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1105
    if-eqz p7, :cond_1

    .line 1106
    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mContent:Landroid/view/ViewGroup;

    invoke-static {v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 1108
    :cond_1
    if-eqz p4, :cond_2

    .line 1109
    const-string v2, ":settings:prefs"

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1111
    :cond_2
    if-lez p5, :cond_4

    .line 1112
    invoke-virtual {v1, p5}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    .line 1116
    :cond_3
    :goto_0
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1117
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1118
    return-object v0

    .line 1113
    :cond_4
    if-eqz p6, :cond_3

    .line 1114
    invoke-virtual {v1, p6}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method private switchToSearchResultsFragmentIfNeeded()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 1584
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    if-eqz v0, :cond_0

    .line 1597
    :goto_0
    return-void

    .line 1587
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f1202ab

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v8

    .line 1588
    .local v8, "current":Landroid/app/Fragment;
    if-eqz v8, :cond_1

    instance-of v0, v8, Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    if-eqz v0, :cond_1

    .line 1589
    check-cast v8, Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    .end local v8    # "current":Landroid/app/Fragment;
    iput-object v8, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    .line 1595
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setSearchView(Landroid/widget/SearchView;)V

    .line 1596
    iput-boolean v4, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItemExpanded:Z

    goto :goto_0

    .line 1591
    .restart local v8    # "current":Landroid/app/Fragment;
    :cond_1
    const-class v0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const v5, 0x7f0c09b0

    move-object v0, p0

    move-object v6, v2

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ex/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    iput-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    goto :goto_1
.end method

.method private updateHomeSettingTiles(Lcom/android/settings_ex/dashboard/DashboardTile;)Z
    .locals 6
    .param p1, "tile"    # Lcom/android/settings_ex/dashboard/DashboardTile;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1479
    const-string v4, "home_prefs"

    invoke-virtual {p0, v4, v3}, Lcom/android/settings_ex/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1480
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v4, "do_show"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1511
    :goto_0
    return v2

    .line 1485
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->getHomeActivitiesCount()I

    move-result v4

    iput v4, p0, Lcom/android/settings_ex/SettingsActivity;->mHomeActivitiesCount:I

    .line 1486
    iget v4, p0, Lcom/android/settings_ex/SettingsActivity;->mHomeActivitiesCount:I

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    .line 1491
    sget-boolean v4, Lcom/android/settings_ex/SettingsActivity;->sShowNoHomeNotice:Z

    if-eqz v4, :cond_1

    .line 1492
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/settings_ex/SettingsActivity;->sShowNoHomeNotice:Z

    .line 1493
    invoke-static {p0}, Lcom/android/settings_ex/dashboard/NoHomeDialogFragment;->show(Landroid/app/Activity;)V

    :cond_1
    move v2, v3

    .line 1495
    goto :goto_0

    .line 1500
    :cond_2
    iget-object v3, p1, Lcom/android/settings_ex/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    if-nez v3, :cond_3

    .line 1501
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, p1, Lcom/android/settings_ex/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    .line 1503
    :cond_3
    iget-object v3, p1, Lcom/android/settings_ex/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    const-string v4, "show"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1510
    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "do_show"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1505
    :catch_0
    move-exception v0

    .line 1507
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Settings"

    const-string v4, "Problem looking up home activity!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private updateTilesList(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/dashboard/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1301
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/dashboard/DashboardCategory;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    const-string v14, "show"

    sget-object v15, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v16, "eng"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 1305
    .local v9, "showDev":Z
    const-string v13, "user"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/UserManager;

    .line 1307
    .local v12, "um":Landroid/os/UserManager;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v10

    .line 1308
    .local v10, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v10, :cond_14

    .line 1310
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/dashboard/DashboardCategory;

    .line 1313
    .local v2, "category":Lcom/android/settings_ex/dashboard/DashboardCategory;
    iget-wide v14, v2, Lcom/android/settings_ex/dashboard/DashboardCategory;->id:J

    long-to-int v6, v14

    .line 1314
    .local v6, "id":I
    invoke-virtual {v2}, Lcom/android/settings_ex/dashboard/DashboardCategory;->getTilesCount()I

    move-result v13

    add-int/lit8 v7, v13, -0x1

    .line 1315
    .local v7, "n":I
    :goto_1
    if-ltz v7, :cond_13

    .line 1317
    invoke-virtual {v2, v7}, Lcom/android/settings_ex/dashboard/DashboardCategory;->getTile(I)Lcom/android/settings_ex/dashboard/DashboardTile;

    move-result-object v11

    .line 1318
    .local v11, "tile":Lcom/android/settings_ex/dashboard/DashboardTile;
    const/4 v8, 0x0

    .line 1319
    .local v8, "removeTile":Z
    iget-wide v14, v11, Lcom/android/settings_ex/dashboard/DashboardTile;->id:J

    long-to-int v6, v14

    .line 1320
    const v13, 0x7f1204a1

    if-eq v6, v13, :cond_0

    const v13, 0x7f1204a9

    if-ne v6, v13, :cond_4

    .line 1321
    :cond_0
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/android/settings_ex/Utils;->updateTileToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Lcom/android/settings_ex/dashboard/DashboardTile;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 1322
    const/4 v8, 0x1

    .line 1397
    :cond_1
    :goto_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/SettingsActivity;->SETTINGS_FOR_RESTRICTED:[I

    invoke-static {v13, v6}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v13

    if-nez v13, :cond_2

    .line 1399
    const/4 v8, 0x1

    .line 1402
    :cond_2
    if-eqz v8, :cond_3

    invoke-virtual {v2}, Lcom/android/settings_ex/dashboard/DashboardCategory;->getTilesCount()I

    move-result v13

    if-ge v7, v13, :cond_3

    .line 1403
    invoke-virtual {v2, v7}, Lcom/android/settings_ex/dashboard/DashboardCategory;->removeTile(I)V

    .line 1405
    :cond_3
    add-int/lit8 v7, v7, -0x1

    .line 1406
    goto :goto_1

    .line 1324
    :cond_4
    const v13, 0x7f12049e

    if-ne v6, v13, :cond_5

    .line 1326
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const-string v14, "android.hardware.wifi"

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 1327
    const/4 v8, 0x1

    goto :goto_2

    .line 1329
    :cond_5
    const v13, 0x7f12049f

    if-ne v6, v13, :cond_6

    .line 1331
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const-string v14, "android.hardware.bluetooth"

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 1332
    const/4 v8, 0x1

    goto :goto_2

    .line 1334
    :cond_6
    const v13, 0x7f12000c

    if-ne v6, v13, :cond_7

    .line 1336
    invoke-static {}, Lcom/android/settings_ex/Utils;->isBandwidthControlEnabled()Z

    move-result v13

    if-nez v13, :cond_1

    .line 1337
    const/4 v8, 0x1

    goto :goto_2

    .line 1339
    :cond_7
    const v13, 0x7f12000a

    if-ne v6, v13, :cond_8

    .line 1342
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings_ex/SettingsActivity;->mBatteryPresent:Z

    if-nez v13, :cond_1

    .line 1343
    const/4 v8, 0x1

    goto :goto_2

    .line 1345
    :cond_8
    const v13, 0x7f1204a4

    if-ne v6, v13, :cond_9

    .line 1346
    const/4 v8, 0x1

    .line 1347
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/settings_ex/SettingsActivity;->updateHomeSettingTiles(Lcom/android/settings_ex/dashboard/DashboardTile;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 1348
    const/4 v8, 0x1

    goto :goto_2

    .line 1350
    :cond_9
    const v13, 0x7f12000b

    if-ne v6, v13, :cond_c

    .line 1351
    const-string v13, "user"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/UserManager;

    invoke-virtual {v13}, Landroid/os/UserManager;->getUserCount()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_b

    const/4 v3, 0x1

    .line 1354
    .local v3, "hasMultipleUsers":Z
    :goto_3
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1357
    :cond_a
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 1351
    .end local v3    # "hasMultipleUsers":Z
    :cond_b
    const/4 v3, 0x0

    goto :goto_3

    .line 1359
    :cond_c
    const v13, 0x7f1204a8

    if-ne v6, v13, :cond_d

    .line 1360
    const/4 v8, 0x1

    .line 1361
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const-string v14, "android.hardware.nfc"

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 1362
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 1372
    :cond_d
    const v13, 0x7f120009

    if-ne v6, v13, :cond_e

    .line 1373
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const-string v14, "android.software.print"

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    .line 1375
    .local v4, "hasPrintingSupport":Z
    if-nez v4, :cond_1

    .line 1376
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 1378
    .end local v4    # "hasPrintingSupport":Z
    :cond_e
    const v13, 0x7f120008

    if-ne v6, v13, :cond_10

    .line 1379
    if-eqz v9, :cond_f

    const-string v13, "no_debugging_features"

    invoke-virtual {v12, v13}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1381
    :cond_f
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 1383
    :cond_10
    const v13, 0x7f1204ad

    if-ne v6, v13, :cond_11

    .line 1384
    invoke-static/range {p0 .. p0}, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->isSupportFinger(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 1385
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 1387
    :cond_11
    const v13, 0x7f1204ae

    if-ne v6, v13, :cond_12

    .line 1388
    invoke-static {}, Lcom/android/settings_ex/eyeverify/EyeUtil;->isSupportVerify()Z

    move-result v13

    if-nez v13, :cond_1

    .line 1389
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 1391
    :cond_12
    const v13, 0x7f1204aa

    if-ne v6, v13, :cond_1

    .line 1392
    invoke-static {}, Lcom/android/settings_ex/Utils;->isEdgeFeatureEnable()Z

    move-result v13

    if-nez v13, :cond_1

    .line 1393
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 1308
    .end local v8    # "removeTile":Z
    .end local v11    # "tile":Lcom/android/settings_ex/dashboard/DashboardTile;
    :cond_13
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 1408
    .end local v2    # "category":Lcom/android/settings_ex/dashboard/DashboardCategory;
    .end local v6    # "id":I
    .end local v7    # "n":I
    :cond_14
    invoke-direct/range {p0 .. p1}, Lcom/android/settings_ex/SettingsActivity;->addExternalTiles(Ljava/util/List;)V

    .line 1409
    return-void
.end method


# virtual methods
.method public finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V
    .locals 0
    .param p1, "caller"    # Landroid/app/Fragment;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 1070
    invoke-virtual {p0, p2, p3}, Lcom/android/settings_ex/SettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 1071
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->finish()V

    .line 1072
    return-void
.end method

.method public getDashboardCategories(Z)Ljava/util/List;
    .locals 1
    .param p1, "forceRefresh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/dashboard/DashboardCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 478
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/SettingsActivity;->buildDashboardCategories(Ljava/util/List;)V

    .line 481
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    .line 945
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 946
    .local v4, "superIntent":Landroid/content/Intent;
    invoke-direct {p0, v4}, Lcom/android/settings_ex/SettingsActivity;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 949
    .local v3, "startingFragment":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 950
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 951
    .local v2, "modIntent":Landroid/content/Intent;
    const-string v5, ":settings:show_fragment"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 952
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 953
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 954
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .end local v0    # "args":Landroid/os/Bundle;
    .local v1, "args":Landroid/os/Bundle;
    move-object v0, v1

    .line 958
    .end local v1    # "args":Landroid/os/Bundle;
    .restart local v0    # "args":Landroid/os/Bundle;
    :goto_0
    const-string v5, "intent"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 959
    const-string v5, ":settings:show_fragment_args"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 962
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "modIntent":Landroid/content/Intent;
    :goto_1
    return-object v2

    .line 956
    .restart local v0    # "args":Landroid/os/Bundle;
    .restart local v2    # "modIntent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "args":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0    # "args":Landroid/os/Bundle;
    goto :goto_0

    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "modIntent":Landroid/content/Intent;
    :cond_1
    move-object v2, v4

    .line 962
    goto :goto_1
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 1532
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getResultIntentData()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1615
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mResultIntentData:Landroid/content/Intent;

    return-object v0
.end method

.method public getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    return-object v0
.end method

.method public hasNextButton()Z
    .locals 1

    .prologue
    .line 1528
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 2
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 937
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/settings_ex/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 938
    sget-object v1, Lcom/android/settings_ex/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 940
    :goto_1
    return v1

    .line 937
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 940
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public needToRevertToInitialFragment()V
    .locals 1

    .prologue
    .line 1600
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 1601
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 815
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->finish()V

    .line 816
    return-void
.end method

.method public onBackStackChanged()V
    .locals 0

    .prologue
    .line 811
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->setTitleFromBackStack()I

    .line 812
    return-void
.end method

.method public onClose()Z
    .locals 1

    .prologue
    .line 1562
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 518
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 519
    invoke-static {p0}, Lcom/android/settings_ex/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/Index;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/search/Index;->update()V

    .line 520
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 23
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 615
    invoke-super/range {p0 .. p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 616
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/PhoneWindow;

    const/4 v5, 0x1

    const v6, 0x7f0e0065

    invoke-virtual {v2, v5, v6}, Lcom/android/internal/policy/PhoneWindow;->showStatusBarBackgroundPicture(ZI)V

    .line 618
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getMetaData()V

    .line 620
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    .line 621
    .local v19, "intent":Landroid/content/Intent;
    const-string v2, "settings:ui_options"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 622
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const-string v5, "settings:ui_options"

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/Window;->setUiOptions(I)V

    .line 624
    :cond_0
    const-string v2, "development"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Lcom/android/settings_ex/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 628
    const-string v2, ":settings:show_fragment"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 630
    .local v3, "initialFragmentName":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/settings_ex/SettingsActivity;->isShortCutIntent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static/range {v19 .. v19}, Lcom/android/settings_ex/SettingsActivity;->isLikeShortCutIntent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ":settings:show_fragment_as_shortcut"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_1
    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mIsShortcut:Z

    .line 633
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    .line 634
    .local v18, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v17

    .line 635
    .local v17, "className":Ljava/lang/String;
    const-class v2, Lcom/android/settings_ex/Settings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mIsShowingDashboard:Z

    .line 640
    move-object/from16 v0, p0

    instance-of v2, v0, Lcom/android/settings_ex/SubSettings;

    if-nez v2, :cond_2

    const-string v2, ":settings:show_fragment_as_subsetting"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_2
    const/16 v20, 0x1

    .line 644
    .local v20, "isSubSettings":Z
    :goto_1
    if-eqz v20, :cond_3

    .line 646
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getThemeResId()I

    move-result v22

    .line 647
    .local v22, "themeResId":I
    const v2, 0x7f0d0094

    move/from16 v0, v22

    if-eq v0, v2, :cond_3

    const v2, 0x7f0d0096

    move/from16 v0, v22

    if-eq v0, v2, :cond_3

    .line 649
    const v2, 0x7f0d008f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/SettingsActivity;->setTheme(I)V

    .line 653
    .end local v22    # "themeResId":I
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v2, :cond_4

    .line 654
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->setCustomTitle()V

    .line 655
    const/4 v2, 0x1

    const v5, 0x7f0c013c

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/settings_ex/SettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5, v6}, Lcom/android/settings_ex/SettingsActivity;->showBreadCrumbs(ZLjava/lang/CharSequence;Z)V

    .line 658
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v2, :cond_c

    const v2, 0x7f04017a

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/SettingsActivity;->setContentView(I)V

    .line 661
    const v2, 0x7f1202ab

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mContent:Landroid/view/ViewGroup;

    .line 663
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 665
    if-eqz p1, :cond_d

    .line 668
    const-string v2, ":settings:search_menu_expanded"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 669
    const-string v2, ":settings:search_query"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 671
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings_ex/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    .line 673
    const-string v2, ":settings:categories"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 675
    .local v16, "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/dashboard/DashboardCategory;>;"
    if-eqz v16, :cond_5

    .line 676
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 677
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 678
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->setTitleFromBackStack()I

    .line 681
    :cond_5
    const-string v2, ":settings:show_home_as_up"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 682
    const-string v2, ":settings:home_activities_count"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/SettingsActivity;->mHomeActivitiesCount:I

    .line 709
    .end local v16    # "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/dashboard/DashboardCategory;>;"
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    .line 710
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    if-eqz v2, :cond_6

    .line 711
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/settings_ex/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {v2, v5}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 712
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/settings_ex/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {v2, v5}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 714
    :cond_6
    const v2, 0x7f120376

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/widget/SwitchBar;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 717
    const-string v2, "extra_prefs_show_button_bar"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 719
    const v2, 0x7f1201a3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 720
    .local v14, "buttonBar":Landroid/view/View;
    if-eqz v14, :cond_9

    .line 721
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/view/View;->setVisibility(I)V

    .line 723
    const v2, 0x7f120291

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 724
    .local v13, "backButton":Landroid/widget/Button;
    new-instance v2, Lcom/android/settings_ex/SettingsActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings_ex/SettingsActivity$3;-><init>(Lcom/android/settings_ex/SettingsActivity;)V

    invoke-virtual {v13, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 730
    const v2, 0x7f120292

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    .line 731
    .local v21, "skipButton":Landroid/widget/Button;
    new-instance v2, Lcom/android/settings_ex/SettingsActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings_ex/SettingsActivity$4;-><init>(Lcom/android/settings_ex/SettingsActivity;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 737
    const v2, 0x7f1200f8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mNextButton:Landroid/widget/Button;

    .line 738
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mNextButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/settings_ex/SettingsActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/settings_ex/SettingsActivity$5;-><init>(Lcom/android/settings_ex/SettingsActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 746
    const-string v2, "extra_prefs_set_next_text"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 747
    const-string v2, "extra_prefs_set_next_text"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 748
    .local v15, "buttonText":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 749
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mNextButton:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 755
    .end local v15    # "buttonText":Ljava/lang/String;
    :cond_7
    :goto_4
    const-string v2, "extra_prefs_set_back_text"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 756
    const-string v2, "extra_prefs_set_back_text"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 757
    .restart local v15    # "buttonText":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 758
    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 764
    .end local v15    # "buttonText":Ljava/lang/String;
    :cond_8
    :goto_5
    const-string v2, "extra_prefs_show_skip"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 765
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 770
    .end local v13    # "backButton":Landroid/widget/Button;
    .end local v14    # "buttonBar":Landroid/view/View;
    .end local v21    # "skipButton":Landroid/widget/Button;
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getHomeActivitiesCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/SettingsActivity;->mHomeActivitiesCount:I

    .line 771
    return-void

    .line 630
    .end local v17    # "className":Ljava/lang/String;
    .end local v18    # "cn":Landroid/content/ComponentName;
    .end local v20    # "isSubSettings":Z
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 640
    .restart local v17    # "className":Ljava/lang/String;
    .restart local v18    # "cn":Landroid/content/ComponentName;
    :cond_b
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 658
    .restart local v20    # "isSubSettings":Z
    :cond_c
    const v2, 0x7f04017b

    goto/16 :goto_2

    .line 685
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mIsShowingDashboard:Z

    if-nez v2, :cond_10

    .line 687
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mIsShortcut:Z

    if-eqz v2, :cond_e

    .line 688
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 694
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings_ex/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    .line 696
    const-string v2, ":settings:show_fragment_args"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 697
    .local v4, "initialArguments":Landroid/os/Bundle;
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/settings_ex/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    goto/16 :goto_3

    .line 689
    .end local v4    # "initialArguments":Landroid/os/Bundle;
    :cond_e
    if-eqz v20, :cond_f

    .line 690
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    goto :goto_6

    .line 692
    :cond_f
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    goto :goto_6

    .line 701
    :cond_10
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 703
    const v2, 0x7f0c09af

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I

    .line 704
    const-class v2, Lcom/android/settings_ex/dashboard/DashboardSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    const/4 v12, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v12}, Lcom/android/settings_ex/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    goto/16 :goto_3

    .line 752
    .restart local v13    # "backButton":Landroid/widget/Button;
    .restart local v14    # "buttonBar":Landroid/view/View;
    .restart local v15    # "buttonText":Ljava/lang/String;
    .restart local v21    # "skipButton":Landroid/widget/Button;
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v2, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 761
    :cond_12
    invoke-virtual {v13, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method

.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1575
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1576
    iget-boolean v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItemExpanded:Z

    if-eqz v0, :cond_0

    .line 1577
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->revertToInitialFragment()V

    .line 1580
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1567
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1568
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->switchToSearchResultsFragmentIfNeeded()V

    .line 1570
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1647
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1652
    :goto_0
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 1649
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->finish()V

    goto :goto_0

    .line 1647
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 914
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onPause()V

    .line 915
    iget-boolean v1, p0, Lcom/android/settings_ex/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v1, :cond_0

    .line 916
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 918
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings_ex/SettingsActivity;->isBatteryInfoReceiverRegisted:Z

    if-eqz v1, :cond_1

    .line 920
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 924
    iput-boolean v3, p0, Lcom/android/settings_ex/SettingsActivity;->isBatteryInfoReceiverRegisted:Z

    .line 929
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 931
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 932
    return-void

    .line 921
    :catch_0
    move-exception v0

    .line 922
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v1, "Settings"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 924
    iput-boolean v3, p0, Lcom/android/settings_ex/SettingsActivity;->isBatteryInfoReceiverRegisted:Z

    goto :goto_0

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    iput-boolean v3, p0, Lcom/android/settings_ex/SettingsActivity;->isBatteryInfoReceiverRegisted:Z

    throw v1
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "caller"    # Landroid/preference/PreferenceFragment;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 487
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    .line 488
    .local v3, "titleRes":I
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings_ex/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 489
    const v3, 0x7f0c036f

    .line 498
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 500
    const/4 v0, 0x1

    return v0

    .line 490
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings_ex/OwnerInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 493
    const v3, 0x7f0c0174

    goto :goto_0

    .line 495
    :cond_2
    const v3, 0x7f0c0172

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 505
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 1553
    iput-object p1, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 1554
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    if-nez v0, :cond_0

    .line 1555
    const/4 v0, 0x0

    .line 1557
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->onQueryTextChange(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 1546
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->switchToSearchResultsFragmentIfNeeded()V

    .line 1547
    iput-object p1, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 1548
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 877
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onResume()V

    .line 882
    iget-boolean v1, p0, Lcom/android/settings_ex/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v1, :cond_0

    .line 883
    invoke-static {p0, v4}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 886
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->getHomeActivitiesCount()I

    move-result v0

    .line 887
    .local v0, "newHomeActivityCount":I
    iget v1, p0, Lcom/android/settings_ex/SettingsActivity;->mHomeActivitiesCount:I

    if-eq v0, v1, :cond_1

    .line 888
    iput v0, p0, Lcom/android/settings_ex/SettingsActivity;->mHomeActivitiesCount:I

    .line 889
    invoke-direct {p0, v4}, Lcom/android/settings_ex/SettingsActivity;->invalidateCategories(Z)V

    .line 892
    :cond_1
    new-instance v1, Lcom/android/settings_ex/SettingsActivity$6;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/SettingsActivity$6;-><init>(Lcom/android/settings_ex/SettingsActivity;)V

    iput-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 898
    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 901
    iget-boolean v1, p0, Lcom/android/settings_ex/SettingsActivity;->isBatteryInfoReceiverRegisted:Z

    if-nez v1, :cond_2

    .line 902
    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 903
    iput-boolean v4, p0, Lcom/android/settings_ex/SettingsActivity;->isBatteryInfoReceiverRegisted:Z

    .line 907
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings_ex/SettingsActivity;->mDisplaySearch:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 908
    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/SettingsActivity;->onQueryTextSubmit(Ljava/lang/String;)Z

    .line 910
    :cond_3
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 850
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 852
    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 853
    const-string v2, ":settings:categories"

    iget-object v3, p0, Lcom/android/settings_ex/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 856
    :cond_0
    const-string v2, ":settings:show_home_as_up"

    iget-boolean v3, p0, Lcom/android/settings_ex/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 857
    const-string v2, ":settings:show_search"

    iget-boolean v3, p0, Lcom/android/settings_ex/SettingsActivity;->mDisplaySearch:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 859
    iget-boolean v2, p0, Lcom/android/settings_ex/SettingsActivity;->mDisplaySearch:Z

    if-eqz v2, :cond_1

    .line 865
    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 866
    .local v0, "isExpanded":Z
    :goto_0
    const-string v2, ":settings:search_menu_expanded"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 868
    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 869
    .local v1, "query":Ljava/lang/String;
    :goto_1
    const-string v2, ":settings:search_query"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    .end local v0    # "isExpanded":Z
    .end local v1    # "query":Ljava/lang/String;
    :cond_1
    const-string v2, ":settings:home_activities_count"

    iget v3, p0, Lcom/android/settings_ex/SettingsActivity;->mHomeActivitiesCount:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 873
    return-void

    .line 865
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 868
    .restart local v0    # "isExpanded":Z
    :cond_3
    const-string v1, ""

    goto :goto_1
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 524
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onStart()V

    .line 526
    iget-boolean v0, p0, Lcom/android/settings_ex/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    if-eqz v0, :cond_0

    .line 527
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->revertToInitialFragment()V

    .line 529
    :cond_0
    return-void
.end method

.method public setCustomTitle()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 550
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v1

    .line 552
    .local v1, "mActionBar":Lcn/nubia/commonui/actionbar/app/ActionBar;
    if-eqz v1, :cond_0

    .line 554
    invoke-virtual {v1, v4}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 555
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 556
    invoke-virtual {v1, v4}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 557
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040179

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 558
    .local v2, "titleRoot":Landroid/view/View;
    const v3, 0x7f120373

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/SettingsActivity;->titleView:Landroid/widget/TextView;

    .line 559
    new-instance v0, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;

    invoke-direct {v0, v6, v6}, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;-><init>(II)V

    .line 561
    .local v0, "actionBarLayoutParams":Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;
    invoke-virtual {v1, v2, v0}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setCustomView(Landroid/view/View;Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;)V

    .line 563
    .end local v0    # "actionBarLayoutParams":Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;
    .end local v2    # "titleRoot":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setResultIntentData(Landroid/content/Intent;)V
    .locals 0
    .param p1, "resultIntentData"    # Landroid/content/Intent;

    .prologue
    .line 1619
    iput-object p1, p0, Lcom/android/settings_ex/SettingsActivity;->mResultIntentData:Landroid/content/Intent;

    .line 1620
    return-void
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "targetIntent"    # Landroid/content/Intent;

    .prologue
    .line 1537
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-super {p0, v0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public showBreadCrumbs(ZLjava/lang/CharSequence;Z)V
    .locals 8
    .param p1, "isSelfBar"    # Z
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "isCenter"    # Z

    .prologue
    const/16 v7, 0xe

    const/16 v6, 0x9

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 573
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    if-eqz p1, :cond_4

    .line 578
    iget-object v3, p0, Lcom/android/settings_ex/SettingsActivity;->titleView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 582
    iget-object v3, p0, Lcom/android/settings_ex/SettingsActivity;->titleView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 583
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/android/settings_ex/SettingsActivity;->titleView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 584
    .local v2, "parentView":Landroid/widget/RelativeLayout;
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 586
    if-eqz p3, :cond_3

    .line 587
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 588
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 589
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 590
    .local v0, "mActionBar":Lcn/nubia/commonui/actionbar/app/ActionBar;
    if-eqz v0, :cond_2

    .line 591
    invoke-virtual {v0, v4}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 592
    invoke-virtual {v0, v4}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 604
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/SettingsActivity;->titleView:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    iget-object v3, p0, Lcom/android/settings_ex/SettingsActivity;->titleView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 596
    .end local v0    # "mActionBar":Lcn/nubia/commonui/actionbar/app/ActionBar;
    :cond_3
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 597
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 598
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 599
    .restart local v0    # "mActionBar":Lcn/nubia/commonui/actionbar/app/ActionBar;
    if-eqz v0, :cond_2

    .line 600
    invoke-virtual {v0, v5}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 601
    invoke-virtual {v0, v5}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto :goto_1

    .line 608
    .end local v0    # "mActionBar":Lcn/nubia/commonui/actionbar/app/ActionBar;
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "parentView":Landroid/widget/RelativeLayout;
    :cond_4
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public startPreferenceFragment(Landroid/app/Fragment;Z)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "push"    # Z

    .prologue
    .line 1082
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1083
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    const v1, 0x7f1202ab

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1084
    if-eqz p2, :cond_0

    .line 1085
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1086
    const-string v1, ":settings:prefs"

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1090
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1091
    return-void

    .line 1088
    :cond_0
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .locals 8
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "resultTo"    # Landroid/app/Fragment;
    .param p6, "resultRequestCode"    # I

    .prologue
    .line 1006
    const/4 v6, 0x0

    .line 1007
    .local v6, "title":Ljava/lang/String;
    if-gez p3, :cond_0

    .line 1008
    if-eqz p4, :cond_1

    .line 1009
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1015
    :cond_0
    :goto_0
    iget-boolean v7, p0, Lcom/android/settings_ex/SettingsActivity;->mIsShortcut:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move v5, p3

    invoke-static/range {v0 .. v7}, Lcom/android/settings_ex/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;Z)V

    .line 1017
    return-void

    .line 1012
    :cond_1
    const-string v6, ""

    goto :goto_0
.end method

.method public startPreferencePanelAsUser(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/os/UserHandle;)V
    .locals 7
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 1043
    invoke-virtual {p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1044
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1058
    :goto_0
    return-void

    .line 1046
    :cond_0
    const/4 v4, 0x0

    .line 1047
    .local v4, "title":Ljava/lang/String;
    if-gez p3, :cond_1

    .line 1048
    if-eqz p4, :cond_2

    .line 1049
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1055
    :cond_1
    :goto_1
    iget-boolean v5, p0, Lcom/android/settings_ex/SettingsActivity;->mIsShortcut:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/settings_ex/Utils;->startWithFragmentAsUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;ZLandroid/os/UserHandle;)V

    goto :goto_0

    .line 1052
    :cond_2
    const-string v4, ""

    goto :goto_1
.end method
