.class Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;
.super Landroid/os/Handler;
.source "ProfileStateChangeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/profile/ProfileStateChangeReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field private connectivityManager:Landroid/net/ConnectivityManager;

.field private locationManager:Landroid/location/LocationManager;

.field private mContext:Landroid/content/Context;

.field private meetingProfile:Lztemt/profile/ProfileMeetingImpl;

.field private powersavingProfile:Lztemt/profile/ProfilePowersavingImpl;

.field private profileManager:Lztemt/profile/ProfileManager;

.field private sleepProfile:Lztemt/profile/ProfileSleepImpl;

.field private telephonyManager:Landroid/telephony/TelephonyManager;

.field final synthetic this$0:Lcom/android/settings_ex/profile/ProfileStateChangeReceiver;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/profile/ProfileStateChangeReceiver;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->this$0:Lcom/android/settings_ex/profile/ProfileStateChangeReceiver;

    .line 139
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 140
    iput-object p2, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->mContext:Landroid/content/Context;

    .line 141
    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lztemt/profile/ProfileManagerImpl;->getInstance(Landroid/content/Context;)Lztemt/profile/ProfileManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->profileManager:Lztemt/profile/ProfileManager;

    .line 142
    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->profileManager:Lztemt/profile/ProfileManager;

    sget-object v1, Lztemt/profile/Profile$Scenario;->MEETING:Lztemt/profile/Profile$Scenario;

    invoke-virtual {v0, v1}, Lztemt/profile/ProfileManager;->getProfile(Lztemt/profile/Profile$Scenario;)Lztemt/profile/Profile;

    move-result-object v0

    check-cast v0, Lztemt/profile/ProfileMeetingImpl;

    iput-object v0, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->meetingProfile:Lztemt/profile/ProfileMeetingImpl;

    .line 144
    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->profileManager:Lztemt/profile/ProfileManager;

    sget-object v1, Lztemt/profile/Profile$Scenario;->SLEEP:Lztemt/profile/Profile$Scenario;

    invoke-virtual {v0, v1}, Lztemt/profile/ProfileManager;->getProfile(Lztemt/profile/Profile$Scenario;)Lztemt/profile/Profile;

    move-result-object v0

    check-cast v0, Lztemt/profile/ProfileSleepImpl;

    iput-object v0, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->sleepProfile:Lztemt/profile/ProfileSleepImpl;

    .line 146
    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->profileManager:Lztemt/profile/ProfileManager;

    sget-object v1, Lztemt/profile/Profile$Scenario;->POWERSAVING:Lztemt/profile/Profile$Scenario;

    invoke-virtual {v0, v1}, Lztemt/profile/ProfileManager;->getProfile(Lztemt/profile/Profile$Scenario;)Lztemt/profile/Profile;

    move-result-object v0

    check-cast v0, Lztemt/profile/ProfilePowersavingImpl;

    iput-object v0, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->powersavingProfile:Lztemt/profile/ProfilePowersavingImpl;

    .line 149
    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 151
    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 153
    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->locationManager:Landroid/location/LocationManager;

    .line 155
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 159
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 160
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 253
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 163
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->profileManager:Lztemt/profile/ProfileManager;

    sget-object v1, Lztemt/profile/Profile$Scenario;->SLEEP:Lztemt/profile/Profile$Scenario;

    invoke-virtual {v0, v1}, Lztemt/profile/ProfileManager;->isProfileActivate(Lztemt/profile/Profile$Scenario;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->sleepProfile:Lztemt/profile/ProfileSleepImpl;

    sget-object v1, Lztemt/profile/ProfileSleepSettings$SleepArgsType;->BLUETOOTH:Lztemt/profile/ProfileSleepSettings$SleepArgsType;

    invoke-virtual {v0, v1}, Lztemt/profile/ProfileSleepImpl;->updateProfileState(Lztemt/profile/ProfileSleepSettings$SleepArgsType;)V

    .line 166
    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->sleepProfile:Lztemt/profile/ProfileSleepImpl;

    sget-object v1, Lztemt/profile/ProfileSleepSettings$SleepArgsType;->BLUETOOTH:Lztemt/profile/ProfileSleepSettings$SleepArgsType;

    invoke-virtual {v0, v1}, Lztemt/profile/ProfileSleepImpl;->setModifiedFlags(Lztemt/profile/ProfileSleepSettings$SleepArgsType;)V

    goto :goto_0

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->profileManager:Lztemt/profile/ProfileManager;

    sget-object v1, Lztemt/profile/Profile$Scenario;->POWERSAVING:Lztemt/profile/Profile$Scenario;

    invoke-virtual {v0, v1}, Lztemt/profile/ProfileManager;->isProfileActivate(Lztemt/profile/Profile$Scenario;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->powersavingProfile:Lztemt/profile/ProfilePowersavingImpl;

    invoke-virtual {v0}, Lztemt/profile/ProfilePowersavingImpl;->getShutdownAllConnectionEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->powersavingProfile:Lztemt/profile/ProfilePowersavingImpl;

    sget-object v1, Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;->BLUETOOTH:Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;

    invoke-virtual {v0, v1}, Lztemt/profile/ProfilePowersavingImpl;->updateProfileState(Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;)V

    .line 173
    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->powersavingProfile:Lztemt/profile/ProfilePowersavingImpl;

    sget-object v1, Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;->BLUETOOTH:Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;

    invoke-virtual {v0, v1}, Lztemt/profile/ProfilePowersavingImpl;->setModifiedFlags(Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;)V

    goto :goto_0

    .line 181
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->profileManager:Lztemt/profile/ProfileManager;

    sget-object v1, Lztemt/profile/Profile$Scenario;->SLEEP:Lztemt/profile/Profile$Scenario;

    invoke-virtual {v0, v1}, Lztemt/profile/ProfileManager;->isProfileActivate(Lztemt/profile/Profile$Scenario;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->sleepProfile:Lztemt/profile/ProfileSleepImpl;

    sget-object v1, Lztemt/profile/ProfileSleepSettings$SleepArgsType;->WIFI:Lztemt/profile/ProfileSleepSettings$SleepArgsType;

    invoke-virtual {v0, v1}, Lztemt/profile/ProfileSleepImpl;->updateProfileState(Lztemt/profile/ProfileSleepSettings$SleepArgsType;)V

    .line 184
    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->sleepProfile:Lztemt/profile/ProfileSleepImpl;

    sget-object v1, Lztemt/profile/ProfileSleepSettings$SleepArgsType;->WIFI:Lztemt/profile/ProfileSleepSettings$SleepArgsType;

    invoke-virtual {v0, v1}, Lztemt/profile/ProfileSleepImpl;->setModifiedFlags(Lztemt/profile/ProfileSleepSettings$SleepArgsType;)V

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->profileManager:Lztemt/profile/ProfileManager;

    sget-object v1, Lztemt/profile/Profile$Scenario;->POWERSAVING:Lztemt/profile/Profile$Scenario;

    invoke-virtual {v0, v1}, Lztemt/profile/ProfileManager;->isProfileActivate(Lztemt/profile/Profile$Scenario;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->powersavingProfile:Lztemt/profile/ProfilePowersavingImpl;

    invoke-virtual {v0}, Lztemt/profile/ProfilePowersavingImpl;->getShutdownAllConnectionEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->powersavingProfile:Lztemt/profile/ProfilePowersavingImpl;

    sget-object v1, Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;->WIFI:Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;

    invoke-virtual {v0, v1}, Lztemt/profile/ProfilePowersavingImpl;->updateProfileState(Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;)V

    .line 191
    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->powersavingProfile:Lztemt/profile/ProfilePowersavingImpl;

    sget-object v1, Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;->WIFI:Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;

    invoke-virtual {v0, v1}, Lztemt/profile/ProfilePowersavingImpl;->setModifiedFlags(Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;)V

    goto :goto_0

    .line 199
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->profileManager:Lztemt/profile/ProfileManager;

    sget-object v1, Lztemt/profile/Profile$Scenario;->SLEEP:Lztemt/profile/Profile$Scenario;

    invoke-virtual {v0, v1}, Lztemt/profile/ProfileManager;->isProfileActivate(Lztemt/profile/Profile$Scenario;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 200
    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->sleepProfile:Lztemt/profile/ProfileSleepImpl;

    sget-object v1, Lztemt/profile/ProfileSleepSettings$SleepArgsType;->WIFIAP:Lztemt/profile/ProfileSleepSettings$SleepArgsType;

    invoke-virtual {v0, v1}, Lztemt/profile/ProfileSleepImpl;->updateProfileState(Lztemt/profile/ProfileSleepSettings$SleepArgsType;)V

    .line 202
    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->sleepProfile:Lztemt/profile/ProfileSleepImpl;

    sget-object v1, Lztemt/profile/ProfileSleepSettings$SleepArgsType;->WIFIAP:Lztemt/profile/ProfileSleepSettings$SleepArgsType;

    invoke-virtual {v0, v1}, Lztemt/profile/ProfileSleepImpl;->setModifiedFlags(Lztemt/profile/ProfileSleepSettings$SleepArgsType;)V

    goto/16 :goto_0

    .line 204
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->profileManager:Lztemt/profile/ProfileManager;

    sget-object v1, Lztemt/profile/Profile$Scenario;->POWERSAVING:Lztemt/profile/Profile$Scenario;

    invoke-virtual {v0, v1}, Lztemt/profile/ProfileManager;->isProfileActivate(Lztemt/profile/Profile$Scenario;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->powersavingProfile:Lztemt/profile/ProfilePowersavingImpl;

    invoke-virtual {v0}, Lztemt/profile/ProfilePowersavingImpl;->getShutdownAllConnectionEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->powersavingProfile:Lztemt/profile/ProfilePowersavingImpl;

    sget-object v1, Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;->WIFIAP:Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;

    invoke-virtual {v0, v1}, Lztemt/profile/ProfilePowersavingImpl;->updateProfileState(Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;)V

    .line 209
    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->powersavingProfile:Lztemt/profile/ProfilePowersavingImpl;

    sget-object v1, Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;->WIFIAP:Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;

    invoke-virtual {v0, v1}, Lztemt/profile/ProfilePowersavingImpl;->setModifiedFlags(Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;)V

    goto/16 :goto_0

    .line 215
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->profileManager:Lztemt/profile/ProfileManager;

    sget-object v1, Lztemt/profile/Profile$Scenario;->POWERSAVING:Lztemt/profile/Profile$Scenario;

    invoke-virtual {v0, v1}, Lztemt/profile/ProfileManager;->isProfileActivate(Lztemt/profile/Profile$Scenario;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->powersavingProfile:Lztemt/profile/ProfilePowersavingImpl;

    invoke-virtual {v0}, Lztemt/profile/ProfilePowersavingImpl;->getShutdownAllConnectionEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->powersavingProfile:Lztemt/profile/ProfilePowersavingImpl;

    sget-object v1, Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;->DATACONNECTION:Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;

    invoke-virtual {v0, v1}, Lztemt/profile/ProfilePowersavingImpl;->updateProfileState(Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;)V

    .line 223
    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->powersavingProfile:Lztemt/profile/ProfilePowersavingImpl;

    sget-object v1, Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;->DATACONNECTION:Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;

    invoke-virtual {v0, v1}, Lztemt/profile/ProfilePowersavingImpl;->setModifiedFlags(Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;)V

    goto/16 :goto_0

    .line 230
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->profileManager:Lztemt/profile/ProfileManager;

    sget-object v1, Lztemt/profile/Profile$Scenario;->SLEEP:Lztemt/profile/Profile$Scenario;

    invoke-virtual {v0, v1}, Lztemt/profile/ProfileManager;->isProfileActivate(Lztemt/profile/Profile$Scenario;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 233
    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->sleepProfile:Lztemt/profile/ProfileSleepImpl;

    sget-object v1, Lztemt/profile/ProfileSleepSettings$SleepArgsType;->GPS:Lztemt/profile/ProfileSleepSettings$SleepArgsType;

    invoke-virtual {v0, v1}, Lztemt/profile/ProfileSleepImpl;->updateProfileState(Lztemt/profile/ProfileSleepSettings$SleepArgsType;)V

    .line 235
    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->sleepProfile:Lztemt/profile/ProfileSleepImpl;

    sget-object v1, Lztemt/profile/ProfileSleepSettings$SleepArgsType;->GPS:Lztemt/profile/ProfileSleepSettings$SleepArgsType;

    invoke-virtual {v0, v1}, Lztemt/profile/ProfileSleepImpl;->setModifiedFlags(Lztemt/profile/ProfileSleepSettings$SleepArgsType;)V

    goto/16 :goto_0

    .line 238
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->profileManager:Lztemt/profile/ProfileManager;

    sget-object v1, Lztemt/profile/Profile$Scenario;->POWERSAVING:Lztemt/profile/Profile$Scenario;

    invoke-virtual {v0, v1}, Lztemt/profile/ProfileManager;->isProfileActivate(Lztemt/profile/Profile$Scenario;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->powersavingProfile:Lztemt/profile/ProfilePowersavingImpl;

    invoke-virtual {v0}, Lztemt/profile/ProfilePowersavingImpl;->getShutdownAllConnectionEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->powersavingProfile:Lztemt/profile/ProfilePowersavingImpl;

    sget-object v1, Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;->GPS:Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;

    invoke-virtual {v0, v1}, Lztemt/profile/ProfilePowersavingImpl;->updateProfileState(Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;)V

    .line 244
    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfileStateChangeReceiver$H;->powersavingProfile:Lztemt/profile/ProfilePowersavingImpl;

    sget-object v1, Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;->GPS:Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;

    invoke-virtual {v0, v1}, Lztemt/profile/ProfilePowersavingImpl;->setModifiedFlags(Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;)V

    goto/16 :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
