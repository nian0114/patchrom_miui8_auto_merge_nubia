.class Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$4;
.super Ljava/lang/Object;
.source "TurboManagementActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->dealTwoEnvBefStartService()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;


# direct methods
.method constructor <init>(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$4;->this$0:Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const v2, 0x4293e666    # 73.95f

    const/4 v1, 0x1

    .line 206
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$4;->this$0:Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    # getter for: Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mAccelerationSpeedSwitch:Landroid/preference/nubia/CheckBoxPreference;
    invoke-static {v0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->access$100(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)Landroid/preference/nubia/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 208
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$4;->this$0:Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    # getter for: Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->access$500(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nubia/settings/turboshow/TurboManagementUtils;->autoOpenConnection(Landroid/content/Context;)V

    .line 210
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$4;->this$0:Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    # invokes: Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->updateAccelerationSpeedSwitchEnable(I)V
    invoke-static {v0, v1}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->access$400(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;I)V

    .line 211
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$4;->this$0:Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    # getter for: Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mSustainedAcceleration:Landroid/preference/nubia/CheckBoxPreference;
    invoke-static {v0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->access$600(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)Landroid/preference/nubia/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 212
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$4;->this$0:Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    # getter for: Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mWifiWeakAcceleration:Landroid/preference/nubia/CheckBoxPreference;
    invoke-static {v0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->access$700(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)Landroid/preference/nubia/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 213
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$4;->this$0:Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    # getter for: Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mShowAccelerationNotification:Landroid/preference/nubia/CheckBoxPreference;
    invoke-static {v0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->access$800(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)Landroid/preference/nubia/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 214
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$4;->this$0:Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    # getter for: Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mMobileDataUsageTips:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->access$900(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$4;->this$0:Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    # getter for: Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mAverageSpeed:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->access$1000(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 216
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$4;->this$0:Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    # getter for: Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mMobileDataUsage:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->access$1100(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 217
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$4;->this$0:Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    # getter for: Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mMobileDataUsageTips:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->access$900(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 218
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$4;->this$0:Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    # getter for: Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mMobileDataUsage:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->access$1100(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$4;->this$0:Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    # invokes: Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->getDataUsage()Ljava/lang/String;
    invoke-static {v1}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->access$1200(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$4;->this$0:Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    # getter for: Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->wifiLetView:Lcom/nubia/settings/turboshow/WifiLetView;
    invoke-static {v0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->access$1300(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)Lcom/nubia/settings/turboshow/WifiLetView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nubia/settings/turboshow/WifiLetView;->startOnAnim()V

    .line 220
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$4;->this$0:Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    iget-object v1, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$4;->this$0:Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    # invokes: Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->isSustainedAccelerationEnable()Z
    invoke-static {v1}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->access$1400(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)Z

    move-result v1

    iget-object v2, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$4;->this$0:Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    # invokes: Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->isWifiWeakAccelerationEnable()Z
    invoke-static {v2}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->access$1500(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)Z

    move-result v2

    # invokes: Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->startNbroutesevice(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->access$1600(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;ZZ)V

    .line 223
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$4;->this$0:Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    # getter for: Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->access$1800(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$4;->this$0:Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    # getter for: Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mStartOnAnimDelay:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->access$1700(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 224
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$4;->this$0:Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    const-string v1, "enterTurboActivity"

    # invokes: Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->sendBroadCastToService(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->access$1900(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$4;->this$0:Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    # getter for: Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->access$500(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "open_nubia_route_service"

    invoke-static {v0, v1}, Lcom/nubia/settings/turboshow/TurboManagementUtils;->recordUmengData(Landroid/content/Context;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$4;->this$0:Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    # getter for: Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mIMEIMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->access$2000(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$4;->this$0:Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    # getter for: Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->access$500(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nubia/settings/turboshow/TurboManagementUtils;->getIMEIs(Ljava/util/HashMap;Landroid/content/Context;)V

    .line 228
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$4;->this$0:Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    # getter for: Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->access$500(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$4;->this$0:Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    # getter for: Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->mIMEIMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->access$2000(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$4;->this$0:Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    # invokes: Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->getNBRouteSpeedUpTime()I
    invoke-static {v2}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->access$2100(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$4;->this$0:Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    # invokes: Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->getNBTouteConumeThrput()I
    invoke-static {v3}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->access$2200(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)I

    move-result v3

    iget-object v4, p0, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment$4;->this$0:Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;

    # invokes: Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->getNBRouteAvgSpeedUpTate()I
    invoke-static {v4}, Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;->access$2300(Lcom/nubia/settings/turboshow/TurboManagementActivity$PrefsFragment;)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nubia/settings/turboshow/TurboManagementUtils;->recordUmengData(Landroid/content/Context;Ljava/util/HashMap;III)V

    .line 232
    return-void
.end method
